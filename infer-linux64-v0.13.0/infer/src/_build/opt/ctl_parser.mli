
(* The type of tokens. *)

type token = 
  | WITH_TRANSITION
  | WHITELIST_PATH
  | WHEN
  | TRUE
  | STRING of (string)
  | SET
  | SEMICOLON
  | RIGHT_PAREN
  | RIGHT_BRACE
  | REGEXP
  | PROTOCOL
  | POINTER_TO_DECL
  | PARAMETER_POS
  | PARAMETER_NAME
  | PARAMETERS
  | OR
  | NOT
  | LET
  | LESS_THAN
  | LEFT_PAREN
  | LEFT_BRACE
  | INIT_EXPR
  | IMPLIES
  | IDENTIFIER of (string)
  | HOLDS_IN_NODE
  | HASHIMPORT
  | GREATER_THAN
  | GLOBAL_PATHS
  | GLOBAL_MACROS
  | FILE_IDENTIFIER of (string)
  | FIELD_NAME
  | FIELDS
  | FALSE
  | EX
  | EU
  | ET
  | EOF
  | EH
  | EG
  | EF
  | DEFINE_CHECKER
  | COND
  | COMMA
  | BODY
  | BLACKLIST_PATH
  | AX
  | AU
  | ASSIGNMENT
  | ANY
  | AND
  | AG
  | AF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val al_file: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (CTL.al_file)
