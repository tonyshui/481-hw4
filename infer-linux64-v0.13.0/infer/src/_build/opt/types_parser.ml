
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WCHAR_T
    | VOID
    | UNSIGNED
    | UNDUNDWCHAR_T
    | UNDUNDFP16
    | STRING of (
# 68 "types_parser.mly"
       (string)
# 16 "types_parser.ml"
  )
    | STAR
    | SIGNED
    | SHORT
    | RIGHT_PAREN
    | RIGHT_ANGLE
    | REGEXP
    | REARG of (
# 69 "types_parser.mly"
       (string)
# 27 "types_parser.ml"
  )
    | OBJCSEL
    | OBJCID
    | OBJCCLASS
    | NULLPTR
    | LONG
    | LEFT_PAREN
    | LEFT_ANGLE
    | INT128
    | INT
    | IDENTIFIER of (
# 67 "types_parser.mly"
       (string)
# 41 "types_parser.ml"
  )
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
  | MenhirState35
  | MenhirState30
  | MenhirState0

# 10 "types_parser.mly"
  
  open! IStd

  open Ctl_parser_types

  module L = Logging

(* See StringRef BuiltinType::getName in
  https://clang.llvm.org/doxygen/Type_8cpp_source.html *)
  let tokens_to_abs_types l =
    match l with
    | [t] -> BuiltIn t
    | [Int; Char_U] -> BuiltIn SChar
    | [Long; Long] -> BuiltIn LongLong
    | [UInt; Char_U] -> BuiltIn UChar
    | [UInt; Short] -> BuiltIn UShort
    | [UInt; Int] -> BuiltIn UInt
    | [UInt; Long] -> BuiltIn ULong
    | [UInt; Long; Long] -> BuiltIn ULongLong
    | [Long; Double] -> BuiltIn LongDouble
    | [UInt; Int128] -> BuiltIn UInt128
    | _ -> raise (CTLExceptions.ALParserInvariantViolationException
      ("ERROR: syntax error on types"))



# 100 "types_parser.ml"

let rec _menhir_goto_ptr_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ptr_type_spec -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv182 * _menhir_state * 'tv_ptr_type_spec) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv176 * _menhir_state * 'tv_ptr_type_spec) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv174 * _menhir_state * 'tv_ptr_type_spec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_ptr_type_spec)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ptr_type_spec = 
# 91 "types_parser.mly"
                     ( Pointer _1 )
# 121 "types_parser.ml"
         in
        _menhir_goto_ptr_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv175)) : 'freshtv177)
    | EOF | RIGHT_ANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv178 * _menhir_state * 'tv_ptr_type_spec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_ptr_type_spec)) = _menhir_stack in
        let _v : 'tv_ctype_specifier_seq = 
# 84 "types_parser.mly"
                 ( _1 )
# 131 "types_parser.ml"
         in
        _menhir_goto_ctype_specifier_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv179)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv180 * _menhir_state * 'tv_ptr_type_spec) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv181)) : 'freshtv183)

and _menhir_goto_ctype_specifier_seq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ctype_specifier_seq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state * 'tv_type_name_or_objid)) * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RIGHT_ANGLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state * 'tv_type_name_or_objid)) * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv151 * _menhir_state * 'tv_type_name_or_objid)) * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (_1 : 'tv_type_name_or_objid)), _, (_3 : 'tv_ctype_specifier_seq)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_protocol_or_generics_type_spec = 
# 101 "types_parser.mly"
                                                                 (
   let tname = _1 in
    L.(debug Linters Verbose) "\tProtocol or Generics parsed: `%s<%s>`@\n"
    (Ctl_parser_types.abs_ctype_to_string tname)
    (Ctl_parser_types.abs_ctype_to_string _3);
    ObjCGenProt (tname, _3)
  )
# 170 "types_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv149) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_protocol_or_generics_type_spec) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_protocol_or_generics_type_spec) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | STAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_protocol_or_generics_type_spec) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_protocol_or_generics_type_spec) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (_1 : 'tv_protocol_or_generics_type_spec)) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_ptr_type_spec = 
# 93 "types_parser.mly"
                                      ( Pointer _1 )
# 193 "types_parser.ml"
                 in
                _menhir_goto_ptr_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)) : 'freshtv142)
            | EOF | RIGHT_ANGLE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_protocol_or_generics_type_spec) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (_1 : 'tv_protocol_or_generics_type_spec)) = _menhir_stack in
                let _v : 'tv_ctype_specifier_seq = 
# 82 "types_parser.mly"
                                 ( _1 )
# 203 "types_parser.ml"
                 in
                _menhir_goto_ctype_specifier_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv144)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_protocol_or_generics_type_spec) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)) : 'freshtv150)) : 'freshtv152)) : 'freshtv154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv155 * _menhir_state * 'tv_type_name_or_objid)) * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_ctype_specifier_seq)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 71 "types_parser.mly"
       (Ctl_parser_types.abs_ctype)
