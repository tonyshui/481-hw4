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

let write_tag_value_record : _ -> tag_value_record -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"tag\":";
    (
      Yojson.Safe.write_string
    )
      ob x.tag;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"value\":";
    (
      Yojson.Safe.write_string
    )
      ob x.value;
    Bi_outbuf.add_char ob '}';
)
let string_of_tag_value_record ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_tag_value_record ob x;
  Bi_outbuf.contents ob
let read_tag_value_record = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_tag = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_value = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'g' then (
                  0
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'v' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_tag := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_value := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'g' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'v' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_tag := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_value := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x3 then Ag_oj_run.missing_fields p [| !bits0 |] [| "tag"; "value" |];
        (
          {
            tag = !field_tag;
            value = !field_value;
          }
         : tag_value_record)
      )
)
let tag_value_record_of_string s =
  read_tag_value_record (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_loc : _ -> loc -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"file\":";
    (
      Yojson.Safe.write_string
    )
      ob x.file;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"lnum\":";
    (
      Yojson.Safe.write_int
    )
      ob x.lnum;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"cnum\":";
    (
      Yojson.Safe.write_int
    )
      ob x.cnum;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"enum\":";
    (
      Yojson.Safe.write_int
    )
      ob x.enum;
    Bi_outbuf.add_char ob '}';
)
let string_of_loc ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_loc ob x;
  Bi_outbuf.contents ob
