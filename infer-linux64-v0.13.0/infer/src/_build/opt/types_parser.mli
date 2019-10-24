
(* The type of tokens. *)

type token = 
  | WCHAR_T
  | VOID
  | UNSIGNED
  | UNDUNDWCHAR_T
  | UNDUNDFP16
  | STRING of (string)
  | STAR
  | SIGNED
  | SHORT
  | RIGHT_PAREN
  | RIGHT_ANGLE
  | REGEXP
  | REARG of (string)
  | OBJCSEL
  | OBJCID
  | OBJCCLASS
  | NULLPTR
  | LONG
  | LEFT_PAREN
  | LEFT_ANGLE
  | INT128
  | INT
  | IDENTIFIER of (string)
  | HALF
  | FLOAT128
  | FLOAT
  | EOF
  | DOUBLE
  | CHAR32_T
  | CHAR16_T
  | CHAR
  | BOOL
  | AMPERSAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val abs_ctype: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ctl_parser_types.abs_ctype)