# 236 "types_parser.ml"
            ) = 
# 75 "types_parser.mly"
                           (
   L.(debug Linters Verbose) "\tType effectively parsed: `%s`@\n"
   (Ctl_parser_types.abs_ctype_to_string _1);
   _1 )
# 243 "types_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv163) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 71 "types_parser.mly"
       (Ctl_parser_types.abs_ctype)
# 251 "types_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 71 "types_parser.mly"
       (Ctl_parser_types.abs_ctype)
# 259 "types_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 71 "types_parser.mly"
       (Ctl_parser_types.abs_ctype)
# 267 "types_parser.ml"
            )) : (
# 71 "types_parser.mly"
       (Ctl_parser_types.abs_ctype)
# 271 "types_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv160)) : 'freshtv162)) : 'freshtv164)) : 'freshtv166)) : 'freshtv168)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_ctype_specifier_seq) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)
    | _ ->
        let (() : unit) = () in
        ((Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
        assert false) : 'freshtv173)

and _menhir_goto_trailing_type_specifier_seq : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_trailing_type_specifier_seq -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState0 | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_trailing_type_specifier_seq) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_trailing_type_specifier_seq) : 'tv_trailing_type_specifier_seq) = _v in
        ((let _v : 'tv_noptr_type_spec = 
# 124 "types_parser.mly"
    ( let atyp = tokens_to_abs_types _1 in
      atyp
     )
# 303 "types_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_noptr_type_spec) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv127 * _menhir_state * 'tv_noptr_type_spec) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | STAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121 * _menhir_state * 'tv_noptr_type_spec) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119 * _menhir_state * 'tv_noptr_type_spec) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_noptr_type_spec)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_ptr_type_spec = 
# 90 "types_parser.mly"
                       ( Pointer _1 )
# 326 "types_parser.ml"
             in
            _menhir_goto_ptr_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)) : 'freshtv122)
        | EOF | RIGHT_ANGLE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv123 * _menhir_state * 'tv_noptr_type_spec) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (_1 : 'tv_noptr_type_spec)) = _menhir_stack in
            let _v : 'tv_ctype_specifier_seq = 
# 83 "types_parser.mly"
                   ( _1 )
# 336 "types_parser.ml"
             in
            _menhir_goto_ctype_specifier_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_noptr_type_spec) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)) : 'freshtv130)) : 'freshtv132)) : 'freshtv134)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_trailing_type_specifier) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_trailing_type_specifier_seq) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_trailing_type_specifier) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((_2 : 'tv_trailing_type_specifier_seq) : 'tv_trailing_type_specifier_seq) = _v in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_trailing_type_specifier)) = _menhir_stack in
        let _v : 'tv_trailing_type_specifier_seq = 
# 135 "types_parser.mly"
                                                        ( _1 :: _2 )
# 359 "types_parser.ml"
         in
        _menhir_goto_trailing_type_specifier_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)

and _menhir_reduce36 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 158 "types_parser.mly"
           ( ObjCId )
# 370 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_type_name_or_objid : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_type_name_or_objid -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv117 * _menhir_state * 'tv_type_name_or_objid) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_ANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_type_name_or_objid) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | CHAR ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | CHAR16_T ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | CHAR32_T ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | DOUBLE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FLOAT ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | FLOAT128 ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | HALF ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | IDENTIFIER _v ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | INT ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | INT128 ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | LONG ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | NULLPTR ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OBJCCLASS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OBJCID ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | OBJCSEL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | REGEXP ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SHORT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | SIGNED ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | STRING _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
        | UNDUNDFP16 ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | UNDUNDWCHAR_T ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | UNSIGNED ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | VOID ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | WCHAR_T ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv114)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state * 'tv_type_name_or_objid) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)) : 'freshtv118)

