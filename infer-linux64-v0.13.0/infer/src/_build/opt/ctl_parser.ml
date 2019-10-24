
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WITH_TRANSITION
    | WHITELIST_PATH
    | WHEN
    | TRUE
    | STRING of (
# 75 "ctl_parser.mly"
       (string)
# 15 "ctl_parser.ml"
  )
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
    | IDENTIFIER of (
# 73 "ctl_parser.mly"
       (string)
# 38 "ctl_parser.ml"
  )
    | HOLDS_IN_NODE
    | HASHIMPORT
    | GREATER_THAN
    | GLOBAL_PATHS
    | GLOBAL_MACROS
    | FILE_IDENTIFIER of (
# 74 "ctl_parser.mly"
       (string)
# 48 "ctl_parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState170
  | MenhirState166
  | MenhirState159
  | MenhirState155
  | MenhirState150
  | MenhirState147
  | MenhirState146
  | MenhirState143
  | MenhirState141
  | MenhirState139
  | MenhirState132
  | MenhirState125
  | MenhirState122
  | MenhirState121
  | MenhirState117
  | MenhirState111
  | MenhirState108
  | MenhirState101
  | MenhirState99
  | MenhirState97
  | MenhirState92
  | MenhirState89
  | MenhirState85
  | MenhirState82
  | MenhirState80
  | MenhirState78
  | MenhirState75
  | MenhirState66
  | MenhirState64
  | MenhirState61
  | MenhirState60
  | MenhirState58
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState46
  | MenhirState42
  | MenhirState31
  | MenhirState28
  | MenhirState25
  | MenhirState24
  | MenhirState22
  | MenhirState21
  | MenhirState17
  | MenhirState14
  | MenhirState10
  | MenhirState9
  | MenhirState5
  | MenhirState0

# 10 "ctl_parser.mly"
  
  module L = Logging

  open! IStd

  let formal_params : (ALVar.t list) ref = ref []

  let is_not_infer_reserved_id id =
    if Str.string_match (Str.regexp_string Ctl_parser_types.infer_prefix) id 0 then
      raise (CTLExceptions.ALParserInvariantViolationException
               ("ERROR: " ^ id ^ " contains __infer_ctl_ that is a reserved keyword "
            ^ "which cannot be used in identifiers:"))
     else ()

   let is_defined_identifier id =
       if (List.mem ~equal:ALVar.equal !formal_params (ALVar.Var id)) then
         L.(debug Linters Verbose) "\tParsed exp '%s' as variable" id
       else
         raise (CTLExceptions.ALParserInvariantViolationException
                  ("ERROR: Variable '" ^ id ^ "' is undefined"))

   let is_valid_astnode node_name =
      if Clang_ast_proj.is_valid_astnode_kind node_name then ()
      else
        raise (CTLExceptions.ALParserInvariantViolationException ("Invalid AST node " ^ node_name))


# 166 "ctl_parser.ml"

let rec _menhir_goto_global_paths_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_global_paths_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv677)) * _menhir_state * 'tv_global_paths_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv673)) * _menhir_state * 'tv_global_paths_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv669)) * _menhir_state * 'tv_global_paths_list)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv667)) * _menhir_state * 'tv_global_paths_list)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, (_3 : 'tv_global_paths_list)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_global_paths = 
# 144 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "Parsed global path definitions...@\n"; _3 )
# 198 "ctl_parser.ml"
                 in
                _menhir_goto_global_paths _menhir_env _menhir_stack _v) : 'freshtv668)) : 'freshtv670)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv671)) * _menhir_state * 'tv_global_paths_list)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv672)) : 'freshtv674)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv675)) * _menhir_state * 'tv_global_paths_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv676)) : 'freshtv678)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv681 * _menhir_state * 'tv_global_path_declaration)) * _menhir_state * 'tv_global_paths_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv679 * _menhir_state * 'tv_global_path_declaration)) * _menhir_state * 'tv_global_paths_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_global_path_declaration)), _, (_3 : 'tv_global_paths_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_global_paths_list = 
# 138 "ctl_parser.mly"
                                                        ( _1 :: _3 )
# 225 "ctl_parser.ml"
         in
        _menhir_goto_global_paths_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv680)) : 'freshtv682)
    | _ ->
        _menhir_fail ()

and _menhir_goto_let_clause_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_let_clause_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv661)) * _menhir_state * 'tv_let_clause_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv657)) * _menhir_state * 'tv_let_clause_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv653)) * _menhir_state * 'tv_let_clause_list)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv651)) * _menhir_state * 'tv_let_clause_list)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, (_3 : 'tv_let_clause_list)) = _menhir_stack in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_global_macros = 
# 129 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "Parsed global macro definitions...@\n@\n"; _3 )
# 261 "ctl_parser.ml"
                 in
                _menhir_goto_global_macros _menhir_env _menhir_stack _v) : 'freshtv652)) : 'freshtv654)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv655)) * _menhir_state * 'tv_let_clause_list)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv656)) : 'freshtv658)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv659)) * _menhir_state * 'tv_let_clause_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv660)) : 'freshtv662)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv665 * _menhir_state * 'tv_let_clause)) * _menhir_state * 'tv_let_clause_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv663 * _menhir_state * 'tv_let_clause)) * _menhir_state * 'tv_let_clause_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_let_clause)), _, (_3 : 'tv_let_clause_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_let_clause_list = 
# 174 "ctl_parser.mly"
                                        ( _1 :: _3 )
# 288 "ctl_parser.ml"
         in
        _menhir_goto_let_clause_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv664)) : 'freshtv666)
    | _ ->
        _menhir_fail ()

