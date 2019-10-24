
let () =
  Hashtbl.add Toploop.directive_table "require" (Toploop.Directive_string ignore);
  Hashtbl.add Toploop.directive_table "use" (Toploop.Directive_string (fun _ ->
    failwith "#use is not allowed inside jbuild in OCaml syntax"));
  Hashtbl.add Toploop.directive_table "use_mod" (Toploop.Directive_string (fun _ ->
    failwith "#use is not allowed inside jbuild in OCaml syntax"))

module Jbuild_plugin = struct
  module V1 = struct
    let context       = "test"
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
      let oc = open_out_bin "../_build/.jbuilds/test/scripts/jbuild" in
      output_string oc s;
      close_out oc
  end
end
# 1 "scripts/jbuild"
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
(* NOTE: prepend jbuild.common to this file! *)
;; Format.sprintf
     {|
(executable
 ((name checkCopyright)
  (flags (%s))
  (libraries (core str))
 ))
|}
     (String.concat " " common_cflags)
   |> Jbuild_plugin.V1.send
