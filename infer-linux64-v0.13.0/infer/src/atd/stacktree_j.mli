(* Auto-generated from "stacktree.atd" *)


type line_range_t = Stacktree_t.line_range_t = {
  start_line: int;
  end_line: int
}

type location_t = Stacktree_t.location_t = {
  location_type: string;
  file: string;
  line: int option;
  blame_range: line_range_t list
}

type stacktree = Stacktree_t.stacktree = {
  method_name: string;
  location: location_t option;
  callees: stacktree list
}

type crashcontext_t = Stacktree_t.crashcontext_t = { stack: stacktree list }

val write_line_range_t :
  Bi_outbuf.t -> line_range_t -> unit
  (** Output a JSON value of type {!line_range_t}. *)

val string_of_line_range_t :
  ?len:int -> line_range_t -> string
  (** Serialize a value of type {!line_range_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_line_range_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> line_range_t
  (** Input JSON data of type {!line_range_t}. *)

val line_range_t_of_string :
  string -> line_range_t
  (** Deserialize JSON data of type {!line_range_t}. *)

val write_location_t :
  Bi_outbuf.t -> location_t -> unit
  (** Output a JSON value of type {!location_t}. *)

val string_of_location_t :
  ?len:int -> location_t -> string
  (** Serialize a value of type {!location_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_location_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> location_t
  (** Input JSON data of type {!location_t}. *)

val location_t_of_string :
  string -> location_t
  (** Deserialize JSON data of type {!location_t}. *)

val write_stacktree :
  Bi_outbuf.t -> stacktree -> unit
  (** Output a JSON value of type {!stacktree}. *)

val string_of_stacktree :
  ?len:int -> stacktree -> string
  (** Serialize a value of type {!stacktree}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_stacktree :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> stacktree
  (** Input JSON data of type {!stacktree}. *)

val stacktree_of_string :
  string -> stacktree
  (** Deserialize JSON data of type {!stacktree}. *)

val write_crashcontext_t :
  Bi_outbuf.t -> crashcontext_t -> unit
  (** Output a JSON value of type {!crashcontext_t}. *)

val string_of_crashcontext_t :
  ?len:int -> crashcontext_t -> string
  (** Serialize a value of type {!crashcontext_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_crashcontext_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> crashcontext_t
  (** Input JSON data of type {!crashcontext_t}. *)

val crashcontext_t_of_string :
  string -> crashcontext_t
  (** Deserialize JSON data of type {!crashcontext_t}. *)