and _menhir_goto_checkers_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_checkers_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv645 * _menhir_state * 'tv_import_files) * 'tv_global_macros) * 'tv_global_paths) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_checkers_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv643 * _menhir_state * 'tv_import_files) * 'tv_global_macros) * 'tv_global_paths) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_4 : 'tv_checkers_list) : 'tv_checkers_list) = _v in
        ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_import_files)), (_2 : 'tv_global_macros)), (_3 : 'tv_global_paths)) = _menhir_stack in
        let _v : (
# 98 "ctl_parser.mly"
       (CTL.al_file)
# 310 "ctl_parser.ml"
        ) = 
# 115 "ctl_parser.mly"
                                                          (
      { CTL.import_files = _1; CTL.global_macros = _2; CTL.global_paths = _3; CTL.checkers = _4 }
    )
# 316 "ctl_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 98 "ctl_parser.mly"
       (CTL.al_file)
# 324 "ctl_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 98 "ctl_parser.mly"
       (CTL.al_file)
# 332 "ctl_parser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 98 "ctl_parser.mly"
       (CTL.al_file)
# 340 "ctl_parser.ml"
        )) : (
# 98 "ctl_parser.mly"
       (CTL.al_file)
# 344 "ctl_parser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv638)) : 'freshtv640)) : 'freshtv642)) : 'freshtv644)) : 'freshtv646)
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv649 * _menhir_state * 'tv_checker)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_checkers_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv647 * _menhir_state * 'tv_checker)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_checkers_list) : 'tv_checkers_list) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_checker)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_checkers_list = 
# 149 "ctl_parser.mly"
                                    ( _1::_3 )
# 361 "ctl_parser.ml"
         in
        _menhir_goto_checkers_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv648)) : 'freshtv650)
    | _ ->
        _menhir_fail ()

and _menhir_goto_clause_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_clause_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv631 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_clause_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv627 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_clause_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv625 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_clause_list) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_identifier)), _, (_5 : 'tv_clause_list)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_checker = 
# 154 "ctl_parser.mly"
  (
    L.(debug Linters Verbose) "@\nParsed checker definition@\n";
    let c = { CTL.id = _2; CTL.definitions = _5 } in
    CTL.print_checker c;
    c
  )
# 396 "ctl_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv623) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_checker) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_checker) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_checker) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DEFINE_CHECKER ->
                    _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState170
                | EOF ->
                    _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState170
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState170) : 'freshtv618)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_checker) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv620)) : 'freshtv622)) : 'freshtv624)) : 'freshtv626)) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv629 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_clause_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_clause)) * _menhir_state * 'tv_clause_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv633 * _menhir_state * 'tv_clause)) * _menhir_state * 'tv_clause_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_clause)), _, (_3 : 'tv_clause_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_clause_list = 
# 169 "ctl_parser.mly"
                                ( _1 :: _3 )
# 446 "ctl_parser.ml"
         in
        _menhir_goto_clause_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
    | _ ->
        _menhir_fail ()

and _menhir_goto_path_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_path_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv595 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv591 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv587 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_path_list)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv585 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_path_list)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_identifier)), _, (_5 : 'tv_path_list)) = _menhir_stack in
                let _7 = () in
                let _6 = () in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_global_path_declaration = 
# 133 "ctl_parser.mly"
                                                                         ( (_2, _5) )
# 483 "ctl_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv583) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_global_path_declaration) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv581 * _menhir_state * 'tv_global_path_declaration) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | SEMICOLON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv575 * _menhir_state * 'tv_global_path_declaration) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LET ->
                        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState139
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv576)
                | RIGHT_BRACE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_global_path_declaration) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, (_1 : 'tv_global_path_declaration)) = _menhir_stack in
                    let _v : 'tv_global_paths_list = 
# 137 "ctl_parser.mly"
                            ( [_1] )
# 514 "ctl_parser.ml"
                     in
                    _menhir_goto_global_paths_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_global_path_declaration) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv580)) : 'freshtv582)) : 'freshtv584)) : 'freshtv586)) : 'freshtv588)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv589 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_path_list)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv593 * _menhir_state) * _menhir_state * 'tv_identifier))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv599 * _menhir_state * 'tv_alexp_path)) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv597 * _menhir_state * 'tv_alexp_path)) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_alexp_path)), _, (_3 : 'tv_path_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_path_list = 
# 164 "ctl_parser.mly"
                              ( _1 :: _3 )
# 548 "ctl_parser.ml"
         in
        _menhir_goto_path_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv598)) : 'freshtv600)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv607 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv603 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv601 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (_5 : 'tv_path_list)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_clause = 
# 186 "ctl_parser.mly"
    ( CTL.CPath (`WhitelistPath, _5) )
# 572 "ctl_parser.ml"
             in
            _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v) : 'freshtv602)) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv605 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv615 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv611 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv609 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _), _, (_5 : 'tv_path_list)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_clause = 
# 188 "ctl_parser.mly"
    ( CTL.CPath (`BlacklistPath, _5) )
# 603 "ctl_parser.ml"
             in
            _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v) : 'freshtv610)) : 'freshtv612)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv613 * _menhir_state) * _menhir_state))) * _menhir_state * 'tv_path_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv614)) : 'freshtv616)
    | _ ->
        _menhir_fail ()

and _menhir_goto_let_clause : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_let_clause -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv569 * _menhir_state * 'tv_let_clause) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv565 * _menhir_state * 'tv_let_clause) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LET ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | RIGHT_BRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv563 * _menhir_state * 'tv_let_clause)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (_1 : 'tv_let_clause)) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_let_clause_list = 
# 173 "ctl_parser.mly"
                        ( [_1] )
# 642 "ctl_parser.ml"
                 in
                _menhir_goto_let_clause_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv564)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv566)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv567 * _menhir_state * 'tv_let_clause) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv568)) : 'freshtv570)
    | MenhirState166 | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_let_clause) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_let_clause) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_let_clause)) = _menhir_stack in
        let _v : 'tv_clause = 
# 203 "ctl_parser.mly"
                 ( _1 )
# 665 "ctl_parser.ml"
         in
        _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)) : 'freshtv574)
    | _ ->
        _menhir_fail ()

