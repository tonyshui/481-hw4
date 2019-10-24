(* Auto-generated from "jsonbug.atd" *)


type tag_value_record = Jsonbug_t.tag_value_record = {
  tag: string;
  value: string
}

type loc = Jsonbug_t.loc = { file: string; lnum: int; cnum: int; enum: int }

type json_trace_item = Jsonbug_t.json_trace_item = {
  level: int;
  filename: string;
  line_number: int;
  column_number: int;
  description: string;
  node_tags: tag_value_record list
}

type jsonbug = Jsonbug_t.jsonbug = {
  bug_class: string;
  kind: string;
  bug_type: string;
  doc_url: string option;
  qualifier: string;
  severity: string;
  visibility: string;
  line: int;
  column: int;
  procedure: string;
  procedure_id: string;
  procedure_start_line: int;
  file: string;
  bug_trace: json_trace_item list;
  key: int;
  qualifier_tags: tag_value_record list;
  hash: int;
  dotty: string option;
  infer_source_loc: loc option;
  bug_type_hum: string;
  linters_def_file: string option;
  traceview_id: int option
}

type report = Jsonbug_t.report

type json_trace = Jsonbug_t.json_trace = { trace: json_trace_item list }

val write_tag_value_record :
  Bi_outbuf.t -> tag_value_record -> unit
  (** Output a JSON value of type {!tag_value_record}. *)

val string_of_tag_value_record :
  ?len:int -> tag_value_record -> string
  (** Serialize a value of type {!tag_value_record}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_tag_value_record :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> tag_value_record
  (** Input JSON data of type {!tag_value_record}. *)

val tag_value_record_of_string :
  string -> tag_value_record
  (** Deserialize JSON data of type {!tag_value_record}. *)

val write_loc :
  Bi_outbuf.t -> loc -> unit
  (** Output a JSON value of type {!loc}. *)

val string_of_loc :
  ?len:int -> loc -> string
  (** Serialize a value of type {!loc}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_loc :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> loc
  (** Input JSON data of type {!loc}. *)

val loc_of_string :
  string -> loc
  (** Deserialize JSON data of type {!loc}. *)

val write_json_trace_item :
  Bi_outbuf.t -> json_trace_item -> unit
  (** Output a JSON value of type {!json_trace_item}. *)

val string_of_json_trace_item :
  ?len:int -> json_trace_item -> string
  (** Serialize a value of type {!json_trace_item}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_json_trace_item :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> json_trace_item
  (** Input JSON data of type {!json_trace_item}. *)

val json_trace_item_of_string :
  string -> json_trace_item
  (** Deserialize JSON data of type {!json_trace_item}. *)

val write_jsonbug :
  Bi_outbuf.t -> jsonbug -> unit
  (** Output a JSON value of type {!jsonbug}. *)

val string_of_jsonbug :
  ?len:int -> jsonbug -> string
  (** Serialize a value of type {!jsonbug}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_jsonbug :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> jsonbug
  (** Input JSON data of type {!jsonbug}. *)

val jsonbug_of_string :
  string -> jsonbug
  (** Deserialize JSON data of type {!jsonbug}. *)

val write_report :
  Bi_outbuf.t -> report -> unit
  (** Output a JSON value of type {!report}. *)

val string_of_report :
  ?len:int -> report -> string
  (** Serialize a value of type {!report}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_report :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> report
  (** Input JSON data of type {!report}. *)

val report_of_string :
  string -> report
  (** Deserialize JSON data of type {!report}. *)

val write_json_trace :
  Bi_outbuf.t -> json_trace -> unit
  (** Output a JSON value of type {!json_trace}. *)

val string_of_json_trace :
  ?len:int -> json_trace -> string
  (** Serialize a value of type {!json_trace}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_json_trace :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> json_trace
  (** Input JSON data of type {!json_trace}. *)

val json_trace_of_string :
  string -> json_trace
  (** Deserialize JSON data of type {!json_trace}. *)

