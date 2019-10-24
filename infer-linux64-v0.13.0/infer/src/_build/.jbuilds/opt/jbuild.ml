
let () =
  Hashtbl.add Toploop.directive_table "require" (Toploop.Directive_string ignore);
  Hashtbl.add Toploop.directive_table "use" (Toploop.Directive_string (fun _ ->
    failwith "#use is not allowed inside jbuild in OCaml syntax"));
  Hashtbl.add Toploop.directive_table "use_mod" (Toploop.Directive_string (fun _ ->
    failwith "#use is not allowed inside jbuild in OCaml syntax"))

module Jbuild_plugin = struct
  module V1 = struct
    let context       = "opt"
    let ocaml_version = "4.05.0"

    let ocamlc_config =
      [ "architecture"             , "amd64"
      ; "asm"                      , "as"
      ; "asm_cfi_supported"        , "true"
      ; "ast_impl_magic_number"    , "Caml1999M020"
      ; "ast_intf_magic_number"    , "Caml1999N018"
      ; "bytecomp_c_compiler"      , "gcc -O2 -fno-strict-aliasing -fwrapv -D_FILE_OFFSET_BITS=64 -D_REENTRANT -fPIC"
      ; "bytecomp_c_libraries"     , "-lm  -ldl -lcurses -lpthread                  "
      ; "cc_profile"               , "-pg"
      ; "ccomp_type"               , "cc"
      ; "cma_magic_number"         , "Caml1999A012"
      ; "cmi_magic_number"         , "Caml1999I021"
      ; "cmo_magic_number"         , "Caml1999O011"
      ; "cmt_magic_number"         , "Caml2012T009"
      ; "cmx_magic_number"         , "Caml1999Y015"
      ; "cmxa_magic_number"        , "Caml1999Z014"
      ; "cmxs_magic_number"        , "Caml2007D002"
      ; "default_executable_name"  , "a.out"
      ; "exec_magic_number"        , "Caml1999X011"
      ; "ext_asm"                  , ".s"
      ; "ext_dll"                  , ".so"
      ; "ext_exe"                  , ""
      ; "ext_lib"                  , ".a"
      ; "ext_obj"                  , ".o"
      ; "flambda"                  , "false"
      ; "host"                     , "x86_64-unknown-linux-gnu"
      ; "int_size"                 , "63"
      ; "model"                    , "default"
      ; "native_c_compiler"        , "gcc -O2 -fno-strict-aliasing -fwrapv -D_FILE_OFFSET_BITS=64 -D_REENTRANT"
      ; "native_c_libraries"       , "-lm  -ldl"
      ; "native_pack_linker"       , "ld -r  -o "
      ; "os_type"                  , "Unix"
      ; "profiling"                , "true"
      ; "ranlib"                   , "ranlib"
      ; "safe_string"              , "false"
      ; "spacetime"                , "false"
      ; "standard_library"         , "/home/weimer/.opam/4.05.0/lib/ocaml"
      ; "standard_library_default" , "/home/weimer/.opam/4.05.0/lib/ocaml"
      ; "standard_runtime"         , "/home/weimer/.opam/4.05.0/bin/ocamlrun"
      ; "system"                   , "linux"
      ; "systhread_supported"      , "true"
      ; "target"                   , "x86_64-unknown-linux-gnu"
      ; "version"                  , "4.05.0"
      ; "with_frame_pointers"      , "false"
      ; "word_size"                , "64"
      ]

    let send s =
      let oc = open_out_bin "_build/.jbuilds/opt/jbuild" in
      output_string oc s;
      close_out oc
  end
end
# 1 "jbuild"
(* -*- tuareg -*- *)
(* use strings so that it looks like OCaml even before substituting, e.g. to use ocamlformat *)

type build_mode = Default | Opt | Test

let build_mode =
  match Jbuild_plugin.V1.context with
  | "test"
   -> Test
  | "default"
   -> Default
  | "opt"
   -> Opt
  | ctx
   -> invalid_arg ("unknown context: " ^ ctx)

let is_yes = String.equal "yes"

let clang = is_yes "yes"

let java = is_yes "yes"

let python = is_yes "yes"

let facebook = is_yes "no"

let extra_cflags = if "@EXTRA_CFLAGS" = "" then [] else [""]

