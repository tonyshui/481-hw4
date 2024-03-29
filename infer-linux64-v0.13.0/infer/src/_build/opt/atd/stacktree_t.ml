(* Auto-generated from "stacktree.atd" *)


type line_range_t = { start_line: int; end_line: int }

type location_t = {
  location_type: string;
  file: string;
  line: int option;
  blame_range: line_range_t list
}

type stacktree = {
  method_name: string;
  location: location_t option;
  callees: stacktree list
}

type crashcontext_t = { stack: stacktree list }