and _menhir_run75 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run101 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101

and _menhir_run77 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | WITH_TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv557 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANY ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | BODY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | COND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | FIELDS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | FIELD_NAME ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | INIT_EXPR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PARAMETERS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PARAMETER_NAME ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PARAMETER_POS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | POINTER_TO_DECL ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | PROTOCOL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv558)
    | AF | AG | AND | AU | AX | EF | EG | EH | EU | EX | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv559 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_formula)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 268 "ctl_parser.mly"
               ( L.(debug Linters Verbose) "\tParsed EX@\n"; CTL.EX (None, _1) )
# 772 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv560)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv561 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)

and _menhir_run80 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState80
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run87 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv555 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (_1 : 'tv_formula)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_formula = 
# 276 "ctl_parser.mly"
               ( L.(debug Linters Verbose) "\tParsed EG@\n"; CTL.EG (None, _1) )
# 833 "ctl_parser.ml"
     in
    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)

and _menhir_run88 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | WITH_TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv549 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANY ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | BODY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | COND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | FIELDS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | FIELD_NAME ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | INIT_EXPR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PARAMETERS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PARAMETER_NAME ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PARAMETER_POS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | POINTER_TO_DECL ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | PROTOCOL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv550)
    | AF | AG | AND | AU | AX | EF | EG | EH | EU | EX | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv551 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_formula)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 279 "ctl_parser.mly"
               ( L.(debug Linters Verbose) "\tParsed EF@\n"; CTL.EF (None, _1) )
# 882 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv552)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv553 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)

and _menhir_run91 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | WITH_TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv543 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANY ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | BODY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | COND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | FIELDS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | FIELD_NAME ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | INIT_EXPR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PARAMETERS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PARAMETER_NAME ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PARAMETER_POS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | POINTER_TO_DECL ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | PROTOCOL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv544)
    | AF | AG | AND | AU | AX | EF | EG | EH | EU | EX | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv545 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_formula)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 272 "ctl_parser.mly"
               ( L.(debug Linters Verbose) "\tParsed AX@\n"; CTL.AX (None, _1) )
# 938 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv546)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv547 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv548)

and _menhir_run97 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState97
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97

and _menhir_run99 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState99
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv541 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (_1 : 'tv_formula)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_formula = 
# 277 "ctl_parser.mly"
               ( L.(debug Linters Verbose) "\tParsed AG@\n"; CTL.AG (None, _1) )
# 1015 "ctl_parser.ml"
     in
    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv542)

and _menhir_run95 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv539 * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (_1 : 'tv_formula)) = _menhir_stack in
    let _2 = () in
    let _v : 'tv_formula = 
# 267 "ctl_parser.mly"
               ( L.(debug Linters Verbose) "\tParsed AF@\n"; CTL.AF (None,_1) )
# 1029 "ctl_parser.ml"
     in
    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)

and _menhir_goto_actual_params : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_actual_params -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv529 * _menhir_state * 'tv_alexp)) * _menhir_state * 'tv_actual_params) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv527 * _menhir_state * 'tv_alexp)) * _menhir_state * 'tv_actual_params) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_alexp)), _, (_3 : 'tv_actual_params)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_actual_params = 
# 236 "ctl_parser.mly"
                              ( _1 :: _3 )
# 1047 "ctl_parser.ml"
         in
        _menhir_goto_actual_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_actual_params) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_actual_params) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_actual_params) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_identifier)), _, (_3 : 'tv_actual_params)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_atomic_formula = 
# 219 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "\tParsed predicate@\n"; CTL.Atomic(ALVar.Formula_id _1, _3) )
# 1068 "ctl_parser.ml"
             in
            _menhir_goto_atomic_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)) : 'freshtv534)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_actual_params) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv536)) : 'freshtv538)
    | _ ->
        _menhir_fail ()

and _menhir_goto_transition_label : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_transition_label -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv505 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_PAREN ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv506)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv511 * _menhir_state) * _menhir_state * 'tv_node_list)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AX ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | EX ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | FALSE ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | LEFT_PAREN ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | NOT ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | TRUE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | WHEN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv508)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv509 * _menhir_state) * _menhir_state * 'tv_node_list)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv510)) : 'freshtv512)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv513 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_PAREN ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv514)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv517 * _menhir_state * 'tv_formula))) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv515 * _menhir_state * 'tv_formula))) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_4 : 'tv_transition_label)) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_formula = 
# 270 "ctl_parser.mly"
     ( L.(debug Linters Verbose) "\tParsed EX WITH-TRANSITION '%a'@\n" CTL.Debug.pp_transition _4;
       CTL.EX (_4, _1) )
# 1162 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv521 * _menhir_state * 'tv_formula))) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv519 * _menhir_state * 'tv_formula))) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_4 : 'tv_transition_label)) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_formula = 
# 281 "ctl_parser.mly"
     ( L.(debug Linters Verbose) "\tParsed EF WITH-TRANSITION '%a'@\n" CTL.Debug.pp_transition _4;
       CTL.EF(_4, _1) )
# 1177 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)) : 'freshtv522)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv525 * _menhir_state * 'tv_formula))) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv523 * _menhir_state * 'tv_formula))) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_4 : 'tv_transition_label)) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_formula = 
# 274 "ctl_parser.mly"
     ( L.(debug Linters Verbose) "\tParsed AX WITH-TRANSITION '%a'@\n" CTL.Debug.pp_transition _4;
       CTL.AX (_4, _1) )
# 1192 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
    | _ ->
        _menhir_fail ()