and _menhir_goto_alexp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_alexp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv111) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_alexp) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv109) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_alexp) : 'tv_alexp) = _v in
    ((let _v : 'tv_type_name = 
# 117 "types_parser.mly"
          (
    L.(debug Linters Verbose) "\tType_name parsed: `%s`@\n"
    (ALVar.alexp_to_string _1);
    TypeName _1 )
# 466 "types_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv107) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_type_name) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv105 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AMPERSAND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_type_name)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_reference_type_spec = 
# 97 "types_parser.mly"
                      ( Reference _1 )
# 489 "types_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_reference_type_spec) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_reference_type_spec) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_reference_type_spec) : 'tv_reference_type_spec) = _v in
        ((let _v : 'tv_ctype_specifier_seq = 
# 85 "types_parser.mly"
                      ( _1 )
# 506 "types_parser.ml"
         in
        _menhir_goto_ctype_specifier_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv86)) : 'freshtv88)) : 'freshtv90)) : 'freshtv92)) : 'freshtv94)
    | STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_type_name)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_ptr_type_spec = 
# 92 "types_parser.mly"
                 ( Pointer _1 )
# 520 "types_parser.ml"
         in
        _menhir_goto_ptr_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)) : 'freshtv98)
    | LEFT_ANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_type_name)) = _menhir_stack in
        let _v : 'tv_type_name_or_objid = 
# 113 "types_parser.mly"
             ( _1 )
# 530 "types_parser.ml"
         in
        _menhir_goto_type_name_or_objid _menhir_env _menhir_stack _menhir_s _v) : 'freshtv100)
    | EOF | RIGHT_ANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_type_name)) = _menhir_stack in
        let _v : 'tv_ctype_specifier_seq = 
# 86 "types_parser.mly"
            ( _1 )
# 540 "types_parser.ml"
         in
        _menhir_goto_ctype_specifier_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv102)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_type_name) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)) : 'freshtv106)) : 'freshtv108)) : 'freshtv110)) : 'freshtv112)

and _menhir_goto_simple_type_specifier : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple_type_specifier -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv83) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_simple_type_specifier) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : 'tv_simple_type_specifier) : 'tv_simple_type_specifier) = _v in
    ((let _v : 'tv_trailing_type_specifier = 
# 130 "types_parser.mly"
                         ( _1 )
# 564 "types_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv79) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_trailing_type_specifier) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_trailing_type_specifier) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | CHAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | CHAR16_T ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | CHAR32_T ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | DOUBLE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FLOAT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | FLOAT128 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | HALF ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INT ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INT128 ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LONG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | NULLPTR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | OBJCCLASS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | OBJCID ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState35 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv74)
    | OBJCSEL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SHORT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | SIGNED ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | UNDUNDFP16 ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | UNDUNDWCHAR_T ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | UNSIGNED ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | VOID ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | WCHAR_T ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | EOF | RIGHT_ANGLE | STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_trailing_type_specifier) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (_1 : 'tv_trailing_type_specifier)) = _menhir_stack in
        let _v : 'tv_trailing_type_specifier_seq = 
# 134 "types_parser.mly"
                            ( [_1] )
# 632 "types_parser.ml"
         in
        _menhir_goto_trailing_type_specifier_seq _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv78)) : 'freshtv80)) : 'freshtv82)) : 'freshtv84)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_trailing_type_specifier) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_type_name_or_objid)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv72)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 142 "types_parser.mly"
            ( WChar_U )
# 668 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv63) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 150 "types_parser.mly"
         ( Void )
# 682 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv64)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 152 "types_parser.mly"
             ( UInt )
# 696 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv62)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv59) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 143 "types_parser.mly"
                  ( WChar_U )
# 710 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv60)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv57) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 156 "types_parser.mly"
               ( Half )
# 724 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv58)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 68 "types_parser.mly"
       (string)
# 731 "types_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv55) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 68 "types_parser.mly"
       (string)
# 741 "types_parser.ml"
    )) : (
# 68 "types_parser.mly"
       (string)
# 745 "types_parser.ml"
    )) = _v in
    ((let _v : 'tv_alexp = 
# 164 "types_parser.mly"
            ( L.(debug Linters Verbose) "\tParsed string constant '%s' @\n" _1;
              ALVar.Const _1 )
# 751 "types_parser.ml"
     in
    _menhir_goto_alexp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv56)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv53) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 151 "types_parser.mly"
           ( Int )