let common_cflags =
  let fatal_warnings = "+3+5+6+8+10+11+12+18+19+20+21+23+26+29+27+32+33+34+35+37+38+39+50+52+57" in
  let warnings = fatal_warnings ^ "-4-9-40-41-42-45-48" in
  let common_flags =
    [ "-g"
    ; "-short-paths"
    ; "-safe-string"
    ; "-principal"
    ; "-strict-formats"
    ; "-strict-sequence"
    ; "-bin-annot"
    ; "-w"
    ; warnings ]
  in
  match build_mode with
  | Default | Opt
   -> common_flags
  | Test
   -> "-warn-error" :: fatal_warnings :: common_flags

let common_optflags = match build_mode with
  | Opt -> ["-O3"]
  | Default | Test -> []

let common_libraries =
  (if java then ["javalib"; "ptrees"; "sawja"] else [])
  @ [ "ANSITerminal"
    ; "atdgen"
    ; "base"
    ; "cmdliner"
    ; "core"
    ; "extlib"
    ; "mtime.clock.os"
    ; "oUnit"
    ; "parmap"
    ; "sqlite3"
    ; "str"
    ; "unix"
    ; "xmlm"
    ; "yojson"
    ; "zip" ]
(* -*- tuareg -*- *)
(* NOTE: prepend jbuild.common to this file! *)

let ( ^/ ) = Filename.concat

let source_dirs =
  (if facebook then "facebook" else "opensource")
  :: ( ( if clang then ["clang"; ("unit" ^/ "clang")]
       else ["clang_stubs"; ("unit" ^/ "clang_stubs")] )
     @ [ (if java then "java" else "java_stubs")
       ; (if python && facebook then "python" else "python_stubs")
       ; "absint"
       ; "backend"
       ; "base"
       ; "bufferoverrun"
       ; "checkers"
       ; "concurrency"
       ; "eradicate"
       ; "harness"
       ; "integration"
       ; "IR"
       ; "labs"
       ; "quandary"
       ; "unit" ] )

let infer_binaries =
  ["infer"; "inferunit"] @ if facebook then ["InferCreateTraceViewLinks"] else []

let infer_cflags =
  common_cflags @ ["-open"; "InferStdlib"; "-open"; "IStd"; "-open"; "InferGenerated"]

let infer_libraries = "InferStdlib" :: "InferGenerated" :: common_libraries

(** The build stanzas to be passed to jbuilder *)
let stanzas =
  ( if clang then
      ["(ocamllex (types_lexer ctl_lexer))"; "(menhir ((modules (types_parser ctl_parser))))"]
  else [] )
  @ ( if python && facebook then ["(ocamllex (pythonLexer))"; "(menhir ((modules (pythonParser))))"]
    else [] )
  @ [ Format.sprintf
        {|
(library
 ((name InferModules)
  (flags (%s))
  (ocamlopt_flags (%s))
  (libraries (%s))
  (modules (:standard \ %s infertop))
  (preprocess (pps (ppx_compare ppx_sexp_conv -no-check)))
 ))
|}
        (String.concat " " infer_cflags) (String.concat " " common_optflags)
        (String.concat " " infer_libraries) (String.concat " " infer_binaries)
    ; Format.sprintf
        {|
(executables
 ((names (%s))
  (flags (%s -open InferModules))
  (ocamlopt_flags (%s))
  (libraries (InferModules))
  (modules (%s))
  (preprocess (pps (ppx_compare ppx_sexp_conv -no-check)))
 ))
|}
        (String.concat " " infer_binaries) (String.concat " " infer_cflags)
        (String.concat " " common_optflags) (String.concat " " infer_binaries)
    ; Format.sprintf
        {|
(executable
 ((name infertop)
  (flags (%s))
  (ocamlopt_flags (%s))
  (libraries (utop InferModules))
  (modules (:standard \ %s))
  (link_flags (-linkall -warn-error -31))))
|}
        (String.concat " " infer_cflags) (String.concat " " common_optflags)
        (String.concat " " infer_binaries) ]
  @ ( List.map
        (fun source_dir ->
          [ Printf.sprintf "(copy_files# %s/*.ml{,i,l})" source_dir
          ; (* menhir doesn't support '# 1 "<source file>"' directives at the start of the file inserted by
       copy# actions *)
          Printf.sprintf "(copy_files %s/*.mly)" source_dir ])
        source_dirs
    |> List.concat )

;; String.concat "\n" stanzas |> Jbuild_plugin.V1.send
