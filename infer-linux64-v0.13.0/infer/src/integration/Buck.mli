(*
 * Copyright (c) 2016 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open! IStd

val is_target_string : string -> bool
(** is this a Buck target string, eg //foo/bar:baz or boo//foo/bar:baz *)

val no_targets_found_error_and_exit : string list -> unit
(** prints an error that no Buck targets were identified in the given list, and exits *)

val add_flavors_to_buck_command : string list -> string list
(** Add infer flavors to the targets in the given buck command, depending on the infer analyzer. For
    instance, in capture mode, the buck command:
    buck build //foo/bar:baz#some,flavor
    becomes:
    buck build //foo/bar:baz#infer-capture-all,some,flavor
*)

val get_dependency_targets_and_add_flavors : string list -> depth:int option -> string list
(** Runs buck query to get the dependency targets of the given targets
[get_dependency_targets args] = targets with dependent targets, other args *)

val inline_argument_files : string list -> string list
(** Given a list of arguments to buck, return the extended list of arguments where
    the args in a file have been extracted *)

val store_targets_in_file : string list -> string
(** Given a list of buck targets, stores them in a file and returns the file name *)