let read_loc = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_file = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_lnum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_cnum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_enum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 4 then (
            match String.unsafe_get s pos with
              | 'c' -> (
                  if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 'e' -> (
                  if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 'f' -> (
                  if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 'l' -> (
                  if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_file := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_lnum := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_cnum := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_enum := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            if len = 4 then (
              match String.unsafe_get s pos with
                | 'c' -> (
                    if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                      2
                    )
                    else (
                      -1
                    )
                  )
                | 'e' -> (
                    if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                      3
                    )
                    else (
                      -1
                    )
                  )
                | 'f' -> (
                    if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                      0
                    )
                    else (
                      -1
                    )
                  )
                | 'l' -> (
                    if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'u' && String.unsafe_get s (pos+3) = 'm' then (
                      1
                    )
                    else (
                      -1
                    )
                  )
                | _ -> (
                    -1
                  )
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_file := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_lnum := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_cnum := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_enum := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0xf then Ag_oj_run.missing_fields p [| !bits0 |] [| "file"; "lnum"; "cnum"; "enum" |];
        (
          {
            file = !field_file;
            lnum = !field_lnum;
            cnum = !field_cnum;
            enum = !field_enum;
          }
         : loc)
      )
)
let loc_of_string s =
  read_loc (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__1 = (
  Ag_oj_run.write_list (
    write_tag_value_record
  )
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  Ag_oj_run.read_list (
    read_tag_value_record
  )
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_json_trace_item : _ -> json_trace_item -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"level\":";
    (
      Yojson.Safe.write_int
    )
      ob x.level;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"filename\":";
    (
      Yojson.Safe.write_string
    )
      ob x.filename;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"line_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.line_number;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"column_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.column_number;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"description\":";
    (
      Yojson.Safe.write_string
    )
      ob x.description;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"node_tags\":";
    (
      write__1
    )
      ob x.node_tags;
    Bi_outbuf.add_char ob '}';
)
let string_of_json_trace_item ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_json_trace_item ob x;
  Bi_outbuf.contents ob
let read_json_trace_item = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_level = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_filename = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_line_number = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_column_number = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_description = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_node_tags = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 5 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'l' then (
                  0
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = 's' then (
                  5
                )
                else (
                  -1
                )
              )
            | 11 -> (
                match String.unsafe_get s pos with
                  | 'd' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | 'l' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
                  3
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_level := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_filename := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_line_number := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            field_column_number := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 4 ->
            field_description := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 5 ->
            field_node_tags := (
              (
                read__1
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 5 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'l' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = 's' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  match String.unsafe_get s pos with
                    | 'd' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | 'l' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_level := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_filename := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_line_number := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              field_column_number := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 4 ->
              field_description := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 5 ->
              field_node_tags := (
                (
                  read__1
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x3f then Ag_oj_run.missing_fields p [| !bits0 |] [| "level"; "filename"; "line_number"; "column_number"; "description"; "node_tags" |];
        (
          {
            level = !field_level;
            filename = !field_filename;
            line_number = !field_line_number;
            column_number = !field_column_number;
            description = !field_description;
            node_tags = !field_node_tags;
          }
         : json_trace_item)
      )
)
let json_trace_item_of_string s =
  read_json_trace_item (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__5 = (
  Ag_oj_run.write_option (
    Yojson.Safe.write_int
  )
)
let string_of__5 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__5 ob x;
  Bi_outbuf.contents ob
let read__5 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 then (
                  match String.unsafe_get s pos with
                    | 'N' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                          0
                        )
                        else (
                          raise (Exit)
                        )
                      )
                    | 'S' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                          1
                        )
                        else (
                          raise (Exit)
                        )
                      )
                    | _ -> (
                        raise (Exit)
                      )
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | 0 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | 1 ->
              Ag_oj_run.read_until_field_value p lb;
              let x = (
                  Ag_oj_run.read_int
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | _ -> (
                assert false
              )
        )
      | `Double_quote -> (
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 && String.unsafe_get s pos = 'N' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_string p f lb in
          match i with
            | 0 ->
              (None : _ option)
            | _ -> (
                assert false
              )
        )
      | `Square_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 && String.unsafe_get s pos = 'S' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | 0 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Ag_oj_run.read_int
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | _ -> (
                assert false
              )
        )
)
let _5_of_string s =
  read__5 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__4 = (
  Ag_oj_run.write_option (
    write_loc
  )
)
let string_of__4 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__4 ob x;
  Bi_outbuf.contents ob
let read__4 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 then (
                  match String.unsafe_get s pos with
                    | 'N' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                          0
                        )
                        else (
                          raise (Exit)
                        )
                      )
                    | 'S' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                          1
                        )
                        else (
                          raise (Exit)
                        )
                      )
                    | _ -> (
                        raise (Exit)
                      )
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | 0 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | 1 ->
              Ag_oj_run.read_until_field_value p lb;
              let x = (
                  read_loc
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | _ -> (
                assert false
              )
        )
      | `Double_quote -> (
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 && String.unsafe_get s pos = 'N' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_string p f lb in
          match i with
            | 0 ->
              (None : _ option)
            | _ -> (
                assert false
              )
        )
      | `Square_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 && String.unsafe_get s pos = 'S' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | 0 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_loc
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | _ -> (
                assert false
              )
        )
)
let _4_of_string s =
  read__4 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__3 = (
  Ag_oj_run.write_list (
    write_json_trace_item
  )
)
let string_of__3 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__3 ob x;
  Bi_outbuf.contents ob
let read__3 = (
  Ag_oj_run.read_list (
    read_json_trace_item
  )
)
let _3_of_string s =
  read__3 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__2 = (
  Ag_oj_run.write_option (
    Yojson.Safe.write_string
  )
)
let string_of__2 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__2 ob x;
  Bi_outbuf.contents ob
