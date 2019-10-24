(*
 * Copyright (c) 2009 - 2013 Monoidics ltd.
 * Copyright (c) 2013 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

open! IStd

let is_yes = String.equal "yes"

let is_not_no = Fn.non (String.equal "no")

let major = 0

let minor = 13

let patch = 0

let commit = "unknown"

let branch = "unknown"

let is_release = is_yes "yes"

let tag = Printf.sprintf "v%d.%d.%d" major minor patch

let versionString = if is_release then tag else Printf.sprintf "%s-%s" tag commit

let versionJson =
  String.concat ~sep:"\n"
    [ "{"
    ; ("\"major\": " ^ string_of_int major ^ ", ")
    ; ("\"minor\": " ^ string_of_int minor ^ ", ")
    ; ("\"patch\": " ^ string_of_int patch ^ ", ")
    ; ("\"commit\": \"" ^ commit ^ "\", ")
    ; ("\"branch\": \"" ^ branch ^ "\", ")
    ; ("\"tag\": \"" ^ tag ^ "\"")
    ; "}" ]

let clang_enabled = is_yes "yes"

let java_enabled = is_yes "yes"

let python_enabled = is_yes "yes"

let xcode_enabled = is_not_no "no"

let man_pages_last_modify_date = "2017-10-18"
