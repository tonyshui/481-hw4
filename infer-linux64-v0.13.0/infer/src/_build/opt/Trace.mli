# 1 "checkers/Trace.mli"
(*
 * Copyright (c) 2016 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open! IStd
module F = Format
module L = Logging

module type Spec = sig
  module Source : Source.S

  module Sink : Sink.S

  val should_report : Source.t -> Sink.t -> bool
  (** should a flow originating at source and entering sink be reported? *)
end

module type S = sig
  include Spec

  type t

  type astate = t

  include AbstractDomain.WithBottom with type astate := astate

  module Sources : sig
    (** Set of sources returned by callees of the current function *)
    module Known : module type of AbstractDomain.FiniteSet (Source)

    module FootprintConfig : AccessTree.Config

    (** Set of access paths representing the sources that may flow in from the caller *)
    module Footprint : module type of AccessTree.PathSet (FootprintConfig)

    type astate = {known: Known.astate; footprint: Footprint.astate}

    type t = astate

    val empty : t

    val is_empty : t -> bool

    val of_source : Source.t -> t

    val of_footprint : AccessPath.Abs.t -> t

    val add : Source.t -> t -> t

    val get_footprint_indexes : t -> IntSet.t
  end

  module Sinks = Sink.Set
  module Passthroughs = Passthrough.Set

  type path_source =
    | Known of Source.t  (** source originating from a called procedure *)
    | Footprint of AccessPath.Abs.t
        (** source read from an access path rooted in a parameter or global *)

  type path_sink = Sink.t

  (** path from a source to a sink with passthroughs at each step in the call stack. the first set
      of passthroughs are the ones in the "reporting" procedure that calls the first function in
      both the source and sink stack *)
  type path =
    Passthroughs.t * (path_source * Passthroughs.t) list * (path_sink * Passthroughs.t) list

  val empty : t
  (** the empty trace *)

  val sources : t -> Sources.t
  (** get the sources of the trace. *)

  val sinks : t -> Sinks.t
  (** get the sinks of the trace *)

  val passthroughs : t -> Passthroughs.t
  (** get the passthroughs of the trace *)

  val get_reports : ?cur_site:CallSite.t -> t -> (path_source * path_sink * Passthroughs.t) list
  (** get the reportable source-sink flows in this trace. specifying [cur_site] restricts the
      reported paths to ones introduced by the call at [cur_site]  *)

  val get_reportable_paths :
    ?cur_site:CallSite.t -> t -> trace_of_pname:(Typ.Procname.t -> t) -> path list
  (** get a path for each of the reportable source -> sink flows in this trace. specifying
      [cur_site] restricts the reported paths to ones introduced by the call at [cur_site] *)

  val to_loc_trace :
    ?desc_of_source:(path_source -> string) -> ?source_should_nest:(path_source -> bool)
    -> ?desc_of_sink:(path_sink -> string) -> ?sink_should_nest:(path_sink -> bool) -> path
    -> Errlog.loc_trace
  (** create a loc_trace from a path; [source_should_nest s] should be true when we are going one
      deeper into a call-chain, ie when lt_level should be bumper in the next loc_trace_elem, and
      similarly for [sink_should_nest] *)

  val of_source : Source.t -> t
  (** create a trace from a source *)

  val of_footprint : AccessPath.Abs.t -> t
  (** create a trace from a footprint access path *)

  val add_source : Source.t -> t -> t
  (** add a source to the current trace *)

  val add_sink : Sink.t -> t -> t
  (** add a sink to the current trace. *)

  val update_sources : t -> Sources.t -> t

  val update_sinks : t -> Sinks.t -> t
  (** replace sinks with new ones *)

  val get_footprint_indexes : t -> IntSet.t
  (** get the footprint indexes for all of the sources in the trace *)

  val append : t -> t -> CallSite.t -> t
  (** append the trace for given call site to the current caller trace *)

  val is_empty : t -> bool
  (** return true if this trace has no source or sink data *)

  val pp : F.formatter -> t -> unit

  val pp_path : Typ.Procname.t -> F.formatter -> path -> unit
  (** pretty-print a path in the context of the given procname *)

  val pp_path_source : F.formatter -> path_source -> unit
end

module Make (Spec : Spec) : S with module Source = Spec.Source and module Sink = Spec.Sink