let read__2 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 then (
                  match String.unsafe_get s pos with
                    | 'N' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                          0
                        )
                        else (
                          raise (Exit)
                        )
                      )
                    | 'S' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                          1
                        )
                        else (
                          raise (Exit)
                        )
                      )
                    | _ -> (
                        raise (Exit)
                      )
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | 0 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | 1 ->
              Ag_oj_run.read_until_field_value p lb;
              let x = (
                  Ag_oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | _ -> (
                assert false
              )
        )
      | `Double_quote -> (
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 && String.unsafe_get s pos = 'N' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_string p f lb in
          match i with
            | 0 ->
              (None : _ option)
            | _ -> (
                assert false
              )
        )
      | `Square_bracket -> (
          Yojson.Safe.read_space p lb;
          let f =
            fun s pos len ->
              if pos < 0 || len < 0 || pos + len > String.length s then
                invalid_arg "out-of-bounds substring position or length";
              try
                if len = 4 && String.unsafe_get s pos = 'S' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  raise (Exit)
                )
              with Exit -> (
                  Ag_oj_run.invalid_variant_tag p (String.sub s pos len)
                )
          in
          let i = Yojson.Safe.map_ident p f lb in
          match i with
            | 0 ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Ag_oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | _ -> (
                assert false
              )
        )
)
let _2_of_string s =
  read__2 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_jsonbug : _ -> jsonbug -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bug_class\":";
    (
      Yojson.Safe.write_string
    )
      ob x.bug_class;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"kind\":";
    (
      Yojson.Safe.write_string
    )
      ob x.kind;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bug_type\":";
    (
      Yojson.Safe.write_string
    )
      ob x.bug_type;
    (match x.doc_url with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"doc_url\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"qualifier\":";
    (
      Yojson.Safe.write_string
    )
      ob x.qualifier;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"severity\":";
    (
      Yojson.Safe.write_string
    )
      ob x.severity;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"visibility\":";
    (
      Yojson.Safe.write_string
    )
      ob x.visibility;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"line\":";
    (
      Yojson.Safe.write_int
    )
      ob x.line;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"column\":";
    (
      Yojson.Safe.write_int
    )
      ob x.column;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"procedure\":";
    (
      Yojson.Safe.write_string
    )
      ob x.procedure;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"procedure_id\":";
    (
      Yojson.Safe.write_string
    )
      ob x.procedure_id;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"procedure_start_line\":";
    (
      Yojson.Safe.write_int
    )
      ob x.procedure_start_line;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"file\":";
    (
      Yojson.Safe.write_string
    )
      ob x.file;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bug_trace\":";
    (
      write__3
    )
      ob x.bug_trace;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"key\":";
    (
      Yojson.Safe.write_int
    )
      ob x.key;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"qualifier_tags\":";
    (
      write__1
    )
      ob x.qualifier_tags;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"hash\":";
    (
      Yojson.Safe.write_int
    )
      ob x.hash;
    (match x.dotty with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"dotty\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    (match x.infer_source_loc with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"infer_source_loc\":";
      (
        write_loc
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"bug_type_hum\":";
    (
      Yojson.Safe.write_string
    )
      ob x.bug_type_hum;
    (match x.linters_def_file with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"linters_def_file\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    (match x.traceview_id with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"traceview_id\":";
      (
        Yojson.Safe.write_int
      )
        ob x;
    );
    Bi_outbuf.add_char ob '}';
)
let string_of_jsonbug ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_jsonbug ob x;
  Bi_outbuf.contents ob
let read_jsonbug = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_bug_class = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_kind = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_bug_type = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_doc_url = ref (None) in
    let field_qualifier = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_severity = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_visibility = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_line = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_column = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_procedure = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_procedure_id = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_procedure_start_line = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_file = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_bug_trace = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_key = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_qualifier_tags = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_hash = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_dotty = ref (None) in
    let field_infer_source_loc = ref (None) in
    let field_bug_type_hum = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_linters_def_file = ref (None) in
    let field_traceview_id = ref (None) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'k' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'y' then (
                  14
                )
                else (
                  -1
                )
              )
            | 4 -> (
                match String.unsafe_get s pos with
                  | 'f' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                        12
                      )
                      else (
                        -1
                      )
                    )
                  | 'h' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'h' then (
                        16
                      )
                      else (
                        -1
                      )
                    )
                  | 'k' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'd' then (
                        1
                      )
                      else (
                        -1
                      )
                    )
                  | 'l' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                        7
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'y' then (
                  17
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' then (
                  8
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'l' then (
                  3
                )
                else (
                  -1
                )
              )
            | 8 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | 's' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' then (
                        5
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 9 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' then (
                        match String.unsafe_get s (pos+4) with
                          | 'c' -> (
                              if String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 's' && String.unsafe_get s (pos+8) = 's' then (
                                0
                              )
                              else (
                                -1
                              )
                            )
                          | 't' -> (
                              if String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'e' then (
                                13
                              )
                              else (
                                -1
                              )
                            )
                          | _ -> (
                              -1
                            )
                      )
                      else (
                        -1
                      )
                    )
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' then (
                        9
                      )
                      else (
                        -1
                      )
                    )
                  | 'q' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'f' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'v' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'b' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'y' then (
                  6
                )
                else (
                  -1
                )
              )
            | 12 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'h' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'm' then (
                        19
                      )
                      else (
                        -1
                      )
                    )
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                        10
                      )
                      else (
                        -1
                      )
                    )
                  | 't' -> (
                      if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'v' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'w' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                        21
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'f' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 'g' && String.unsafe_get s (pos+13) = 's' then (
                  15
                )
                else (
                  -1
                )
              )
            | 16 -> (
                match String.unsafe_get s pos with
                  | 'i' -> (
                      if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'l' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = 'c' then (
                        18
                      )
                      else (
                        -1
                      )
                    )
                  | 'l' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'f' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'f' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'l' && String.unsafe_get s (pos+15) = 'e' then (
                        20
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 20 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 't' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = 'e' then (
                  11
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_bug_class := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_kind := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_bug_type := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_doc_url := (
                Some (
                  (
                    Ag_oj_run.read_string
                  ) p lb
                )
              );
            )
          | 4 ->
            field_qualifier := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 5 ->
            field_severity := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 6 ->
            field_visibility := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | 7 ->
            field_line := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x40;
          | 8 ->
            field_column := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x80;
          | 9 ->
            field_procedure := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x100;
          | 10 ->
            field_procedure_id := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x200;
          | 11 ->
            field_procedure_start_line := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x400;
          | 12 ->
            field_file := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x800;
          | 13 ->
            field_bug_trace := (
              (
                read__3
              ) p lb
            );
            bits0 := !bits0 lor 0x1000;
          | 14 ->
            field_key := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x2000;
          | 15 ->
            field_qualifier_tags := (
              (
                read__1
              ) p lb
            );
            bits0 := !bits0 lor 0x4000;
          | 16 ->
            field_hash := (
              (
                Ag_oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x8000;
          | 17 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_dotty := (
                Some (
                  (
                    Ag_oj_run.read_string
                  ) p lb
                )
              );
            )
          | 18 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_infer_source_loc := (
                Some (
                  (
                    read_loc
                  ) p lb
                )
              );
            )
          | 19 ->
            field_bug_type_hum := (
              (
                Ag_oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x10000;
          | 20 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_linters_def_file := (
                Some (
                  (
                    Ag_oj_run.read_string
                  ) p lb
                )
              );
            )
          | 21 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_traceview_id := (
                Some (
                  (
                    Ag_oj_run.read_int
                  ) p lb
                )
              );
            )
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'k' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'y' then (
                    14
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  match String.unsafe_get s pos with
                    | 'f' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' then (
                          12
                        )
                        else (
                          -1
                        )
                      )
                    | 'h' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'h' then (
                          16
                        )
                        else (
                          -1
                        )
                      )
                    | 'k' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'd' then (
                          1
                        )
                        else (
                          -1
                        )
                      )
                    | 'l' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'e' then (
                          7
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'y' then (
                    17
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'n' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'l' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 's' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' then (
                          5
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 9 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' then (
                          match String.unsafe_get s (pos+4) with
                            | 'c' -> (
                                if String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 's' && String.unsafe_get s (pos+8) = 's' then (
                                  0
                                )
                                else (
                                  -1
                                )
                              )
                            | 't' -> (
                                if String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'e' then (
                                  13
                                )
                                else (
                                  -1
                                )
                              )
                            | _ -> (
                                -1
                              )
                        )
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' then (
                          9
                        )
                        else (
                          -1
                        )
                      )
                    | 'q' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'f' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'v' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'b' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'y' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'g' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'y' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'h' && String.unsafe_get s (pos+10) = 'u' && String.unsafe_get s (pos+11) = 'm' then (
                          19
                        )
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                          10
                        )
                        else (
                          -1
                        )
                      )
                    | 't' -> (
                        if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'v' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'w' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'd' then (
                          21
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'f' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 'g' && String.unsafe_get s (pos+13) = 's' then (
                    15
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  match String.unsafe_get s pos with
                    | 'i' -> (
                        if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'r' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'l' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = 'c' then (
                          18
                        )
                        else (
                          -1
                        )
                      )
                    | 'l' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'f' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'f' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'l' && String.unsafe_get s (pos+15) = 'e' then (
                          20
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'r' && String.unsafe_get s (pos+14) = 't' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = 'e' then (
                    11
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_bug_class := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_kind := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_bug_type := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_doc_url := (
                  Some (
                    (
                      Ag_oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 4 ->
              field_qualifier := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 5 ->
              field_severity := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 6 ->
              field_visibility := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | 7 ->
              field_line := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x40;
            | 8 ->
              field_column := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x80;
            | 9 ->
              field_procedure := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x100;
            | 10 ->
              field_procedure_id := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x200;
            | 11 ->
              field_procedure_start_line := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x400;
            | 12 ->
              field_file := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x800;
            | 13 ->
              field_bug_trace := (
                (
                  read__3
                ) p lb
              );
              bits0 := !bits0 lor 0x1000;
            | 14 ->
              field_key := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x2000;
            | 15 ->
              field_qualifier_tags := (
                (
                  read__1
                ) p lb
              );
              bits0 := !bits0 lor 0x4000;
            | 16 ->
              field_hash := (
                (
                  Ag_oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x8000;
            | 17 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_dotty := (
                  Some (
                    (
                      Ag_oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 18 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_infer_source_loc := (
                  Some (
                    (
                      read_loc
                    ) p lb
                  )
                );
              )
            | 19 ->
              field_bug_type_hum := (
                (
                  Ag_oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x10000;
            | 20 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_linters_def_file := (
                  Some (
                    (
                      Ag_oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 21 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_traceview_id := (
                  Some (
                    (
                      Ag_oj_run.read_int
                    ) p lb
                  )
                );
              )
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x1ffff then Ag_oj_run.missing_fields p [| !bits0 |] [| "bug_class"; "kind"; "bug_type"; "qualifier"; "severity"; "visibility"; "line"; "column"; "procedure"; "procedure_id"; "procedure_start_line"; "file"; "bug_trace"; "key"; "qualifier_tags"; "hash"; "bug_type_hum" |];
        (
          {
            bug_class = !field_bug_class;
            kind = !field_kind;
            bug_type = !field_bug_type;
            doc_url = !field_doc_url;
            qualifier = !field_qualifier;
            severity = !field_severity;
            visibility = !field_visibility;
            line = !field_line;
            column = !field_column;
            procedure = !field_procedure;
            procedure_id = !field_procedure_id;
            procedure_start_line = !field_procedure_start_line;
            file = !field_file;
            bug_trace = !field_bug_trace;
            key = !field_key;
            qualifier_tags = !field_qualifier_tags;
            hash = !field_hash;
            dotty = !field_dotty;
            infer_source_loc = !field_infer_source_loc;
            bug_type_hum = !field_bug_type_hum;
            linters_def_file = !field_linters_def_file;
            traceview_id = !field_traceview_id;
          }
         : jsonbug)
      )
)
let jsonbug_of_string s =
  read_jsonbug (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__6 = (
  Ag_oj_run.write_list (
    write_jsonbug
  )
)
let string_of__6 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__6 ob x;
  Bi_outbuf.contents ob
let read__6 = (
  Ag_oj_run.read_list (
    read_jsonbug
  )
)
let _6_of_string s =
  read__6 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_report = (
  write__6
)
let string_of_report ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_report ob x;
  Bi_outbuf.contents ob
let read_report = (
  read__6
)
let report_of_string s =
  read_report (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_json_trace : _ -> json_trace -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"trace\":";
    (
      write__3
    )
      ob x.trace;
    Bi_outbuf.add_char ob '}';
)
let string_of_json_trace ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_json_trace ob x;
  Bi_outbuf.contents ob
let read_json_trace = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_trace = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          if len = 5 && String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' then (
            0
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Ag_oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_trace := (
              (
                read__3
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            if len = 5 && String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' then (
              0
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Ag_oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_trace := (
                (
                  read__3
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0x1 then Ag_oj_run.missing_fields p [| !bits0 |] [| "trace" |];
        (
          {
            trace = !field_trace;
          }
         : json_trace)
      )
)
let json_trace_of_string s =
  read_json_trace (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