and _menhir_goto_atomic_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atomic_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv503) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_atomic_formula) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv501) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_atomic_formula) : 'tv_atomic_formula) = _v in
    ((let _v : 'tv_formula = 
# 264 "ctl_parser.mly"
                   ( L.(debug Linters Verbose) "\tParsed atomic formula@\n"; _1 )
# 1211 "ctl_parser.ml"
     in
    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv499) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 250 "ctl_parser.mly"
             ( Some CTL.Protocol )
# 1225 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv497) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 249 "ctl_parser.mly"
                    ( Some CTL.PointerToDecl )
# 1239 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | REGEXP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState31
    | STRING _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | REGEXP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | STRING _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv495) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 246 "ctl_parser.mly"
               ( Some CTL.Parameters )
# 1287 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv493) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 245 "ctl_parser.mly"
              ( Some CTL.InitExpr )
# 1301 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | REGEXP ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | STRING _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv491) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 243 "ctl_parser.mly"
           ( Some CTL.Fields )
# 1332 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv489) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 242 "ctl_parser.mly"
         ( Some CTL.Cond )
# 1346 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv487) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 241 "ctl_parser.mly"
         ( Some CTL.Body )
# 1360 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_transition_label = 
# 240 "ctl_parser.mly"
        ( None )
# 1374 "ctl_parser.ml"
     in
    _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_checkers_list = 
# 148 "ctl_parser.mly"
        ( [] )
# 1387 "ctl_parser.ml"
     in
    _menhir_goto_checkers_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)

and _menhir_run143 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143

and _menhir_goto_clause : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_clause -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481 * _menhir_state * 'tv_clause) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * 'tv_clause) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | SET ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState166
        | RIGHT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv475 * _menhir_state * 'tv_clause)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_clause)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_clause_list = 
# 168 "ctl_parser.mly"
                    ( [_1] )
# 1430 "ctl_parser.ml"
             in
            _menhir_goto_clause_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv478)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * 'tv_clause) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv480)) : 'freshtv482)

and _menhir_run147 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BLACKLIST_PATH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState147 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGNMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv459 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFT_BRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv455 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENTIFIER _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
                | REGEXP ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState155
                | STRING _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState155 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState155) : 'freshtv456)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv457 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv461 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)) : 'freshtv464)
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | WHITELIST_PATH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState147 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGNMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv469 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFT_BRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv465 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENTIFIER _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
                | REGEXP ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState150
                | STRING _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv466)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv467 * _menhir_state) * _menhir_state)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)) : 'freshtv470)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv471 * _menhir_state) * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147

and _menhir_goto_alexp_path : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_alexp_path -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv453 * _menhir_state * 'tv_alexp_path) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447 * _menhir_state * 'tv_alexp_path) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENTIFIER _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | REGEXP ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | STRING _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv448)
    | RIGHT_BRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_alexp_path) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_alexp_path)) = _menhir_stack in
        let _v : 'tv_path_list = 
# 163 "ctl_parser.mly"
              ( [_1] )
# 1577 "ctl_parser.ml"
         in
        _menhir_goto_path_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv451 * _menhir_state * 'tv_alexp_path) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)

and _menhir_goto_node_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_node_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv433 * _menhir_state) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH_TRANSITION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv429 * _menhir_state) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ANY ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | BODY ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | COND ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FIELDS ->
                _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | FIELD_NAME ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | INIT_EXPR ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | PARAMETERS ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | PARAMETER_NAME ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | PARAMETER_POS ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | POINTER_TO_DECL ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | PROTOCOL ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv430)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv431 * _menhir_state) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv432)) : 'freshtv434)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_3 : 'tv_node_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 278 "ctl_parser.mly"
                         ( L.(debug Linters Verbose) "\tParsed EH@\n"; CTL.EH (_3, _1) )
# 1647 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)) : 'freshtv438)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_identifier)), _, (_3 : 'tv_node_list)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_node_list = 
# 108 "ctl_parser.mly"
                               ( is_valid_astnode _1; ALVar.Const(_1) :: _3 )
# 1660 "ctl_parser.ml"
         in
        _menhir_goto_node_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)) : 'freshtv442)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv445 * _menhir_state) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv443 * _menhir_state) * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_node_list) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_formula)), _, (_4 : 'tv_node_list)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_formula = 
# 284 "ctl_parser.mly"
     ( L.(debug Linters Verbose) "\tParsed InNode@\n"; CTL.InNode (_4, _2))
# 1674 "ctl_parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)) : 'freshtv446)
    | _ ->
        _menhir_fail ()