# 765 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv54)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 145 "types_parser.mly"
          ( Short )
# 779 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv52)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_PAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | REARG _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv43 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 69 "types_parser.mly"
       (string)
# 801 "types_parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RIGHT_PAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv39 * _menhir_state)) * (
# 69 "types_parser.mly"
       (string)
# 812 "types_parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv37 * _menhir_state)) * (
# 69 "types_parser.mly"
       (string)
# 819 "types_parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), (_3 : (
# 69 "types_parser.mly"
       (string)
# 824 "types_parser.ml"
                ))) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_alexp = 
# 167 "types_parser.mly"
            ( L.(debug Linters Verbose) "\tParsed regular expression '%s' @\n" _3;
              ALVar.Regexp {string=_3; regexp=lazy (Str.regexp _3)} )
# 833 "types_parser.ml"
                 in
                _menhir_goto_alexp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)) : 'freshtv40)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv41 * _menhir_state)) * (
# 69 "types_parser.mly"
       (string)
# 843 "types_parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)) : 'freshtv44)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv45 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 160 "types_parser.mly"
            ( ObjCSel )
# 872 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LEFT_ANGLE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_type_name_or_objid = 
# 112 "types_parser.mly"
          ( BuiltIn ObjCId)
# 890 "types_parser.ml"
         in
        _menhir_goto_type_name_or_objid _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)
    | BOOL | CHAR | CHAR16_T | CHAR32_T | DOUBLE | EOF | FLOAT | FLOAT128 | HALF | INT | INT128 | LONG | NULLPTR | OBJCCLASS | OBJCID | OBJCSEL | RIGHT_ANGLE | SHORT | SIGNED | STAR | UNDUNDFP16 | UNDUNDWCHAR_T | UNSIGNED | VOID | WCHAR_T ->
        _menhir_reduce36 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 159 "types_parser.mly"
              ( ObjCClass )
# 913 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 157 "types_parser.mly"
            ( NullPtr )
# 927 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 147 "types_parser.mly"
         ( Long )
# 941 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 153 "types_parser.mly"
           ( Int128 )
# 955 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv24)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 146 "types_parser.mly"
        ( Int )
# 969 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 67 "types_parser.mly"
       (string)
# 976 "types_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 67 "types_parser.mly"
       (string)
# 986 "types_parser.ml"
    )) : (
# 67 "types_parser.mly"
       (string)
# 990 "types_parser.ml"
    )) = _v in
    ((let _v : 'tv_alexp = 
# 169 "types_parser.mly"
                ( ALVar.Var _1 )
# 995 "types_parser.ml"
     in
    _menhir_goto_alexp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 155 "types_parser.mly"
         ( Half )
# 1009 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 154 "types_parser.mly"
             ( Float128 )
# 1023 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 148 "types_parser.mly"
          ( Float )
# 1037 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 149 "types_parser.mly"
           ( Double )
# 1051 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv12)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 141 "types_parser.mly"
             ( Char32 )
# 1065 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv10)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 140 "types_parser.mly"
             ( Char16 )
# 1079 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 139 "types_parser.mly"
         ( Char_U )
# 1093 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_simple_type_specifier = 
# 144 "types_parser.mly"
         ( Bool )
# 1107 "types_parser.ml"
     in
    _menhir_goto_simple_type_specifier _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

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

and abs_ctype : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 71 "types_parser.mly"
       (Ctl_parser_types.abs_ctype)
# 1126 "types_parser.ml"
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
    | BOOL ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CHAR ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CHAR16_T ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | CHAR32_T ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DOUBLE ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FLOAT ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FLOAT128 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | HALF ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENTIFIER _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | INT ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT128 ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LONG ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NULLPTR ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | OBJCCLASS ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | OBJCID ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | OBJCSEL ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | REGEXP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SHORT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SIGNED ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | STRING _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | UNDUNDFP16 ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | UNDUNDWCHAR_T ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | UNSIGNED ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | VOID ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | WCHAR_T ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 172 "types_parser.mly"
  

# 1203 "types_parser.ml"

# 219 "/home/weimer/.opam/4.05.0/lib/menhir/standard.mly"
  


# 1209 "types_parser.ml"
