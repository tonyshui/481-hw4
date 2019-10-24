(* Auto-generated from "jsonbug.atd" *)


type tag_value_record = { tag: string; value: string }

type loc = { file: string; lnum: int; cnum: int; enum: int }

type json_trace_item = {
  level: int;
  filename: string;
  line_number: int;
  column_number: int;
  description: string;
  node_tags: tag_value_record list
}

type jsonbug = {
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

type report = jsonbug list

type json_trace = { trace: json_trace_item list }