and _menhir_goto_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv345) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | IMPLIES ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv341) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv337) * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv335) * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _, (_2 : 'tv_formula)) = _menhir_stack in
                let _4 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_formula_EF = 
# 254 "ctl_parser.mly"
                                     ( _2 )
# 1733 "ctl_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv333) = _menhir_stack in
                let (_v : 'tv_formula_EF) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv331 * _menhir_state) * _menhir_state * 'tv_node_list)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
                let (_v : 'tv_formula_EF) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv329 * _menhir_state) * _menhir_state * 'tv_node_list)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
                let ((_5 : 'tv_formula_EF) : 'tv_formula_EF) = _v in
                ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_node_list)), _, (_4 : 'tv_transition_label)) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_formula = 
# 286 "ctl_parser.mly"
     ( L.(debug Linters Verbose) "\tParsed ET with transition '%a'@\n" CTL.Debug.pp_transition _4;
       CTL.ET (_2, _4, _5))
# 1751 "ctl_parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)) : 'freshtv336)) : 'freshtv338)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv339) * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv343) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_3 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 296 "ctl_parser.mly"
                       ( L.(debug Linters Verbose) "\tParsed OR@\n"; CTL.Or (_1, _3) )
# 1802 "ctl_parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | AND | AU | EU | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_3 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 265 "ctl_parser.mly"
                       ( L.(debug Linters Verbose) "\tParsed EU@\n"; CTL.EU (None, _1, _3) )
# 1840 "ctl_parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | AND | AU | EU | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv359 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_3 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 266 "ctl_parser.mly"
                       ( L.(debug Linters Verbose) "\tParsed AU@\n"; CTL.AU (None,_1, _3) )
# 1878 "ctl_parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv361 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | AND | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv365 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_3 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 295 "ctl_parser.mly"
                        ( L.(debug Linters Verbose) "\tParsed AND@\n"; CTL.And (_1, _3) )
# 1920 "ctl_parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv367 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)) : 'freshtv370)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | HOLDS_IN_NODE | RIGHT_PAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv371 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_formula)), _, (_3 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 298 "ctl_parser.mly"
      ( L.(debug Linters Verbose) "\tParsed IMPLIES@\n"; CTL.Implies (_1, _3) )
# 1966 "ctl_parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | IMPLIES ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv393 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv391 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_formula)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_formula_with_paren = 
# 258 "ctl_parser.mly"
                                  ( _2 )
# 2018 "ctl_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_formula_with_paren) = _v in
            ((match _menhir_s with
            | MenhirState52 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv379 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_formula_with_paren) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((_4 : 'tv_formula_with_paren) : 'tv_formula_with_paren) = _v in
                ((let ((_menhir_stack, _menhir_s), _, (_3 : 'tv_transition_label)) = _menhir_stack in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_formula = 
# 289 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "\tParsed EX with transition '%a'@\n" CTL.Debug.pp_transition _3;
      CTL.EX (_3, _4))
# 2041 "ctl_parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)) : 'freshtv380)
            | MenhirState61 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv383 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_formula_with_paren) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv381 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((_4 : 'tv_formula_with_paren) : 'tv_formula_with_paren) = _v in
                ((let ((_menhir_stack, _menhir_s), _, (_3 : 'tv_transition_label)) = _menhir_stack in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_formula = 
# 292 "ctl_parser.mly"
      ( L.(debug Linters Verbose)
        "\tParsed AX with transition '%a'@\n" CTL.Debug.pp_transition _3;
        CTL.AX (_3, _4))
# 2061 "ctl_parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
            | MenhirState159 | MenhirState111 | MenhirState21 | MenhirState22 | MenhirState24 | MenhirState25 | MenhirState101 | MenhirState99 | MenhirState97 | MenhirState80 | MenhirState75 | MenhirState58 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_formula_with_paren) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : 'tv_formula_with_paren) : 'tv_formula_with_paren) = _v in
                ((let _v : 'tv_formula = 
# 262 "ctl_parser.mly"
                       ( _1 )
# 2076 "ctl_parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
            | _ ->
                _menhir_fail ()) : 'freshtv390)) : 'freshtv392)) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | AND | AU | EU | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_formula)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_formula = 
# 299 "ctl_parser.mly"
                ( L.(debug Linters Verbose) "\tParsed NOT@\n"; CTL.Not (_2) )
# 2116 "ctl_parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | HOLDS_IN_NODE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv405 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv406)
        | IMPLIES ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv415 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | IMPLIES ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv411 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (_2 : 'tv_formula_id_def)), _, (_4 : 'tv_formal_params)), _, (_7 : 'tv_formula)) = _menhir_stack in
            let _6 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_let_clause = 
# 210 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "\tParsed let clause with formula identifier '%s(....)'@\n"
        (ALVar.formula_id_to_string _2);
      CTL.CLet (_2, _4, _7) )
# 2218 "ctl_parser.ml"
             in
            _menhir_goto_let_clause _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv413 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params))) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)) : 'freshtv416)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv421 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | IMPLIES ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv417 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_formula_id_def)), _, (_4 : 'tv_formula)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_let_clause = 
# 208 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "\tParsed LET clause@\n"; CTL.CLet (_2, [], _4) )
# 2267 "ctl_parser.ml"
             in
            _menhir_goto_let_clause _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv419 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv420)) : 'freshtv422)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv427 * _menhir_state) * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AF ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack)
        | AG ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack)
        | AND ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack)
        | AU ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack)
        | AX ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack)
        | EF ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack)
        | EG ->
            _menhir_run87 _menhir_env (Obj.magic _menhir_stack)
        | EH ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | EU ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack)
        | EX ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack)
        | IMPLIES ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run75 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv423 * _menhir_state) * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (_2 : 'tv_identifier)), _, (_4 : 'tv_formula)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_clause = 
# 179 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "\tParsed SET clause@\n";
    let alvar = match _2 with
      | "report_when" -> ALVar.Report_when
      | _ -> L.(die ExternalError) "string '%s' cannot be set to a variable. \
                       Use the reserved variable 'report_when'" _2 in
      CTL.CSet (alvar, _4) )
# 2321 "ctl_parser.ml"
             in
            _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v) : 'freshtv424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * 'tv_identifier)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
    | _ ->
        _menhir_fail ()

and _menhir_reduce1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_actual_params = 
# 234 "ctl_parser.mly"
    ([])
# 2339 "ctl_parser.ml"
     in
    _menhir_goto_actual_params _menhir_env _menhir_stack _menhir_s _v

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 75 "ctl_parser.mly"
       (string)
# 2346 "ctl_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv327) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 75 "ctl_parser.mly"
       (string)
# 2356 "ctl_parser.ml"
    )) : (
# 75 "ctl_parser.mly"
       (string)
# 2360 "ctl_parser.ml"
    )) = _v in
    ((let _v : 'tv_alexp_const = 
# 304 "ctl_parser.mly"
          ( is_not_infer_reserved_id _1;
           L.(debug Linters Verbose) "\tParsed string constant '%s'@\n" _1;
           ALVar.Const _1 )
# 2367 "ctl_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv325) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_alexp_const) = _v in
    ((match _menhir_s with
    | MenhirState66 | MenhirState64 | MenhirState46 | MenhirState42 | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_alexp_const) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_alexp_const) : 'tv_alexp_const) = _v in
        ((let _v : 'tv_alexp = 
# 315 "ctl_parser.mly"
               (_1)
# 2386 "ctl_parser.ml"
         in
        _menhir_goto_alexp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
    | MenhirState155 | MenhirState150 | MenhirState125 | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_alexp_const) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_alexp_const) : 'tv_alexp_const) = _v in
        ((let _v : 'tv_alexp_path = 
# 321 "ctl_parser.mly"
                (_1)
# 2401 "ctl_parser.ml"
         in
        _menhir_goto_alexp_path _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)) : 'freshtv324)
    | _ ->
        _menhir_fail ()) : 'freshtv326)) : 'freshtv328)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_PAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STRING _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 75 "ctl_parser.mly"
       (string)
# 2425 "ctl_parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RIGHT_PAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv305 * _menhir_state)) * (
# 75 "ctl_parser.mly"
       (string)
# 2436 "ctl_parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv303 * _menhir_state)) * (
# 75 "ctl_parser.mly"
       (string)
# 2443 "ctl_parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (_3 : (
# 75 "ctl_parser.mly"
       (string)
# 2448 "ctl_parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_alexp_regex = 
# 309 "ctl_parser.mly"
          ( L.(debug Linters Verbose) "\tParsed regular expression '%s'@\n" _3;
            ALVar.Regexp {string=_3; regexp=lazy (Str.regexp _3)} )
# 2457 "ctl_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv301) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_alexp_regex) = _v in
                ((match _menhir_s with
                | MenhirState66 | MenhirState64 | MenhirState46 | MenhirState42 | MenhirState31 ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv295) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = _menhir_s in
                    let (_v : 'tv_alexp_regex) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv293) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = _menhir_s in
                    let ((_1 : 'tv_alexp_regex) : 'tv_alexp_regex) = _v in
                    ((let _v : 'tv_alexp = 
# 316 "ctl_parser.mly"
               (_1)
# 2476 "ctl_parser.ml"
                     in
                    _menhir_goto_alexp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
                | MenhirState155 | MenhirState150 | MenhirState132 | MenhirState125 ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = _menhir_s in
                    let (_v : 'tv_alexp_regex) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
                    let (_menhir_s : _menhir_state) = _menhir_s in
                    let ((_1 : 'tv_alexp_regex) : 'tv_alexp_regex) = _v in
                    ((let _v : 'tv_alexp_path = 
# 322 "ctl_parser.mly"
                (_1)
# 2491 "ctl_parser.ml"
                     in
                    _menhir_goto_alexp_path _menhir_env _menhir_stack _menhir_s _v) : 'freshtv298)) : 'freshtv300)
                | _ ->
                    _menhir_fail ()) : 'freshtv302)) : 'freshtv304)) : 'freshtv306)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv307 * _menhir_state)) * (
# 75 "ctl_parser.mly"
       (string)
# 2503 "ctl_parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)

and _menhir_goto_alexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_alexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv275 * _menhir_state) * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv273 * _menhir_state) * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_alexp)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_transition_label = 
# 248 "ctl_parser.mly"
                        ( Some (CTL.ParameterPos _2) )
# 2536 "ctl_parser.ml"
         in
        _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)) : 'freshtv276)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv279 * _menhir_state) * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv277 * _menhir_state) * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_alexp)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_transition_label = 
# 247 "ctl_parser.mly"
                         ( Some (CTL.ParameterName _2) )
# 2549 "ctl_parser.ml"
         in
        _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)) : 'freshtv280)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv283 * _menhir_state) * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state) * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_alexp)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_transition_label = 
# 244 "ctl_parser.mly"
                     ( Some (CTL.FieldName _2) )
# 2562 "ctl_parser.ml"
         in
        _menhir_goto_transition_label _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)) : 'freshtv284)
    | MenhirState66 | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285 * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | REGEXP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | STRING _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | RIGHT_PAREN ->
                _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv286)
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287 * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_alexp)) = _menhir_stack in
            let _v : 'tv_actual_params = 
# 235 "ctl_parser.mly"
          ( [_1] )
# 2596 "ctl_parser.ml"
             in
            _menhir_goto_actual_params _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv289 * _menhir_state * 'tv_alexp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | _ ->
        _menhir_fail ()

and _menhir_goto_var_list : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_var_list -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_var_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_var_list) : 'tv_var_list) = _v in
        ((let _v : 'tv_formal_params = 
# 112 "ctl_parser.mly"
             ( formal_params := _1; _1)
# 2624 "ctl_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_formal_params) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv261 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv257 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ASSIGNMENT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv253 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AX ->
                    _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | ET ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | EX ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | FALSE ->
                    _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | IDENTIFIER _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
                | LEFT_PAREN ->
                    _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | NOT ->
                    _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | TRUE ->
                    _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | WHEN ->
                    _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv254)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv255 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv259 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_var_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv269 * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_3 : 'tv_var_list) : 'tv_var_list) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_identifier)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_var_list = 
# 103 "ctl_parser.mly"
                              ( ALVar.Var(_1) :: _3 )
# 2698 "ctl_parser.ml"
         in
        _menhir_goto_var_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)) : 'freshtv272)
    | _ ->
        _menhir_fail ()

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv251) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_atomic_formula = 
# 216 "ctl_parser.mly"
         ( L.(debug Linters Verbose) "\tParsed True@\n"; CTL.True )
# 2743 "ctl_parser.ml"
     in
    _menhir_goto_atomic_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AX ->
        _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | ET ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | EX ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FALSE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LEFT_PAREN ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NOT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | TRUE ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | WHEN ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv249) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_atomic_formula = 
# 217 "ctl_parser.mly"
          ( L.(debug Linters Verbose) "\tParsed False@\n"; CTL.False )
# 2815 "ctl_parser.ml"
     in
    _menhir_goto_atomic_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | WITH_TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv245 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANY ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | BODY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | COND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FIELDS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FIELD_NAME ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | INIT_EXPR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PARAMETERS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PARAMETER_NAME ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PARAMETER_POS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | POINTER_TO_DECL ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | PROTOCOL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv246)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run59 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | WITH_TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ANY ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | BODY ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | COND ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | FIELDS ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | FIELD_NAME ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | INIT_EXPR ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PARAMETERS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PARAMETER_NAME ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PARAMETER_POS ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | POINTER_TO_DECL ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PROTOCOL ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv242)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)

and _menhir_goto_global_paths : _menhir_env -> 'ttv_tail -> 'tv_global_paths -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv239 * _menhir_state * 'tv_import_files) * 'tv_global_macros) * 'tv_global_paths) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEFINE_CHECKER ->
        _menhir_run143 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | EOF ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState141
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv240)

and _menhir_run122 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 73 "ctl_parser.mly"
       (string)
# 2957 "ctl_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv237) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 73 "ctl_parser.mly"
       (string)
# 2967 "ctl_parser.ml"
    )) : (
# 73 "ctl_parser.mly"
       (string)
# 2971 "ctl_parser.ml"
    )) = _v in
    ((let _v : 'tv_identifier = 
# 327 "ctl_parser.mly"
               ( is_not_infer_reserved_id _1;
                 L.(debug Linters Verbose) "\tParsed identifier '%s'@\n" _1; _1 )
# 2977 "ctl_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv235) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_identifier) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_identifier)) = _menhir_stack in
        let _v : 'tv_formula_id_def = 
# 223 "ctl_parser.mly"
               ( L.(debug Linters Verbose) "\tParsed formula identifier '%s'@\n" _1;
                  formal_params := [];
                  ALVar.Formula_id _1 )
# 2996 "ctl_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_formula_id_def) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state) * _menhir_state * 'tv_formula_id_def) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGNMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * 'tv_formula_id_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AX ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | ET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | EX ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | FALSE ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState111 _v
            | LEFT_PAREN ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | NOT ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | TRUE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | WHEN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState111
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv148)
        | LEFT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * 'tv_formula_id_def) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_formula_id_def) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)) : 'freshtv156)) : 'freshtv158)) : 'freshtv160)
    | MenhirState17 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv162)
        | RIGHT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv163 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_identifier)) = _menhir_stack in
            let _v : 'tv_var_list = 
# 102 "ctl_parser.mly"
               ( [ALVar.Var _1] )
# 3080 "ctl_parser.ml"
             in
            _menhir_goto_var_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | MenhirState66 | MenhirState64 | MenhirState46 | MenhirState42 | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_identifier)) = _menhir_stack in
        let _v : 'tv_alexp_var = 
# 312 "ctl_parser.mly"
                      ( is_defined_identifier _1; ALVar.Var _1 )
# 3099 "ctl_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_alexp_var) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_alexp_var) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_alexp_var) : 'tv_alexp_var) = _v in
        ((let _v : 'tv_alexp = 
# 317 "ctl_parser.mly"
             ( _1)
# 3116 "ctl_parser.ml"
         in
        _menhir_goto_alexp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)) : 'freshtv172)) : 'freshtv174)) : 'freshtv176)) : 'freshtv178)
    | MenhirState159 | MenhirState111 | MenhirState21 | MenhirState22 | MenhirState24 | MenhirState25 | MenhirState101 | MenhirState99 | MenhirState97 | MenhirState80 | MenhirState75 | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_PAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | REGEXP ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | STRING _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | RIGHT_PAREN ->
                _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv180)
        | AF | AG | AND | AU | AX | EF | EG | EH | EU | EX | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_identifier)) = _menhir_stack in
            let _v : 'tv_formula_id = 
# 229 "ctl_parser.mly"
              ( L.(debug Linters Verbose) "\tParsed formula identifier '%s'@\n" _1;
                 ALVar.Formula_id _1 )
# 3151 "ctl_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_formula_id) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_formula_id) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : 'tv_formula_id) : 'tv_formula_id) = _v in
            ((let _v : 'tv_formula = 
# 263 "ctl_parser.mly"
               ( CTL.Atomic(_1, []) )
# 3168 "ctl_parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)) : 'freshtv184)) : 'freshtv186)) : 'freshtv188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv189 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)
    | MenhirState108 | MenhirState54 | MenhirState85 | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv194)
        | AF | AG | AND | AU | AX | EF | EG | EH | EU | EX | HOLDS_IN_NODE | IMPLIES | OR | RIGHT_PAREN | SEMICOLON | WITH_TRANSITION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_identifier)) = _menhir_stack in
            let _v : 'tv_node_list = 
# 107 "ctl_parser.mly"
               ( is_valid_astnode _1; [ALVar.Const _1] )
# 3203 "ctl_parser.ml"
             in
            _menhir_goto_node_list _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGNMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv205 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFT_BRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv201 * _menhir_state) * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENTIFIER _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
                | REGEXP ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState125
                | STRING _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv202)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv203 * _menhir_state) * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState155 | MenhirState150 | MenhirState132 | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_identifier)) = _menhir_stack in
        let _v : 'tv_alexp_path = 
# 323 "ctl_parser.mly"
               ( ALVar.Var _1 )
# 3264 "ctl_parser.ml"
         in
        _menhir_goto_alexp_path _menhir_env _menhir_stack _menhir_s _v) : 'freshtv212)) : 'freshtv214)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv223 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGNMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFT_BRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv215 * _menhir_state) * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LET ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState146
                | SET ->
                    _menhir_run147 _menhir_env (Obj.magic _menhir_stack) MenhirState146
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState146) : 'freshtv216)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv217 * _menhir_state) * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGNMENT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AX ->
                _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | ET ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | EX ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | FALSE ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
            | LEFT_PAREN ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | NOT ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | STRING _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv227 * _menhir_state) * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState159 in
                let (_v : (
# 75 "ctl_parser.mly"
       (string)
# 3340 "ctl_parser.ml"
                )) = _v in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv225 * _menhir_state) * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
                let (_ : _menhir_state) = _menhir_s in
                let ((_4 : (
# 75 "ctl_parser.mly"
       (string)
# 3349 "ctl_parser.ml"
                )) : (
# 75 "ctl_parser.mly"
       (string)
# 3353 "ctl_parser.ml"
                )) = _v in
                ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_identifier)) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_clause = 
# 190 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "\tParsed SET clause@\n";
      let alvar = match _2 with
      | "message" -> ALVar.Message
      | "suggestion" -> ALVar.Suggestion
      | "severity" -> ALVar.Severity
      | "mode" -> ALVar.Mode
      | "doc_url" -> ALVar.Doc_url
      | "name" -> ALVar.Name
      | _ -> L.(die ExternalError)
              "string '%s' cannot be set in a SET clause. \
               Use either of: \
               'doc_url', 'message', 'mode', 'name', 'severity' or 'suggestion'" _2 in
      CTL.CDesc (alvar, _4) )
# 3373 "ctl_parser.ml"
                 in
                _menhir_goto_clause _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
            | TRUE ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | WHEN ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState159
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv230)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * 'tv_identifier) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | _ ->
        _menhir_fail ()) : 'freshtv236)) : 'freshtv238)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_global_macros : _menhir_env -> 'ttv_tail -> 'tv_global_macros -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv145 * _menhir_state * 'tv_import_files) * 'tv_global_macros) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GLOBAL_PATHS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LEFT_BRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LET ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState121
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv137) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv138)) : 'freshtv140)
    | DEFINE_CHECKER | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141) = Obj.magic _menhir_stack in
        ((let _v : 'tv_global_paths = 
# 142 "ctl_parser.mly"
    ( [] )
# 3437 "ctl_parser.ml"
         in
        _menhir_goto_global_paths _menhir_env _menhir_stack _v) : 'freshtv142)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_import_files) * 'tv_global_macros) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_goto_import_files : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_import_files -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv121 * _menhir_state)) * 'tv_file_identifier)) * _menhir_state * 'tv_import_files) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv119 * _menhir_state)) * 'tv_file_identifier)) * _menhir_state * 'tv_import_files) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (_3 : 'tv_file_identifier)), _, (_5 : 'tv_import_files)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_import_files = 
# 123 "ctl_parser.mly"
    ( L.(debug Linters Verbose) "Parsed import clauses...@\n@\n"; _3 :: _5 )
# 3477 "ctl_parser.ml"
         in
        _menhir_goto_import_files _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)) : 'freshtv122)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_import_files) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | GLOBAL_MACROS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv127) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LEFT_BRACE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv123) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LET ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9) : 'freshtv124)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv126)) : 'freshtv128)
        | DEFINE_CHECKER | EOF | GLOBAL_PATHS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv129) = Obj.magic _menhir_stack in
            ((let _v : 'tv_global_macros = 
# 127 "ctl_parser.mly"
    ( [] )
# 3516 "ctl_parser.ml"
             in
            _menhir_goto_global_macros _menhir_env _menhir_stack _v) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_import_files) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState170 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_checker)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * 'tv_clause)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv25 * _menhir_state) * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState155 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv27 * _menhir_state) * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv29 * _menhir_state) * _menhir_state))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState146 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv33 * _menhir_state) * _menhir_state * 'tv_identifier))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state * 'tv_import_files) * 'tv_global_macros) * 'tv_global_paths) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_global_path_declaration)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_alexp_path)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv43 * _menhir_state) * _menhir_state * 'tv_identifier))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv48)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * 'tv_let_clause)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv53 * _menhir_state) * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state * 'tv_formula))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv63 * _menhir_state * 'tv_formula))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state * 'tv_formula))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_alexp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv79 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv84)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * _menhir_state * 'tv_node_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state)) * _menhir_state * 'tv_transition_label) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv105 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) * _menhir_state * 'tv_formal_params))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * 'tv_identifier)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state) * _menhir_state * 'tv_formula_id_def)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv114)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv115 * _menhir_state)) * 'tv_file_identifier)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv118)

and _menhir_reduce64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_import_files = 
# 121 "ctl_parser.mly"
    ( [] )
# 3779 "ctl_parser.ml"
     in
    _menhir_goto_import_files _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LESS_THAN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FILE_IDENTIFIER _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
            let (_v : (
# 74 "ctl_parser.mly"
       (string)
# 3801 "ctl_parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
            let ((_1 : (
# 74 "ctl_parser.mly"
       (string)
# 3809 "ctl_parser.ml"
            )) : (
# 74 "ctl_parser.mly"
       (string)
# 3813 "ctl_parser.ml"
            )) = _v in
            ((let _v : 'tv_file_identifier = 
# 332 "ctl_parser.mly"
                    ( is_not_infer_reserved_id _1;
                      L.(debug Linters Verbose) "\tParsed file identifier '%s'@\n" _1; _1 )
# 3819 "ctl_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv9) = _menhir_stack in
            let (_v : 'tv_file_identifier) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv7 * _menhir_state)) * 'tv_file_identifier) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | GREATER_THAN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv3 * _menhir_state)) * 'tv_file_identifier) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | HASHIMPORT ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | DEFINE_CHECKER | EOF | GLOBAL_MACROS | GLOBAL_PATHS ->
                    _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState5
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv4)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv5 * _menhir_state)) * 'tv_file_identifier) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)) : 'freshtv8)) : 'freshtv10)) : 'freshtv12)) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv15 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and al_file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 98 "ctl_parser.mly"
       (CTL.al_file)
# 3881 "ctl_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | HASHIMPORT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEFINE_CHECKER | EOF | GLOBAL_MACROS | GLOBAL_PATHS ->
        _menhir_reduce64 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 335 "ctl_parser.mly"
  

# 3912 "ctl_parser.ml"

# 219 "/home/weimer/.opam/4.05.0/lib/menhir/standard.mly"
  


# 3918 "ctl_parser.ml"
