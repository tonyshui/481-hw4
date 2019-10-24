(* Auto-generated from "clang_ast.atd" *)


type access_specifier = Clang_ast_t.access_specifier

type binary_operator_kind = Clang_ast_t.binary_operator_kind

type binary_operator_info = Clang_ast_t.binary_operator_info = {
  boi_kind (*atd kind *): binary_operator_kind
}

type builtin_type_kind = Clang_ast_t.builtin_type_kind

type cast_kind = Clang_ast_t.cast_kind

type cxx_base_specifier = Clang_ast_t.cxx_base_specifier = {
  xbs_name (*atd name *): string;
  xbs_virtual (*atd virtual *): bool
}

type cast_expr_info = Clang_ast_t.cast_expr_info = {
  cei_cast_kind (*atd cast_kind *): cast_kind;
  cei_base_path (*atd base_path *): cxx_base_specifier list
}

type cxx_noexcept_expr_info = Clang_ast_t.cxx_noexcept_expr_info = {
  xnee_value (*atd value *): bool
}

type decl_context_info = Clang_ast_t.decl_context_info = {
  dci_has_external_lexical_storage (*atd has_external_lexical_storage *):
    bool;
  dci_has_external_visible_storage (*atd has_external_visible_storage *):
    bool
}

type decl_kind = Clang_ast_t.decl_kind

type declaration_name_kind = Clang_ast_t.declaration_name_kind

type declaration_name = Clang_ast_t.declaration_name = {
  dn_kind (*atd kind *): declaration_name_kind;
  dn_name (*atd name *): string
}

type enum_decl_scope = Clang_ast_t.enum_decl_scope

type enum_decl_info = Clang_ast_t.enum_decl_info = {
  edi_scope (*atd scope *): enum_decl_scope option;
  edi_is_module_private (*atd is_module_private *): bool
}

type input_kind = Clang_ast_t.input_kind

type integer_literal_info = Clang_ast_t.integer_literal_info = {
  ili_is_signed (*atd is_signed *): bool;
  ili_bitwidth (*atd bitwidth *): int;
  ili_value (*atd value *): string
}

type lambda_capture_kind = Clang_ast_t.lambda_capture_kind

type named_decl_info = Clang_ast_t.named_decl_info = {
  ni_name (*atd name *): string;
  ni_qual_name (*atd qual_name *): string list
}

type obj_c_access_control = Clang_ast_t.obj_c_access_control

type obj_c_availability_check_expr_info =
  Clang_ast_t.obj_c_availability_check_expr_info = {
  oacei_version (*atd version *): string option
}

type obj_c_ivar_decl_info = Clang_ast_t.obj_c_ivar_decl_info = {
  ovdi_is_synthesize (*atd is_synthesize *): bool;
  ovdi_access_control (*atd access_control *): obj_c_access_control
}

type obj_c_property_control = Clang_ast_t.obj_c_property_control

type obj_c_subscript_kind = Clang_ast_t.obj_c_subscript_kind

type objc_lifetime_attr = Clang_ast_t.objc_lifetime_attr

type object_kind = Clang_ast_t.object_kind

type pointer = Clang_ast_t.pointer

type addr_label_expr_info = Clang_ast_t.addr_label_expr_info = {
  alei_label (*atd label *): string;
  alei_pointer (*atd pointer *): pointer
}

type cxx_new_expr_info = Clang_ast_t.cxx_new_expr_info = {
  xnei_is_array (*atd is_array *): bool;
  xnei_array_size_expr (*atd array_size_expr *): pointer option;
  xnei_initializer_expr (*atd initializer_expr *): pointer option
}

type cxx_temporary = Clang_ast_t.cxx_temporary

type cxx_bind_temporary_expr_info =
  Clang_ast_t.cxx_bind_temporary_expr_info = {
  xbtei_cxx_temporary (*atd cxx_temporary *): cxx_temporary
}

type goto_stmt_info = Clang_ast_t.goto_stmt_info = {
  gsi_label (*atd label *): string;
  gsi_pointer (*atd pointer *): pointer
}

type predefined_expr_type = Clang_ast_t.predefined_expr_type

type property_attribute = Clang_ast_t.property_attribute

type property_implementation = Clang_ast_t.property_implementation

type record_decl_info = Clang_ast_t.record_decl_info = {
  rdi_definition_ptr (*atd definition_ptr *): pointer;
  rdi_is_module_private (*atd is_module_private *): bool;
  rdi_is_complete_definition (*atd is_complete_definition *): bool;
  rdi_is_dependent_type (*atd is_dependent_type *): bool
}

type selector = Clang_ast_t.selector

type obj_c_method_ref_info = Clang_ast_t.obj_c_method_ref_info = {
  mri_getter (*atd getter *): selector option;
  mri_setter (*atd setter *): selector option
}

type obj_c_subscript_ref_expr_info =
  Clang_ast_t.obj_c_subscript_ref_expr_info = {
  osrei_kind (*atd kind *): obj_c_subscript_kind;
  osrei_getter (*atd getter *): selector option;
  osrei_setter (*atd setter *): selector option
}

type objc_boxed_expr_info = Clang_ast_t.objc_boxed_expr_info = {
  obei_boxing_method (*atd boxing_method *): selector option
}

type source_file = Clang_ast_t.source_file

type source_location = Clang_ast_t.source_location = {
  mutable sl_file (*atd file *): source_file option;
  mutable sl_line (*atd line *): int option;
  mutable sl_column (*atd column *): int option
}

type source_range = Clang_ast_t.source_range

type attribute_info = Clang_ast_t.attribute_info = {
  ai_pointer (*atd pointer *): pointer;
  ai_source_range (*atd source_range *): source_range;
  ai_parameters (*atd parameters *): string list;
  ai_is_inherited (*atd is_inherited *): bool;
  ai_is_implicit (*atd is_implicit *): bool
}

type attribute = Clang_ast_t.attribute = 
    FallThroughAttr of attribute_info
  | SuppressAttr of attribute_info
  | SwiftContextAttr of attribute_info
  | SwiftErrorResultAttr of attribute_info
  | SwiftIndirectResultAttr of attribute_info
  | AnnotateAttr of attribute_info
  | CFConsumedAttr of attribute_info
  | CarriesDependencyAttr of attribute_info
  | NSConsumedAttr of attribute_info
  | NonNullAttr of attribute_info
  | PassObjectSizeAttr of attribute_info
  | AMDGPUFlatWorkGroupSizeAttr of attribute_info
  | AMDGPUNumSGPRAttr of attribute_info
  | AMDGPUNumVGPRAttr of attribute_info
  | AMDGPUWavesPerEUAttr of attribute_info
  | ARMInterruptAttr of attribute_info
  | AVRInterruptAttr of attribute_info
  | AVRSignalAttr of attribute_info
  | AcquireCapabilityAttr of attribute_info
  | AcquiredAfterAttr of attribute_info
  | AcquiredBeforeAttr of attribute_info
  | AlignMac68kAttr of attribute_info
  | AlignedAttr of attribute_info
  | AllocAlignAttr of attribute_info
  | AllocSizeAttr of attribute_info
  | AlwaysInlineAttr of attribute_info
  | AnalyzerNoReturnAttr of attribute_info
  | AnyX86InterruptAttr of attribute_info
  | AnyX86NoCallerSavedRegistersAttr of attribute_info
  | ArcWeakrefUnavailableAttr of attribute_info
  | ArgumentWithTypeTagAttr of attribute_info
  | AsmLabelAttr of attribute_info
  | AssertCapabilityAttr of attribute_info
  | AssertExclusiveLockAttr of attribute_info
  | AssertSharedLockAttr of attribute_info
  | AssumeAlignedAttr of attribute_info
  | AvailabilityAttr of attribute_info
  | BlocksAttr of attribute_info
  | C11NoReturnAttr of attribute_info
  | CDeclAttr of attribute_info
  | CFAuditedTransferAttr of attribute_info
  | CFReturnsNotRetainedAttr of attribute_info
  | CFReturnsRetainedAttr of attribute_info
  | CFUnknownTransferAttr of attribute_info
  | CUDAConstantAttr of attribute_info
  | CUDADeviceAttr of attribute_info
  | CUDAGlobalAttr of attribute_info
  | CUDAHostAttr of attribute_info
  | CUDAInvalidTargetAttr of attribute_info
  | CUDALaunchBoundsAttr of attribute_info
  | CUDASharedAttr of attribute_info
  | CXX11NoReturnAttr of attribute_info
  | CallableWhenAttr of attribute_info
  | CapabilityAttr of attribute_info
  | CapturedRecordAttr of attribute_info
  | CleanupAttr of attribute_info
  | ColdAttr of attribute_info
  | CommonAttr of attribute_info
  | ConstAttr of attribute_info
  | ConstructorAttr of attribute_info
  | ConsumableAttr of attribute_info
  | ConsumableAutoCastAttr of attribute_info
  | ConsumableSetOnReadAttr of attribute_info
  | ConvergentAttr of attribute_info
  | DLLExportAttr of attribute_info
  | DLLImportAttr of attribute_info
  | DeprecatedAttr of attribute_info
  | DestructorAttr of attribute_info
  | DiagnoseIfAttr of attribute_info
  | DisableTailCallsAttr of attribute_info
  | EmptyBasesAttr of attribute_info
  | EnableIfAttr of attribute_info
  | EnumExtensibilityAttr of attribute_info
  | ExclusiveTrylockFunctionAttr of attribute_info
  | ExternalSourceSymbolAttr of attribute_info
  | FastCallAttr of attribute_info
  | FinalAttr of attribute_info
  | FlagEnumAttr of attribute_info
  | FlattenAttr of attribute_info
  | FormatAttr of attribute_info
  | FormatArgAttr of attribute_info
  | GNUInlineAttr of attribute_info
  | GuardedByAttr of attribute_info
  | GuardedVarAttr of attribute_info
  | HotAttr of attribute_info
  | IBActionAttr of attribute_info
  | IBOutletAttr of attribute_info
  | IBOutletCollectionAttr of attribute_info
  | InitPriorityAttr of attribute_info
  | IntelOclBiccAttr of attribute_info
  | InternalLinkageAttr of attribute_info
  | LTOVisibilityPublicAttr of attribute_info
  | LayoutVersionAttr of attribute_info
  | LockReturnedAttr of attribute_info
  | LocksExcludedAttr of attribute_info
  | MSABIAttr of attribute_info
  | MSInheritanceAttr of attribute_info
  | MSNoVTableAttr of attribute_info
  | MSP430InterruptAttr of attribute_info
  | MSStructAttr of attribute_info
  | MSVtorDispAttr of attribute_info
  | MaxFieldAlignmentAttr of attribute_info
  | MayAliasAttr of attribute_info
  | MicroMipsAttr of attribute_info
  | MinSizeAttr of attribute_info
  | Mips16Attr of attribute_info
  | MipsInterruptAttr of attribute_info
  | NSConsumesSelfAttr of attribute_info
  | NSReturnsAutoreleasedAttr of attribute_info
  | NSReturnsNotRetainedAttr of attribute_info
  | NSReturnsRetainedAttr of attribute_info
  | NakedAttr of attribute_info
  | NoAliasAttr of attribute_info
  | NoCommonAttr of attribute_info
  | NoDebugAttr of attribute_info
  | NoDuplicateAttr of attribute_info
  | NoInlineAttr of attribute_info
  | NoInstrumentFunctionAttr of attribute_info
  | NoMicroMipsAttr of attribute_info
  | NoMips16Attr of attribute_info
  | NoReturnAttr of attribute_info
  | NoSanitizeAttr of attribute_info
  | NoSplitStackAttr of attribute_info
  | NoThreadSafetyAnalysisAttr of attribute_info
  | NoThrowAttr of attribute_info
  | NotTailCalledAttr of attribute_info
  | OMPCaptureNoInitAttr of attribute_info
  | OMPThreadPrivateDeclAttr of attribute_info
  | ObjCBridgeAttr of attribute_info
  | ObjCBridgeMutableAttr of attribute_info
  | ObjCBridgeRelatedAttr of attribute_info
  | ObjCExceptionAttr of attribute_info
  | ObjCExplicitProtocolImplAttr of attribute_info
  | ObjCIndependentClassAttr of attribute_info
  | ObjCMethodFamilyAttr of attribute_info
  | ObjCNSObjectAttr of attribute_info
  | ObjCPreciseLifetimeAttr of attribute_info
  | ObjCRequiresPropertyDefsAttr of attribute_info
  | ObjCRequiresSuperAttr of attribute_info
  | ObjCReturnsInnerPointerAttr of attribute_info
  | ObjCRootClassAttr of attribute_info
  | ObjCSubclassingRestrictedAttr of attribute_info
  | OpenCLIntelReqdSubGroupSizeAttr of attribute_info
  | OpenCLKernelAttr of attribute_info
  | OpenCLUnrollHintAttr of attribute_info
  | OptimizeNoneAttr of attribute_info
  | OverrideAttr of attribute_info
  | OwnershipAttr of attribute_info
  | PackedAttr of attribute_info
  | ParamTypestateAttr of attribute_info
  | PascalAttr of attribute_info
  | PcsAttr of attribute_info
  | PragmaClangBSSSectionAttr of attribute_info
  | PragmaClangDataSectionAttr of attribute_info
  | PragmaClangRodataSectionAttr of attribute_info
  | PragmaClangTextSectionAttr of attribute_info
  | PreserveAllAttr of attribute_info
  | PreserveMostAttr of attribute_info
  | PtGuardedByAttr of attribute_info
  | PtGuardedVarAttr of attribute_info
  | PureAttr of attribute_info
  | RegCallAttr of attribute_info
  | ReleaseCapabilityAttr of attribute_info
  | ReqdWorkGroupSizeAttr of attribute_info
  | RequireConstantInitAttr of attribute_info
  | RequiresCapabilityAttr of attribute_info
  | RestrictAttr of attribute_info
  | ReturnTypestateAttr of attribute_info
  | ReturnsNonNullAttr of attribute_info
  | ReturnsTwiceAttr of attribute_info
  | ScopedLockableAttr of attribute_info
  | SectionAttr of attribute_info
  | SelectAnyAttr of attribute_info
  | SentinelAttr of attribute_info
  | SetTypestateAttr of attribute_info
  | SharedTrylockFunctionAttr of attribute_info
  | StdCallAttr of attribute_info
  | SwiftCallAttr of attribute_info
  | SysVABIAttr of attribute_info
  | TLSModelAttr of attribute_info
  | TargetAttr of attribute_info
  | TestTypestateAttr of attribute_info
  | ThisCallAttr of attribute_info
  | TransparentUnionAttr of attribute_info
  | TryAcquireCapabilityAttr of attribute_info
  | TypeTagForDatatypeAttr of attribute_info
  | TypeVisibilityAttr of attribute_info
  | UnavailableAttr of attribute_info
  | UnusedAttr of attribute_info
  | UsedAttr of attribute_info
  | UuidAttr of attribute_info
  | VecReturnAttr of attribute_info
  | VecTypeHintAttr of attribute_info
  | VectorCallAttr of attribute_info
  | VisibilityAttr of attribute_info
  | WarnUnusedAttr of attribute_info
  | WarnUnusedResultAttr of attribute_info
  | WeakAttr of attribute_info
  | WeakImportAttr of attribute_info
  | WeakRefAttr of attribute_info
  | WorkGroupSizeHintAttr of attribute_info
  | X86ForceAlignArgPointerAttr of attribute_info
  | XRayInstrumentAttr of attribute_info
  | XRayLogArgsAttr of attribute_info
  | AbiTagAttr of attribute_info
  | AliasAttr of attribute_info
  | AlignValueAttr of attribute_info
  | IFuncAttr of attribute_info
  | InitSegAttr of attribute_info
  | LoopHintAttr of attribute_info
  | ModeAttr of attribute_info
  | OMPDeclareSimdDeclAttr of attribute_info
  | OMPDeclareTargetDeclAttr of attribute_info
  | ObjCBoxableAttr of attribute_info
  | ObjCDesignatedInitializerAttr of attribute_info
  | ObjCRuntimeNameAttr of attribute_info
  | ObjCRuntimeVisibleAttr of attribute_info
  | OpenCLAccessAttr of attribute_info
  | OverloadableAttr of attribute_info
  | RenderScriptKernelAttr of attribute_info
  | ThreadAttr of attribute_info


type comment_info = Clang_ast_t.comment_info = {
  ci_parent_pointer (*atd parent_pointer *): pointer;
  ci_source_range (*atd source_range *): source_range
}

type specifier_kind = Clang_ast_t.specifier_kind

type stmt_info = Clang_ast_t.stmt_info = {
  si_pointer (*atd pointer *): pointer;
  si_source_range (*atd source_range *): source_range
}

type tag_kind = Clang_ast_t.tag_kind

type tls_kind = Clang_ast_t.tls_kind

type type_attribute_kind = Clang_ast_t.type_attribute_kind

type attr_type_info = Clang_ast_t.attr_type_info = {
  ati_attr_kind (*atd attr_kind *): type_attribute_kind;
  ati_lifetime (*atd lifetime *): objc_lifetime_attr
}

type type_ptr = Clang_ast_t.type_ptr

type qual_type = Clang_ast_t.qual_type = {
  qt_type_ptr (*atd type_ptr *): type_ptr;
  qt_is_const (*atd is_const *): bool;
  qt_is_restrict (*atd is_restrict *): bool;
  qt_is_volatile (*atd is_volatile *): bool
}

type array_type_info = Clang_ast_t.array_type_info = {
  arti_element_type (*atd element_type *): qual_type;
  arti_stride (*atd stride *): int option
}

type compound_assign_operator_info =
  Clang_ast_t.compound_assign_operator_info = {
  caoi_lhs_type (*atd lhs_type *): qual_type;
  caoi_result_type (*atd result_type *): qual_type
}

type cxx_delete_expr_info = Clang_ast_t.cxx_delete_expr_info = {
  xdei_is_array (*atd is_array *): bool;
  xdei_destroyed_type (*atd destroyed_type *): qual_type
}

type decl_ref = Clang_ast_t.decl_ref = {
  dr_kind (*atd kind *): decl_kind;
  dr_decl_pointer (*atd decl_pointer *): pointer;
  dr_name (*atd name *): named_decl_info option;
  dr_is_hidden (*atd is_hidden *): bool;
  dr_qual_type (*atd qual_type *): qual_type option
}

type cxx_construct_expr_info = Clang_ast_t.cxx_construct_expr_info = {
  xcei_decl_ref (*atd decl_ref *): decl_ref;
  xcei_is_elidable (*atd is_elidable *): bool;
  xcei_requires_zero_initialization (*atd requires_zero_initialization *):
    bool
}

type cxx_ctor_initializer_subject = Clang_ast_t.cxx_ctor_initializer_subject

type decl_ref_expr_info = Clang_ast_t.decl_ref_expr_info = {
  drti_decl_ref (*atd decl_ref *): decl_ref option;
  drti_found_decl_ref (*atd found_decl_ref *): decl_ref option
}

type expr_with_cleanups_info = Clang_ast_t.expr_with_cleanups_info = {
  ewci_decl_refs (*atd decl_refs *): decl_ref list
}

type function_type_info = Clang_ast_t.function_type_info = {
  fti_return_type (*atd return_type *): qual_type
}

type materialize_temporary_expr_info =
  Clang_ast_t.materialize_temporary_expr_info = {
  mtei_decl_ref (*atd decl_ref *): decl_ref option
}

type member_expr_info = Clang_ast_t.member_expr_info = {
  mei_is_arrow (*atd is_arrow *): bool;
  mei_performs_virtual_dispatch (*atd performs_virtual_dispatch *): bool;
  mei_name (*atd name *): named_decl_info;
  mei_decl_ref (*atd decl_ref *): decl_ref
}

type namespace_decl_info = Clang_ast_t.namespace_decl_info = {
  ndi_is_inline (*atd is_inline *): bool;
  ndi_original_namespace (*atd original_namespace *): decl_ref option
}

type nested_name_specifier_loc = Clang_ast_t.nested_name_specifier_loc = {
  nnsl_kind (*atd kind *): specifier_kind;
  nnsl_ref (*atd ref *): decl_ref option
}

type namespace_alias_decl_info = Clang_ast_t.namespace_alias_decl_info = {
  nadi_namespace_loc (*atd namespace_loc *): source_location;
  nadi_target_name_loc (*atd target_name_loc *): source_location;
  nadi_nested_name_specifier_locs (*atd nested_name_specifier_locs *):
    nested_name_specifier_loc list;
  nadi_namespace (*atd namespace *): decl_ref
}

type obj_c_category_decl_info = Clang_ast_t.obj_c_category_decl_info = {
  odi_class_interface (*atd class_interface *): decl_ref option;
  odi_implementation (*atd implementation *): decl_ref option;
  odi_protocols (*atd protocols *): decl_ref list
}

type obj_c_category_impl_decl_info =
  Clang_ast_t.obj_c_category_impl_decl_info = {
  ocidi_class_interface (*atd class_interface *): decl_ref option;
  ocidi_category_decl (*atd category_decl *): decl_ref option
}

type obj_c_compatible_alias_decl_info =
  Clang_ast_t.obj_c_compatible_alias_decl_info = {
  ocadi_class_interface (*atd class_interface *): decl_ref option
}

type obj_c_interface_decl_info = Clang_ast_t.obj_c_interface_decl_info = {
  otdi_super (*atd super *): decl_ref option;
  otdi_implementation (*atd implementation *): decl_ref option;
  otdi_protocols (*atd protocols *): decl_ref list;
  otdi_known_categories (*atd known_categories *): decl_ref list
}

type obj_c_ivar_ref_expr_info = Clang_ast_t.obj_c_ivar_ref_expr_info = {
  ovrei_decl_ref (*atd decl_ref *): decl_ref;
  ovrei_pointer (*atd pointer *): pointer;
  ovrei_is_free_ivar (*atd is_free_ivar *): bool
}

type obj_c_property_decl_info = Clang_ast_t.obj_c_property_decl_info = {
  opdi_qual_type (*atd qual_type *): qual_type;
  opdi_getter_method (*atd getter_method *): decl_ref option;
  opdi_setter_method (*atd setter_method *): decl_ref option;
  opdi_ivar_decl (*atd ivar_decl *): decl_ref option;
  opdi_property_control (*atd property_control *): obj_c_property_control;
  opdi_property_attributes (*atd property_attributes *):
    property_attribute list
}

type obj_c_property_impl_decl_info =
  Clang_ast_t.obj_c_property_impl_decl_info = {
  opidi_implementation (*atd implementation *): property_implementation;
  opidi_property_decl (*atd property_decl *): decl_ref option;
  opidi_ivar_decl (*atd ivar_decl *): decl_ref option
}

type obj_c_protocol_decl_info = Clang_ast_t.obj_c_protocol_decl_info = {
  opcdi_protocols (*atd protocols *): decl_ref list
}

type objc_encode_expr_info = Clang_ast_t.objc_encode_expr_info = {
  oeei_qual_type (*atd qual_type *): qual_type;
  oeei_raw (*atd raw *): string
}

type objc_object_type_info = Clang_ast_t.objc_object_type_info = {
  ooti_base_type (*atd base_type *): type_ptr;
  ooti_protocol_decls_ptr (*atd protocol_decls_ptr *): pointer list;
  ooti_type_args (*atd type_args *): qual_type list
}

type overload_expr_info = Clang_ast_t.overload_expr_info = {
  oei_decls (*atd decls *): decl_ref list;
  oei_name (*atd name *): declaration_name
}

type params_type_info = Clang_ast_t.params_type_info = {
  pti_params_type (*atd params_type *): qual_type list
}

type property_ref_kind = Clang_ast_t.property_ref_kind

type obj_c_property_ref_expr_info =
  Clang_ast_t.obj_c_property_ref_expr_info = {
  oprei_kind (*atd kind *): property_ref_kind;
  oprei_is_super_receiver (*atd is_super_receiver *): bool;
  oprei_is_messaging_getter (*atd is_messaging_getter *): bool;
  oprei_is_messaging_setter (*atd is_messaging_setter *): bool
}

type receiver_kind = Clang_ast_t.receiver_kind

type obj_c_message_expr_info = Clang_ast_t.obj_c_message_expr_info = {
  omei_selector (*atd selector *): string;
  omei_is_definition_found (*atd is_definition_found *): bool;
  omei_decl_pointer (*atd decl_pointer *): pointer option;
  omei_receiver_kind (*atd receiver_kind *): receiver_kind
}

type type_info = Clang_ast_t.type_info = {
  ti_pointer (*atd pointer *): pointer;
  ti_desugared_type (*atd desugared_type *): type_ptr option
}

type type_trait_info = Clang_ast_t.type_trait_info = {
  xtti_value (*atd value *): bool
}

type typedef_decl_info = Clang_ast_t.typedef_decl_info = {
  tdi_is_module_private (*atd is_module_private *): bool
}

type typedef_type_info = Clang_ast_t.typedef_type_info = {
  tti_child_type (*atd child_type *): qual_type;
  tti_decl_ptr (*atd decl_ptr *): pointer
}

type c_type = Clang_ast_t.c_type = 
    NoneType of (type_info)
  | BuiltinType of (type_info * builtin_type_kind)
  | ComplexType of (type_info)
  | PointerType of (type_info * qual_type)
  | BlockPointerType of (type_info * qual_type)
  | LValueReferenceType of (type_info * qual_type)
  | RValueReferenceType of (type_info * qual_type)
  | MemberPointerType of (type_info * qual_type)
  | ConstantArrayType of (type_info * array_type_info * int)
  | IncompleteArrayType of (type_info * array_type_info)
  | VariableArrayType of (type_info * array_type_info * pointer)
  | DependentSizedArrayType of (type_info * array_type_info)
  | DependentSizedExtVectorType of (type_info)
  | VectorType of (type_info)
  | ExtVectorType of (type_info)
  | FunctionProtoType of (type_info * function_type_info * params_type_info)
  | FunctionNoProtoType of (type_info * function_type_info)
  | UnresolvedUsingType of (type_info)
  | ParenType of (type_info * qual_type)
  | TypedefType of (type_info * typedef_type_info)
  | AdjustedType of (type_info * qual_type)
  | DecayedType of (type_info * qual_type)
  | TypeOfExprType of (type_info)
  | TypeOfType of (type_info)
  | DecltypeType of (type_info * qual_type)
  | UnaryTransformType of (type_info)
  | RecordType of (type_info * pointer)
  | EnumType of (type_info * pointer)
  | ElaboratedType of (type_info)
  | AttributedType of (type_info * attr_type_info)
  | TemplateTypeParmType of (type_info)
  | SubstTemplateTypeParmType of (type_info)
  | SubstTemplateTypeParmPackType of (type_info)
  | TemplateSpecializationType of (type_info)
  | AutoType of (type_info)
  | DeducedTemplateSpecializationType of (type_info)
  | InjectedClassNameType of (type_info)
  | DependentNameType of (type_info)
  | DependentTemplateSpecializationType of (type_info)
  | PackExpansionType of (type_info)
  | ObjCTypeParamType of (type_info)
  | ObjCObjectType of (type_info * objc_object_type_info)
  | ObjCInterfaceType of (type_info * pointer)
  | ObjCObjectPointerType of (type_info * qual_type)
  | PipeType of (type_info)
  | AtomicType of (type_info * qual_type)


type translation_unit_decl_info = Clang_ast_t.translation_unit_decl_info = {
  tudi_input_path (*atd input_path *): source_file;
  tudi_input_kind (*atd input_kind *): input_kind;
  tudi_arc_enabled (*atd arc_enabled *): bool;
  tudi_types (*atd types *): c_type list
}

type unary_expr_or_type_trait_kind =
  Clang_ast_t.unary_expr_or_type_trait_kind

type unary_expr_or_type_trait_expr_info =
  Clang_ast_t.unary_expr_or_type_trait_expr_info = {
  uttei_kind (*atd kind *): unary_expr_or_type_trait_kind;
  uttei_qual_type (*atd qual_type *): qual_type option
}

type unary_operator_kind = Clang_ast_t.unary_operator_kind

type unary_operator_info = Clang_ast_t.unary_operator_info = {
  uoi_kind (*atd kind *): unary_operator_kind;
  uoi_is_postfix (*atd is_postfix *): bool
}

type unresolved_lookup_expr_info = Clang_ast_t.unresolved_lookup_expr_info = {
  ulei_requires_ADL (*atd requires_ADL *): bool;
  ulei_is_overloaded (*atd is_overloaded *): bool;
  ulei_naming_class (*atd naming_class *): decl_ref option
}

type using_directive_decl_info = Clang_ast_t.using_directive_decl_info = {
  uddi_using_location (*atd using_location *): source_location;
  uddi_namespace_key_location (*atd namespace_key_location *):
    source_location;
  uddi_nested_name_specifier_locs (*atd nested_name_specifier_locs *):
    nested_name_specifier_loc list;
  uddi_nominated_namespace (*atd nominated_namespace *): decl_ref option
}

type value_kind = Clang_ast_t.value_kind

type expr_info = Clang_ast_t.expr_info = {
  ei_qual_type (*atd qual_type *): qual_type;
  ei_value_kind (*atd value_kind *): value_kind;
  ei_object_kind (*atd object_kind *): object_kind
}

type template_instantiation_arg_info =
  Clang_ast_t.template_instantiation_arg_info

type comment = Clang_ast_t.comment = 
    BlockCommandComment of (comment_info * comment list)
  | ParamCommandComment of (comment_info * comment list)
  | TParamCommandComment of (comment_info * comment list)
  | VerbatimBlockComment of (comment_info * comment list)
  | VerbatimLineComment of (comment_info * comment list)
  | ParagraphComment of (comment_info * comment list)
  | FullComment of (comment_info * comment list)
  | HTMLEndTagComment of (comment_info * comment list)
  | HTMLStartTagComment of (comment_info * comment list)
  | InlineCommandComment of (comment_info * comment list)
  | TextComment of (comment_info * comment list * string)
  | VerbatimBlockLineComment of (comment_info * comment list)


type template_specialization_info =
  Clang_ast_t.template_specialization_info = {
  tsi_template_decl (*atd template_decl *): pointer;
  tsi_specialization_args (*atd specialization_args *):
    template_instantiation_arg_info list
}

type decl_info = Clang_ast_t.decl_info = {
  di_pointer (*atd pointer *): pointer;
  di_parent_pointer (*atd parent_pointer *): pointer option;
  di_source_range (*atd source_range *): source_range;
  di_owning_module (*atd owning_module *): string option;
  di_is_hidden (*atd is_hidden *): bool;
  di_is_implicit (*atd is_implicit *): bool;
  di_is_used (*atd is_used *): bool;
  di_is_this_declaration_referenced (*atd is_this_declaration_referenced *):
    bool;
  di_is_invalid_decl (*atd is_invalid_decl *): bool;
  di_attributes (*atd attributes *): attribute list;
  di_full_comment (*atd full_comment *): comment option;
  di_access (*atd access *): access_specifier
}

type block_captured_variable = Clang_ast_t.block_captured_variable = {
  bcv_is_by_ref (*atd is_by_ref *): bool;
  bcv_is_nested (*atd is_nested *): bool;
  bcv_variable (*atd variable *): decl_ref option;
  bcv_copy_expr (*atd copy_expr *): stmt option
}

and block_decl_info = Clang_ast_t.block_decl_info = {
  bdi_parameters (*atd parameters *): decl list;
  bdi_is_variadic (*atd is_variadic *): bool;
  bdi_captures_cxx_this (*atd captures_cxx_this *): bool;
  bdi_captured_variables (*atd captured_variables *):
    block_captured_variable list;
  bdi_body (*atd body *): stmt option
}

and cxx_catch_stmt_info = Clang_ast_t.cxx_catch_stmt_info = {
  xcsi_variable (*atd variable *): decl option
}

and cxx_ctor_initializer = Clang_ast_t.cxx_ctor_initializer = {
  xci_subject (*atd subject *): cxx_ctor_initializer_subject;
  xci_source_range (*atd source_range *): source_range;
  xci_init_expr (*atd init_expr *): stmt option
}

and cxx_default_expr_info = Clang_ast_t.cxx_default_expr_info = {
  xdaei_init_expr (*atd init_expr *): stmt option
}

and cxx_method_decl_info = Clang_ast_t.cxx_method_decl_info = {
  xmdi_is_virtual (*atd is_virtual *): bool;
  xmdi_is_static (*atd is_static *): bool;
  xmdi_is_constexpr (*atd is_constexpr *): bool;
  xmdi_cxx_ctor_initializers (*atd cxx_ctor_initializers *):
    cxx_ctor_initializer list;
  xmdi_overriden_methods (*atd overriden_methods *): decl_ref list
}

and cxx_record_decl_info = Clang_ast_t.cxx_record_decl_info = {
  xrdi_bases (*atd bases *): type_ptr list;
  xrdi_vbases (*atd vbases *): type_ptr list;
  xrdi_transitive_vbases (*atd transitive_vbases *): type_ptr list;
  xrdi_is_pod (*atd is_pod *): bool;
  xrdi_destructor (*atd destructor *): decl_ref option;
  xrdi_lambda_call_operator (*atd lambda_call_operator *): decl_ref option;
  xrdi_lambda_captures (*atd lambda_captures *): lambda_capture_info list
}

and decl = Clang_ast_t.decl = 
    AccessSpecDecl of (decl_info)
  | BlockDecl of (decl_info * block_decl_info)
  | CapturedDecl of (decl_info * decl list * decl_context_info)
  | ClassScopeFunctionSpecializationDecl of (decl_info)
  | EmptyDecl of (decl_info)
  | ExportDecl of (decl_info)
  | ExternCContextDecl of (decl_info)
  | FileScopeAsmDecl of (decl_info * string)
  | FriendDecl of (decl_info * friend_info)
  | FriendTemplateDecl of (decl_info)
  | ImportDecl of (decl_info * string)
  | LinkageSpecDecl of (decl_info * decl list * decl_context_info)
  | LabelDecl of (decl_info * named_decl_info)
  | NamespaceDecl
      of (
          decl_info
        * named_decl_info
        * decl list
        * decl_context_info
        * namespace_decl_info
      )
  | NamespaceAliasDecl
      of (decl_info * named_decl_info * namespace_alias_decl_info)
  | ObjCCompatibleAliasDecl
      of (decl_info * named_decl_info * obj_c_compatible_alias_decl_info)
  | ObjCCategoryDecl
      of (
          decl_info
        * named_decl_info
        * decl list
        * decl_context_info
        * obj_c_category_decl_info
      )
  | ObjCCategoryImplDecl
      of (
          decl_info
        * named_decl_info
        * decl list
        * decl_context_info
        * obj_c_category_impl_decl_info
      )
  | ObjCImplementationDecl
      of (
          decl_info
        * named_decl_info
        * decl list
        * decl_context_info
        * obj_c_implementation_decl_info
      )
  | ObjCInterfaceDecl
      of (
          decl_info
        * named_decl_info
        * decl list
        * decl_context_info
        * obj_c_interface_decl_info
      )
  | ObjCProtocolDecl
      of (
          decl_info
        * named_decl_info
        * decl list
        * decl_context_info
        * obj_c_protocol_decl_info
      )
  | ObjCMethodDecl of (decl_info * named_decl_info * obj_c_method_decl_info)
  | ObjCPropertyDecl
      of (decl_info * named_decl_info * obj_c_property_decl_info)
  | BuiltinTemplateDecl of (decl_info * named_decl_info)
  | ClassTemplateDecl of (decl_info * named_decl_info * template_decl_info)
  | FunctionTemplateDecl
      of (decl_info * named_decl_info * template_decl_info)
  | TypeAliasTemplateDecl of (decl_info * named_decl_info)
  | VarTemplateDecl of (decl_info * named_decl_info)
  | TemplateTemplateParmDecl of (decl_info * named_decl_info)
  | EnumDecl
      of (
          decl_info
        * named_decl_info
        * type_ptr
        * decl list
        * decl_context_info
        * tag_kind
        * enum_decl_info
      )
  | RecordDecl
      of (
          decl_info
        * named_decl_info
        * type_ptr
        * decl list
        * decl_context_info
        * tag_kind
        * record_decl_info
      )
  | CXXRecordDecl
      of (
          decl_info
        * named_decl_info
        * type_ptr
        * decl list
        * decl_context_info
        * tag_kind
        * record_decl_info
        * cxx_record_decl_info
      )
  | ClassTemplateSpecializationDecl
      of (
          decl_info
        * named_decl_info
        * type_ptr
        * decl list
        * decl_context_info
        * tag_kind
        * record_decl_info
        * cxx_record_decl_info
        * string
        * template_specialization_info
      )
  | ClassTemplatePartialSpecializationDecl
      of (
          decl_info
        * named_decl_info
        * type_ptr
        * decl list
        * decl_context_info
        * tag_kind
        * record_decl_info
        * cxx_record_decl_info
        * string
        * template_specialization_info
      )
  | TemplateTypeParmDecl of (decl_info * named_decl_info * type_ptr)
  | ObjCTypeParamDecl of (decl_info * named_decl_info * type_ptr)
  | TypeAliasDecl of (decl_info * named_decl_info * type_ptr)
  | TypedefDecl
      of (decl_info * named_decl_info * type_ptr * typedef_decl_info)
  | UnresolvedUsingTypenameDecl of (decl_info * named_decl_info * type_ptr)
  | UsingDecl of (decl_info * named_decl_info)
  | UsingDirectiveDecl
      of (decl_info * named_decl_info * using_directive_decl_info)
  | UsingPackDecl of (decl_info * named_decl_info)
  | UsingShadowDecl of (decl_info * named_decl_info)
  | ConstructorUsingShadowDecl of (decl_info * named_decl_info)
  | BindingDecl of (decl_info * named_decl_info * qual_type)
  | FieldDecl of (decl_info * named_decl_info * qual_type * field_decl_info)
  | ObjCAtDefsFieldDecl
      of (decl_info * named_decl_info * qual_type * field_decl_info)
  | ObjCIvarDecl
      of (
          decl_info
        * named_decl_info
        * qual_type
        * field_decl_info
        * obj_c_ivar_decl_info
      )
  | FunctionDecl
      of (decl_info * named_decl_info * qual_type * function_decl_info)
  | CXXDeductionGuideDecl
      of (decl_info * named_decl_info * qual_type * function_decl_info)
  | CXXMethodDecl
      of (
          decl_info
        * named_decl_info
        * qual_type
        * function_decl_info
        * cxx_method_decl_info
      )
  | CXXConstructorDecl
      of (
          decl_info
        * named_decl_info
        * qual_type
        * function_decl_info
        * cxx_method_decl_info
      )
  | CXXConversionDecl
      of (
          decl_info
        * named_decl_info
        * qual_type
        * function_decl_info
        * cxx_method_decl_info
      )
  | CXXDestructorDecl
      of (
          decl_info
        * named_decl_info
        * qual_type
        * function_decl_info
        * cxx_method_decl_info
      )
  | MSPropertyDecl of (decl_info * named_decl_info * qual_type)
  | NonTypeTemplateParmDecl of (decl_info * named_decl_info * qual_type)
  | VarDecl of (decl_info * named_decl_info * qual_type * var_decl_info)
  | DecompositionDecl
      of (decl_info * named_decl_info * qual_type * var_decl_info)
  | ImplicitParamDecl
      of (decl_info * named_decl_info * qual_type * var_decl_info)
  | OMPCapturedExprDecl
      of (decl_info * named_decl_info * qual_type * var_decl_info)
  | ParmVarDecl of (decl_info * named_decl_info * qual_type * var_decl_info)
  | VarTemplateSpecializationDecl
      of (decl_info * named_decl_info * qual_type * var_decl_info)
  | VarTemplatePartialSpecializationDecl
      of (decl_info * named_decl_info * qual_type * var_decl_info)
  | EnumConstantDecl
      of (decl_info * named_decl_info * qual_type * enum_constant_decl_info)
  | IndirectFieldDecl
      of (decl_info * named_decl_info * qual_type * decl_ref list)
  | OMPDeclareReductionDecl of (decl_info * named_decl_info * qual_type)
  | UnresolvedUsingValueDecl of (decl_info * named_decl_info * qual_type)
  | OMPThreadPrivateDecl of (decl_info)
  | ObjCPropertyImplDecl of (decl_info * obj_c_property_impl_decl_info)
  | PragmaCommentDecl of (decl_info)
  | PragmaDetectMismatchDecl of (decl_info)
  | StaticAssertDecl of (decl_info)
  | TranslationUnitDecl
      of (
          decl_info
        * decl list
        * decl_context_info
        * translation_unit_decl_info
      )


and enum_constant_decl_info = Clang_ast_t.enum_constant_decl_info = {
  ecdi_init_expr (*atd init_expr *): stmt option
}

and field_decl_info = Clang_ast_t.field_decl_info = {
  fldi_is_mutable (*atd is_mutable *): bool;
  fldi_is_module_private (*atd is_module_private *): bool;
  fldi_init_expr (*atd init_expr *): stmt option;
  fldi_bit_width_expr (*atd bit_width_expr *): stmt option
}

and friend_info = Clang_ast_t.friend_info

and function_decl_info = Clang_ast_t.function_decl_info = {
  fdi_mangled_name (*atd mangled_name *): string option;
  fdi_storage_class (*atd storage_class *): string option;
  fdi_is_inline (*atd is_inline *): bool;
  fdi_is_module_private (*atd is_module_private *): bool;
  fdi_is_pure (*atd is_pure *): bool;
  fdi_is_delete_as_written (*atd is_delete_as_written *): bool;
  fdi_is_no_throw (*atd is_no_throw *): bool;
  fdi_parameters (*atd parameters *): decl list;
  fdi_decl_ptr_with_body (*atd decl_ptr_with_body *): pointer option;
  fdi_body (*atd body *): stmt option;
  fdi_template_specialization (*atd template_specialization *):
    template_specialization_info option
}

and lambda_capture_info = Clang_ast_t.lambda_capture_info = {
  lci_capture_kind (*atd capture_kind *): lambda_capture_kind;
  lci_capture_this (*atd capture_this *): bool;
  lci_capture_variable (*atd capture_variable *): bool;
  lci_capture_VLAtype (*atd capture_VLAtype *): bool;
  lci_init_captured_vardecl (*atd init_captured_vardecl *): decl option;
  lci_captured_var (*atd captured_var *): decl_ref option;
  lci_is_implicit (*atd is_implicit *): bool;
  lci_location (*atd location *): source_range;
  lci_is_pack_expansion (*atd is_pack_expansion *): bool
}

and lambda_expr_info = Clang_ast_t.lambda_expr_info = {
  lei_lambda_decl (*atd lambda_decl *): decl
}

and obj_c_implementation_decl_info =
  Clang_ast_t.obj_c_implementation_decl_info = {
  oidi_super (*atd super *): decl_ref option;
  oidi_class_interface (*atd class_interface *): decl_ref option;
  oidi_ivar_initializers (*atd ivar_initializers *):
    cxx_ctor_initializer list
}

and obj_c_message_expr_kind = Clang_ast_t.obj_c_message_expr_kind

and obj_c_method_decl_info = Clang_ast_t.obj_c_method_decl_info = {
  omdi_is_instance_method (*atd is_instance_method *): bool;
  omdi_result_type (*atd result_type *): qual_type;
  omdi_is_property_accessor (*atd is_property_accessor *): bool;
  omdi_property_decl (*atd property_decl *): decl_ref option;
  omdi_parameters (*atd parameters *): decl list;
  omdi_implicit_parameters (*atd implicit_parameters *): decl list;
  omdi_is_variadic (*atd is_variadic *): bool;
  omdi_body (*atd body *): stmt option
}

and opaque_value_expr_info = Clang_ast_t.opaque_value_expr_info = {
  ovei_source_expr (*atd source_expr *): stmt option
}

and stmt = Clang_ast_t.stmt = 
    GCCAsmStmt of (stmt_info * stmt list)
  | MSAsmStmt of (stmt_info * stmt list)
  | AttributedStmt of (stmt_info * stmt list * attribute list)
  | BreakStmt of (stmt_info * stmt list)
  | CXXCatchStmt of (stmt_info * stmt list * cxx_catch_stmt_info)
  | CXXForRangeStmt of (stmt_info * stmt list)
  | CXXTryStmt of (stmt_info * stmt list)
  | CapturedStmt of (stmt_info * stmt list)
  | CompoundStmt of (stmt_info * stmt list)
  | ContinueStmt of (stmt_info * stmt list)
  | CoreturnStmt of (stmt_info * stmt list)
  | CoroutineBodyStmt of (stmt_info * stmt list)
  | DeclStmt of (stmt_info * stmt list * decl list)
  | DoStmt of (stmt_info * stmt list)
  | BinaryConditionalOperator of (stmt_info * stmt list * expr_info)
  | ConditionalOperator of (stmt_info * stmt list * expr_info)
  | AddrLabelExpr
      of (stmt_info * stmt list * expr_info * addr_label_expr_info)
  | ArrayInitIndexExpr of (stmt_info * stmt list * expr_info)
  | ArrayInitLoopExpr of (stmt_info * stmt list * expr_info)
  | ArraySubscriptExpr of (stmt_info * stmt list * expr_info)
  | ArrayTypeTraitExpr of (stmt_info * stmt list * expr_info)
  | AsTypeExpr of (stmt_info * stmt list * expr_info)
  | AtomicExpr of (stmt_info * stmt list * expr_info)
  | BinaryOperator
      of (stmt_info * stmt list * expr_info * binary_operator_info)
  | CompoundAssignOperator
      of (
          stmt_info
        * stmt list
        * expr_info
        * binary_operator_info
        * compound_assign_operator_info
      )
  | BlockExpr of (stmt_info * stmt list * expr_info * decl)
  | CXXBindTemporaryExpr
      of (stmt_info * stmt list * expr_info * cxx_bind_temporary_expr_info)
  | CXXBoolLiteralExpr of (stmt_info * stmt list * expr_info * int)
  | CXXConstructExpr
      of (stmt_info * stmt list * expr_info * cxx_construct_expr_info)
  | CXXTemporaryObjectExpr
      of (stmt_info * stmt list * expr_info * cxx_construct_expr_info)
  | CXXDefaultArgExpr
      of (stmt_info * stmt list * expr_info * cxx_default_expr_info)
  | CXXDefaultInitExpr
      of (stmt_info * stmt list * expr_info * cxx_default_expr_info)
  | CXXDeleteExpr
      of (stmt_info * stmt list * expr_info * cxx_delete_expr_info)
  | CXXDependentScopeMemberExpr of (stmt_info * stmt list * expr_info)
  | CXXFoldExpr of (stmt_info * stmt list * expr_info)
  | CXXInheritedCtorInitExpr of (stmt_info * stmt list * expr_info)
  | CXXNewExpr of (stmt_info * stmt list * expr_info * cxx_new_expr_info)
  | CXXNoexceptExpr
      of (stmt_info * stmt list * expr_info * cxx_noexcept_expr_info)
  | CXXNullPtrLiteralExpr of (stmt_info * stmt list * expr_info)
  | CXXPseudoDestructorExpr of (stmt_info * stmt list * expr_info)
  | CXXScalarValueInitExpr of (stmt_info * stmt list * expr_info)
  | CXXStdInitializerListExpr of (stmt_info * stmt list * expr_info)
  | CXXThisExpr of (stmt_info * stmt list * expr_info)
  | CXXThrowExpr of (stmt_info * stmt list * expr_info)
  | CXXTypeidExpr of (stmt_info * stmt list * expr_info)
  | CXXUnresolvedConstructExpr of (stmt_info * stmt list * expr_info)
  | CXXUuidofExpr of (stmt_info * stmt list * expr_info)
  | CallExpr of (stmt_info * stmt list * expr_info)
  | CUDAKernelCallExpr of (stmt_info * stmt list * expr_info)
  | CXXMemberCallExpr of (stmt_info * stmt list * expr_info)
  | CXXOperatorCallExpr of (stmt_info * stmt list * expr_info)
  | UserDefinedLiteral of (stmt_info * stmt list * expr_info)
  | CStyleCastExpr
      of (stmt_info * stmt list * expr_info * cast_expr_info * qual_type)
  | CXXFunctionalCastExpr
      of (stmt_info * stmt list * expr_info * cast_expr_info * qual_type)
  | CXXConstCastExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * cast_expr_info
        * qual_type
        * string
      )
  | CXXDynamicCastExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * cast_expr_info
        * qual_type
        * string
      )
  | CXXReinterpretCastExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * cast_expr_info
        * qual_type
        * string
      )
  | CXXStaticCastExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * cast_expr_info
        * qual_type
        * string
      )
  | ObjCBridgedCastExpr
      of (stmt_info * stmt list * expr_info * cast_expr_info * qual_type)
  | ImplicitCastExpr of (stmt_info * stmt list * expr_info * cast_expr_info)
  | CharacterLiteral of (stmt_info * stmt list * expr_info * int)
  | ChooseExpr of (stmt_info * stmt list * expr_info)
  | CompoundLiteralExpr of (stmt_info * stmt list * expr_info)
  | ConvertVectorExpr of (stmt_info * stmt list * expr_info)
  | CoawaitExpr of (stmt_info * stmt list * expr_info)
  | CoyieldExpr of (stmt_info * stmt list * expr_info)
  | DeclRefExpr of (stmt_info * stmt list * expr_info * decl_ref_expr_info)
  | DependentCoawaitExpr of (stmt_info * stmt list * expr_info)
  | DependentScopeDeclRefExpr of (stmt_info * stmt list * expr_info)
  | DesignatedInitExpr of (stmt_info * stmt list * expr_info)
  | DesignatedInitUpdateExpr of (stmt_info * stmt list * expr_info)
  | ExprWithCleanups
      of (stmt_info * stmt list * expr_info * expr_with_cleanups_info)
  | ExpressionTraitExpr of (stmt_info * stmt list * expr_info)
  | ExtVectorElementExpr of (stmt_info * stmt list * expr_info)
  | FloatingLiteral of (stmt_info * stmt list * expr_info * string)
  | FunctionParmPackExpr of (stmt_info * stmt list * expr_info)
  | GNUNullExpr of (stmt_info * stmt list * expr_info)
  | GenericSelectionExpr of (stmt_info * stmt list * expr_info)
  | ImaginaryLiteral of (stmt_info * stmt list * expr_info)
  | ImplicitValueInitExpr of (stmt_info * stmt list * expr_info)
  | InitListExpr of (stmt_info * stmt list * expr_info)
  | IntegerLiteral
      of (stmt_info * stmt list * expr_info * integer_literal_info)
  | LambdaExpr of (stmt_info * stmt list * expr_info * lambda_expr_info)
  | MSPropertyRefExpr of (stmt_info * stmt list * expr_info)
  | MSPropertySubscriptExpr of (stmt_info * stmt list * expr_info)
  | MaterializeTemporaryExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * materialize_temporary_expr_info
      )
  | MemberExpr of (stmt_info * stmt list * expr_info * member_expr_info)
  | NoInitExpr of (stmt_info * stmt list * expr_info)
  | OMPArraySectionExpr of (stmt_info * stmt list * expr_info)
  | ObjCArrayLiteral of (stmt_info * stmt list * expr_info)
  | ObjCAvailabilityCheckExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * obj_c_availability_check_expr_info
      )
  | ObjCBoolLiteralExpr of (stmt_info * stmt list * expr_info * int)
  | ObjCBoxedExpr
      of (stmt_info * stmt list * expr_info * objc_boxed_expr_info)
  | ObjCDictionaryLiteral of (stmt_info * stmt list * expr_info)
  | ObjCEncodeExpr
      of (stmt_info * stmt list * expr_info * objc_encode_expr_info)
  | ObjCIndirectCopyRestoreExpr of (stmt_info * stmt list * expr_info)
  | ObjCIsaExpr of (stmt_info * stmt list * expr_info)
  | ObjCIvarRefExpr
      of (stmt_info * stmt list * expr_info * obj_c_ivar_ref_expr_info)
  | ObjCMessageExpr
      of (stmt_info * stmt list * expr_info * obj_c_message_expr_info)
  | ObjCPropertyRefExpr
      of (stmt_info * stmt list * expr_info * obj_c_property_ref_expr_info)
  | ObjCProtocolExpr of (stmt_info * stmt list * expr_info * decl_ref)
  | ObjCSelectorExpr of (stmt_info * stmt list * expr_info * selector)
  | ObjCStringLiteral of (stmt_info * stmt list * expr_info)
  | ObjCSubscriptRefExpr
      of (stmt_info * stmt list * expr_info * obj_c_subscript_ref_expr_info)
  | OffsetOfExpr of (stmt_info * stmt list * expr_info)
  | OpaqueValueExpr
      of (stmt_info * stmt list * expr_info * opaque_value_expr_info)
  | UnresolvedLookupExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * overload_expr_info
        * unresolved_lookup_expr_info
      )
  | UnresolvedMemberExpr
      of (stmt_info * stmt list * expr_info * overload_expr_info)
  | PackExpansionExpr of (stmt_info * stmt list * expr_info)
  | ParenExpr of (stmt_info * stmt list * expr_info)
  | ParenListExpr of (stmt_info * stmt list * expr_info)
  | PredefinedExpr
      of (stmt_info * stmt list * expr_info * predefined_expr_type)
  | PseudoObjectExpr of (stmt_info * stmt list * expr_info)
  | ShuffleVectorExpr of (stmt_info * stmt list * expr_info)
  | SizeOfPackExpr of (stmt_info * stmt list * expr_info)
  | StmtExpr of (stmt_info * stmt list * expr_info)
  | StringLiteral of (stmt_info * stmt list * expr_info * string list)
  | SubstNonTypeTemplateParmExpr of (stmt_info * stmt list * expr_info)
  | SubstNonTypeTemplateParmPackExpr of (stmt_info * stmt list * expr_info)
  | TypeTraitExpr of (stmt_info * stmt list * expr_info * type_trait_info)
  | TypoExpr of (stmt_info * stmt list * expr_info)
  | UnaryExprOrTypeTraitExpr
      of (
          stmt_info
        * stmt list
        * expr_info
        * unary_expr_or_type_trait_expr_info
      )
  | UnaryOperator
      of (stmt_info * stmt list * expr_info * unary_operator_info)
  | VAArgExpr of (stmt_info * stmt list * expr_info)
  | ForStmt of (stmt_info * stmt list)
  | GotoStmt of (stmt_info * stmt list * goto_stmt_info)
  | IfStmt of (stmt_info * stmt list)
  | IndirectGotoStmt of (stmt_info * stmt list)
  | LabelStmt of (stmt_info * stmt list * string)
  | MSDependentExistsStmt of (stmt_info * stmt list)
  | NullStmt of (stmt_info * stmt list)
  | OMPAtomicDirective of (stmt_info * stmt list)
  | OMPBarrierDirective of (stmt_info * stmt list)
  | OMPCancelDirective of (stmt_info * stmt list)
  | OMPCancellationPointDirective of (stmt_info * stmt list)
  | OMPCriticalDirective of (stmt_info * stmt list)
  | OMPFlushDirective of (stmt_info * stmt list)
  | OMPDistributeDirective of (stmt_info * stmt list)
  | OMPDistributeParallelForDirective of (stmt_info * stmt list)
  | OMPDistributeParallelForSimdDirective of (stmt_info * stmt list)
  | OMPDistributeSimdDirective of (stmt_info * stmt list)
  | OMPForDirective of (stmt_info * stmt list)
  | OMPForSimdDirective of (stmt_info * stmt list)
  | OMPParallelForDirective of (stmt_info * stmt list)
  | OMPParallelForSimdDirective of (stmt_info * stmt list)
  | OMPSimdDirective of (stmt_info * stmt list)
  | OMPTargetParallelForSimdDirective of (stmt_info * stmt list)
  | OMPTargetSimdDirective of (stmt_info * stmt list)
  | OMPTargetTeamsDistributeDirective of (stmt_info * stmt list)
  | OMPTargetTeamsDistributeParallelForDirective of (stmt_info * stmt list)
  | OMPTargetTeamsDistributeParallelForSimdDirective
      of (stmt_info * stmt list)
  | OMPTargetTeamsDistributeSimdDirective of (stmt_info * stmt list)
  | OMPTaskLoopDirective of (stmt_info * stmt list)
  | OMPTaskLoopSimdDirective of (stmt_info * stmt list)
  | OMPTeamsDistributeDirective of (stmt_info * stmt list)
  | OMPTeamsDistributeParallelForDirective of (stmt_info * stmt list)
  | OMPTeamsDistributeParallelForSimdDirective of (stmt_info * stmt list)
  | OMPTeamsDistributeSimdDirective of (stmt_info * stmt list)
  | OMPMasterDirective of (stmt_info * stmt list)
  | OMPOrderedDirective of (stmt_info * stmt list)
  | OMPParallelDirective of (stmt_info * stmt list)
  | OMPParallelSectionsDirective of (stmt_info * stmt list)
  | OMPSectionDirective of (stmt_info * stmt list)
  | OMPSectionsDirective of (stmt_info * stmt list)
  | OMPSingleDirective of (stmt_info * stmt list)
  | OMPTargetDataDirective of (stmt_info * stmt list)
  | OMPTargetDirective of (stmt_info * stmt list)
  | OMPTargetEnterDataDirective of (stmt_info * stmt list)
  | OMPTargetExitDataDirective of (stmt_info * stmt list)
  | OMPTargetParallelDirective of (stmt_info * stmt list)
  | OMPTargetParallelForDirective of (stmt_info * stmt list)
  | OMPTargetTeamsDirective of (stmt_info * stmt list)
  | OMPTargetUpdateDirective of (stmt_info * stmt list)
  | OMPTaskDirective of (stmt_info * stmt list)
  | OMPTaskgroupDirective of (stmt_info * stmt list)
  | OMPTaskwaitDirective of (stmt_info * stmt list)
  | OMPTaskyieldDirective of (stmt_info * stmt list)
  | OMPTeamsDirective of (stmt_info * stmt list)
  | ObjCAtCatchStmt of (stmt_info * stmt list * obj_c_message_expr_kind)
  | ObjCAtFinallyStmt of (stmt_info * stmt list)
  | ObjCAtSynchronizedStmt of (stmt_info * stmt list)
  | ObjCAtThrowStmt of (stmt_info * stmt list)
  | ObjCAtTryStmt of (stmt_info * stmt list)
  | ObjCAutoreleasePoolStmt of (stmt_info * stmt list)
  | ObjCForCollectionStmt of (stmt_info * stmt list)
  | ReturnStmt of (stmt_info * stmt list)
  | SEHExceptStmt of (stmt_info * stmt list)
  | SEHFinallyStmt of (stmt_info * stmt list)
  | SEHLeaveStmt of (stmt_info * stmt list)
  | SEHTryStmt of (stmt_info * stmt list)
  | CaseStmt of (stmt_info * stmt list)
  | DefaultStmt of (stmt_info * stmt list)
  | SwitchStmt of (stmt_info * stmt list)
  | WhileStmt of (stmt_info * stmt list)


and template_decl_info = Clang_ast_t.template_decl_info = {
  tdi_specializations (*atd specializations *): decl list
}

and var_decl_info = Clang_ast_t.var_decl_info = {
  vdi_storage_class (*atd storage_class *): string option;
  vdi_tls_kind (*atd tls_kind *): tls_kind;
  vdi_is_global (*atd is_global *): bool;
  vdi_is_static_local (*atd is_static_local *): bool;
  vdi_is_module_private (*atd is_module_private *): bool;
  vdi_is_nrvo_variable (*atd is_nrvo_variable *): bool;
  vdi_is_const_expr (*atd is_const_expr *): bool;
  vdi_init_expr (*atd init_expr *): stmt option;
  vdi_parm_index_in_function (*atd parm_index_in_function *): int option
}

type lookup = Clang_ast_t.lookup = {
  lup_decl_name (*atd decl_name *): string;
  lup_decl_refs (*atd decl_refs *): decl_ref list
}

type lookups = Clang_ast_t.lookups = {
  lups_decl_ref (*atd decl_ref *): decl_ref;
  lups_primary_context_pointer (*atd primary_context_pointer *):
    pointer option;
  lups_lookups (*atd lookups *): lookup list;
  lups_has_undeserialized_decls (*atd has_undeserialized_decls *): bool
}

val validate_access_specifier :
  Ag_util.Validation.path -> access_specifier -> Ag_util.Validation.error option
  (** Validate a value of type {!access_specifier}. *)

val validate_binary_operator_kind :
  Ag_util.Validation.path -> binary_operator_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!binary_operator_kind}. *)

val create_binary_operator_info :
  boi_kind: binary_operator_kind ->
  unit -> binary_operator_info
  (** Create a record of type {!binary_operator_info}. *)

val validate_binary_operator_info :
  Ag_util.Validation.path -> binary_operator_info -> Ag_util.Validation.error option
  (** Validate a value of type {!binary_operator_info}. *)

val validate_builtin_type_kind :
  Ag_util.Validation.path -> builtin_type_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!builtin_type_kind}. *)

val validate_cast_kind :
  Ag_util.Validation.path -> cast_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!cast_kind}. *)

val create_cxx_base_specifier :
  xbs_name: string ->
  ?xbs_virtual: bool ->
  unit -> cxx_base_specifier
  (** Create a record of type {!cxx_base_specifier}. *)

val validate_cxx_base_specifier :
  Ag_util.Validation.path -> cxx_base_specifier -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_base_specifier}. *)

val create_cast_expr_info :
  cei_cast_kind: cast_kind ->
  cei_base_path: cxx_base_specifier list ->
  unit -> cast_expr_info
  (** Create a record of type {!cast_expr_info}. *)

val validate_cast_expr_info :
  Ag_util.Validation.path -> cast_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cast_expr_info}. *)

val create_cxx_noexcept_expr_info :
  ?xnee_value: bool ->
  unit -> cxx_noexcept_expr_info
  (** Create a record of type {!cxx_noexcept_expr_info}. *)

val validate_cxx_noexcept_expr_info :
  Ag_util.Validation.path -> cxx_noexcept_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_noexcept_expr_info}. *)

val create_decl_context_info :
  ?dci_has_external_lexical_storage: bool ->
  ?dci_has_external_visible_storage: bool ->
  unit -> decl_context_info
  (** Create a record of type {!decl_context_info}. *)

val validate_decl_context_info :
  Ag_util.Validation.path -> decl_context_info -> Ag_util.Validation.error option
  (** Validate a value of type {!decl_context_info}. *)

val validate_decl_kind :
  Ag_util.Validation.path -> decl_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!decl_kind}. *)

val validate_declaration_name_kind :
  Ag_util.Validation.path -> declaration_name_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!declaration_name_kind}. *)

val create_declaration_name :
  dn_kind: declaration_name_kind ->
  dn_name: string ->
  unit -> declaration_name
  (** Create a record of type {!declaration_name}. *)

val validate_declaration_name :
  Ag_util.Validation.path -> declaration_name -> Ag_util.Validation.error option
  (** Validate a value of type {!declaration_name}. *)

val validate_enum_decl_scope :
  Ag_util.Validation.path -> enum_decl_scope -> Ag_util.Validation.error option
  (** Validate a value of type {!enum_decl_scope}. *)

val create_enum_decl_info :
  ?edi_scope: enum_decl_scope ->
  ?edi_is_module_private: bool ->
  unit -> enum_decl_info
  (** Create a record of type {!enum_decl_info}. *)

val validate_enum_decl_info :
  Ag_util.Validation.path -> enum_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!enum_decl_info}. *)

val validate_input_kind :
  Ag_util.Validation.path -> input_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!input_kind}. *)

val create_integer_literal_info :
  ?ili_is_signed: bool ->
  ili_bitwidth: int ->
  ili_value: string ->
  unit -> integer_literal_info
  (** Create a record of type {!integer_literal_info}. *)

val validate_integer_literal_info :
  Ag_util.Validation.path -> integer_literal_info -> Ag_util.Validation.error option
  (** Validate a value of type {!integer_literal_info}. *)

val validate_lambda_capture_kind :
  Ag_util.Validation.path -> lambda_capture_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!lambda_capture_kind}. *)

val create_named_decl_info :
  ni_name: string ->
  ni_qual_name: string list ->
  unit -> named_decl_info
  (** Create a record of type {!named_decl_info}. *)

val validate_named_decl_info :
  Ag_util.Validation.path -> named_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!named_decl_info}. *)

val validate_obj_c_access_control :
  Ag_util.Validation.path -> obj_c_access_control -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_access_control}. *)

val create_obj_c_availability_check_expr_info :
  ?oacei_version: string ->
  unit -> obj_c_availability_check_expr_info
  (** Create a record of type {!obj_c_availability_check_expr_info}. *)

val validate_obj_c_availability_check_expr_info :
  Ag_util.Validation.path -> obj_c_availability_check_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_availability_check_expr_info}. *)

val create_obj_c_ivar_decl_info :
  ?ovdi_is_synthesize: bool ->
  ?ovdi_access_control: obj_c_access_control ->
  unit -> obj_c_ivar_decl_info
  (** Create a record of type {!obj_c_ivar_decl_info}. *)

val validate_obj_c_ivar_decl_info :
  Ag_util.Validation.path -> obj_c_ivar_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_ivar_decl_info}. *)

val validate_obj_c_property_control :
  Ag_util.Validation.path -> obj_c_property_control -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_property_control}. *)

val validate_obj_c_subscript_kind :
  Ag_util.Validation.path -> obj_c_subscript_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_subscript_kind}. *)

val validate_objc_lifetime_attr :
  Ag_util.Validation.path -> objc_lifetime_attr -> Ag_util.Validation.error option
  (** Validate a value of type {!objc_lifetime_attr}. *)

val validate_object_kind :
  Ag_util.Validation.path -> object_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!object_kind}. *)

val validate_pointer :
  Ag_util.Validation.path -> pointer -> Ag_util.Validation.error option
  (** Validate a value of type {!pointer}. *)

val create_addr_label_expr_info :
  alei_label: string ->
  alei_pointer: pointer ->
  unit -> addr_label_expr_info
  (** Create a record of type {!addr_label_expr_info}. *)

val validate_addr_label_expr_info :
  Ag_util.Validation.path -> addr_label_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!addr_label_expr_info}. *)

val create_cxx_new_expr_info :
  ?xnei_is_array: bool ->
  ?xnei_array_size_expr: pointer ->
  ?xnei_initializer_expr: pointer ->
  unit -> cxx_new_expr_info
  (** Create a record of type {!cxx_new_expr_info}. *)

val validate_cxx_new_expr_info :
  Ag_util.Validation.path -> cxx_new_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_new_expr_info}. *)

val validate_cxx_temporary :
  Ag_util.Validation.path -> cxx_temporary -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_temporary}. *)

val create_cxx_bind_temporary_expr_info :
  xbtei_cxx_temporary: cxx_temporary ->
  unit -> cxx_bind_temporary_expr_info
  (** Create a record of type {!cxx_bind_temporary_expr_info}. *)

val validate_cxx_bind_temporary_expr_info :
  Ag_util.Validation.path -> cxx_bind_temporary_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_bind_temporary_expr_info}. *)

val create_goto_stmt_info :
  gsi_label: string ->
  gsi_pointer: pointer ->
  unit -> goto_stmt_info
  (** Create a record of type {!goto_stmt_info}. *)

val validate_goto_stmt_info :
  Ag_util.Validation.path -> goto_stmt_info -> Ag_util.Validation.error option
  (** Validate a value of type {!goto_stmt_info}. *)

val validate_predefined_expr_type :
  Ag_util.Validation.path -> predefined_expr_type -> Ag_util.Validation.error option
  (** Validate a value of type {!predefined_expr_type}. *)

val validate_property_attribute :
  Ag_util.Validation.path -> property_attribute -> Ag_util.Validation.error option
  (** Validate a value of type {!property_attribute}. *)

val validate_property_implementation :
  Ag_util.Validation.path -> property_implementation -> Ag_util.Validation.error option
  (** Validate a value of type {!property_implementation}. *)

val create_record_decl_info :
  rdi_definition_ptr: pointer ->
  ?rdi_is_module_private: bool ->
  ?rdi_is_complete_definition: bool ->
  ?rdi_is_dependent_type: bool ->
  unit -> record_decl_info
  (** Create a record of type {!record_decl_info}. *)

val validate_record_decl_info :
  Ag_util.Validation.path -> record_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!record_decl_info}. *)

val validate_selector :
  Ag_util.Validation.path -> selector -> Ag_util.Validation.error option
  (** Validate a value of type {!selector}. *)

val create_obj_c_method_ref_info :
  ?mri_getter: selector ->
  ?mri_setter: selector ->
  unit -> obj_c_method_ref_info
  (** Create a record of type {!obj_c_method_ref_info}. *)

val validate_obj_c_method_ref_info :
  Ag_util.Validation.path -> obj_c_method_ref_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_method_ref_info}. *)

val create_obj_c_subscript_ref_expr_info :
  osrei_kind: obj_c_subscript_kind ->
  ?osrei_getter: selector ->
  ?osrei_setter: selector ->
  unit -> obj_c_subscript_ref_expr_info
  (** Create a record of type {!obj_c_subscript_ref_expr_info}. *)

val validate_obj_c_subscript_ref_expr_info :
  Ag_util.Validation.path -> obj_c_subscript_ref_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_subscript_ref_expr_info}. *)

val create_objc_boxed_expr_info :
  ?obei_boxing_method: selector ->
  unit -> objc_boxed_expr_info
  (** Create a record of type {!objc_boxed_expr_info}. *)

val validate_objc_boxed_expr_info :
  Ag_util.Validation.path -> objc_boxed_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!objc_boxed_expr_info}. *)

val validate_source_file :
  Ag_util.Validation.path -> source_file -> Ag_util.Validation.error option
  (** Validate a value of type {!source_file}. *)

val create_source_location :
  ?sl_file: source_file ->
  ?sl_line: int ->
  ?sl_column: int ->
  unit -> source_location
  (** Create a record of type {!source_location}. *)

val validate_source_location :
  Ag_util.Validation.path -> source_location -> Ag_util.Validation.error option
  (** Validate a value of type {!source_location}. *)

val validate_source_range :
  Ag_util.Validation.path -> source_range -> Ag_util.Validation.error option
  (** Validate a value of type {!source_range}. *)

val create_attribute_info :
  ai_pointer: pointer ->
  ai_source_range: source_range ->
  ai_parameters: string list ->
  ?ai_is_inherited: bool ->
  ?ai_is_implicit: bool ->
  unit -> attribute_info
  (** Create a record of type {!attribute_info}. *)

val validate_attribute_info :
  Ag_util.Validation.path -> attribute_info -> Ag_util.Validation.error option
  (** Validate a value of type {!attribute_info}. *)

val validate_attribute :
  Ag_util.Validation.path -> attribute -> Ag_util.Validation.error option
  (** Validate a value of type {!attribute}. *)

val create_comment_info :
  ci_parent_pointer: pointer ->
  ci_source_range: source_range ->
  unit -> comment_info
  (** Create a record of type {!comment_info}. *)

val validate_comment_info :
  Ag_util.Validation.path -> comment_info -> Ag_util.Validation.error option
  (** Validate a value of type {!comment_info}. *)

val validate_specifier_kind :
  Ag_util.Validation.path -> specifier_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!specifier_kind}. *)

val create_stmt_info :
  si_pointer: pointer ->
  si_source_range: source_range ->
  unit -> stmt_info
  (** Create a record of type {!stmt_info}. *)

val validate_stmt_info :
  Ag_util.Validation.path -> stmt_info -> Ag_util.Validation.error option
  (** Validate a value of type {!stmt_info}. *)

val validate_tag_kind :
  Ag_util.Validation.path -> tag_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!tag_kind}. *)

val validate_tls_kind :
  Ag_util.Validation.path -> tls_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!tls_kind}. *)

val validate_type_attribute_kind :
  Ag_util.Validation.path -> type_attribute_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!type_attribute_kind}. *)

val create_attr_type_info :
  ati_attr_kind: type_attribute_kind ->
  ?ati_lifetime: objc_lifetime_attr ->
  unit -> attr_type_info
  (** Create a record of type {!attr_type_info}. *)

val validate_attr_type_info :
  Ag_util.Validation.path -> attr_type_info -> Ag_util.Validation.error option
  (** Validate a value of type {!attr_type_info}. *)

val validate_type_ptr :
  Ag_util.Validation.path -> type_ptr -> Ag_util.Validation.error option
  (** Validate a value of type {!type_ptr}. *)

val create_qual_type :
  qt_type_ptr: type_ptr ->
  ?qt_is_const: bool ->
  ?qt_is_restrict: bool ->
  ?qt_is_volatile: bool ->
  unit -> qual_type
  (** Create a record of type {!qual_type}. *)

val validate_qual_type :
  Ag_util.Validation.path -> qual_type -> Ag_util.Validation.error option
  (** Validate a value of type {!qual_type}. *)

val create_array_type_info :
  arti_element_type: qual_type ->
  ?arti_stride: int ->
  unit -> array_type_info
  (** Create a record of type {!array_type_info}. *)

val validate_array_type_info :
  Ag_util.Validation.path -> array_type_info -> Ag_util.Validation.error option
  (** Validate a value of type {!array_type_info}. *)

val create_compound_assign_operator_info :
  caoi_lhs_type: qual_type ->
  caoi_result_type: qual_type ->
  unit -> compound_assign_operator_info
  (** Create a record of type {!compound_assign_operator_info}. *)

val validate_compound_assign_operator_info :
  Ag_util.Validation.path -> compound_assign_operator_info -> Ag_util.Validation.error option
  (** Validate a value of type {!compound_assign_operator_info}. *)

val create_cxx_delete_expr_info :
  ?xdei_is_array: bool ->
  xdei_destroyed_type: qual_type ->
  unit -> cxx_delete_expr_info
  (** Create a record of type {!cxx_delete_expr_info}. *)

val validate_cxx_delete_expr_info :
  Ag_util.Validation.path -> cxx_delete_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_delete_expr_info}. *)

val create_decl_ref :
  dr_kind: decl_kind ->
  dr_decl_pointer: pointer ->
  ?dr_name: named_decl_info ->
  ?dr_is_hidden: bool ->
  ?dr_qual_type: qual_type ->
  unit -> decl_ref
  (** Create a record of type {!decl_ref}. *)

val validate_decl_ref :
  Ag_util.Validation.path -> decl_ref -> Ag_util.Validation.error option
  (** Validate a value of type {!decl_ref}. *)

val create_cxx_construct_expr_info :
  xcei_decl_ref: decl_ref ->
  ?xcei_is_elidable: bool ->
  ?xcei_requires_zero_initialization: bool ->
  unit -> cxx_construct_expr_info
  (** Create a record of type {!cxx_construct_expr_info}. *)

val validate_cxx_construct_expr_info :
  Ag_util.Validation.path -> cxx_construct_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_construct_expr_info}. *)

val validate_cxx_ctor_initializer_subject :
  Ag_util.Validation.path -> cxx_ctor_initializer_subject -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_ctor_initializer_subject}. *)

val create_decl_ref_expr_info :
  ?drti_decl_ref: decl_ref ->
  ?drti_found_decl_ref: decl_ref ->
  unit -> decl_ref_expr_info
  (** Create a record of type {!decl_ref_expr_info}. *)

val validate_decl_ref_expr_info :
  Ag_util.Validation.path -> decl_ref_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!decl_ref_expr_info}. *)

val create_expr_with_cleanups_info :
  ?ewci_decl_refs: decl_ref list ->
  unit -> expr_with_cleanups_info
  (** Create a record of type {!expr_with_cleanups_info}. *)

val validate_expr_with_cleanups_info :
  Ag_util.Validation.path -> expr_with_cleanups_info -> Ag_util.Validation.error option
  (** Validate a value of type {!expr_with_cleanups_info}. *)

val create_function_type_info :
  fti_return_type: qual_type ->
  unit -> function_type_info
  (** Create a record of type {!function_type_info}. *)

val validate_function_type_info :
  Ag_util.Validation.path -> function_type_info -> Ag_util.Validation.error option
  (** Validate a value of type {!function_type_info}. *)

val create_materialize_temporary_expr_info :
  ?mtei_decl_ref: decl_ref ->
  unit -> materialize_temporary_expr_info
  (** Create a record of type {!materialize_temporary_expr_info}. *)

val validate_materialize_temporary_expr_info :
  Ag_util.Validation.path -> materialize_temporary_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!materialize_temporary_expr_info}. *)

val create_member_expr_info :
  ?mei_is_arrow: bool ->
  ?mei_performs_virtual_dispatch: bool ->
  mei_name: named_decl_info ->
  mei_decl_ref: decl_ref ->
  unit -> member_expr_info
  (** Create a record of type {!member_expr_info}. *)

val validate_member_expr_info :
  Ag_util.Validation.path -> member_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!member_expr_info}. *)

val create_namespace_decl_info :
  ?ndi_is_inline: bool ->
  ?ndi_original_namespace: decl_ref ->
  unit -> namespace_decl_info
  (** Create a record of type {!namespace_decl_info}. *)

val validate_namespace_decl_info :
  Ag_util.Validation.path -> namespace_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!namespace_decl_info}. *)

val create_nested_name_specifier_loc :
  nnsl_kind: specifier_kind ->
  ?nnsl_ref: decl_ref ->
  unit -> nested_name_specifier_loc
  (** Create a record of type {!nested_name_specifier_loc}. *)

val validate_nested_name_specifier_loc :
  Ag_util.Validation.path -> nested_name_specifier_loc -> Ag_util.Validation.error option
  (** Validate a value of type {!nested_name_specifier_loc}. *)

val create_namespace_alias_decl_info :
  nadi_namespace_loc: source_location ->
  nadi_target_name_loc: source_location ->
  nadi_nested_name_specifier_locs: nested_name_specifier_loc list ->
  nadi_namespace: decl_ref ->
  unit -> namespace_alias_decl_info
  (** Create a record of type {!namespace_alias_decl_info}. *)

val validate_namespace_alias_decl_info :
  Ag_util.Validation.path -> namespace_alias_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!namespace_alias_decl_info}. *)

val create_obj_c_category_decl_info :
  ?odi_class_interface: decl_ref ->
  ?odi_implementation: decl_ref ->
  ?odi_protocols: decl_ref list ->
  unit -> obj_c_category_decl_info
  (** Create a record of type {!obj_c_category_decl_info}. *)

val validate_obj_c_category_decl_info :
  Ag_util.Validation.path -> obj_c_category_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_category_decl_info}. *)

val create_obj_c_category_impl_decl_info :
  ?ocidi_class_interface: decl_ref ->
  ?ocidi_category_decl: decl_ref ->
  unit -> obj_c_category_impl_decl_info
  (** Create a record of type {!obj_c_category_impl_decl_info}. *)

val validate_obj_c_category_impl_decl_info :
  Ag_util.Validation.path -> obj_c_category_impl_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_category_impl_decl_info}. *)

val create_obj_c_compatible_alias_decl_info :
  ?ocadi_class_interface: decl_ref ->
  unit -> obj_c_compatible_alias_decl_info
  (** Create a record of type {!obj_c_compatible_alias_decl_info}. *)

val validate_obj_c_compatible_alias_decl_info :
  Ag_util.Validation.path -> obj_c_compatible_alias_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_compatible_alias_decl_info}. *)

val create_obj_c_interface_decl_info :
  ?otdi_super: decl_ref ->
  ?otdi_implementation: decl_ref ->
  ?otdi_protocols: decl_ref list ->
  ?otdi_known_categories: decl_ref list ->
  unit -> obj_c_interface_decl_info
  (** Create a record of type {!obj_c_interface_decl_info}. *)

val validate_obj_c_interface_decl_info :
  Ag_util.Validation.path -> obj_c_interface_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_interface_decl_info}. *)

val create_obj_c_ivar_ref_expr_info :
  ovrei_decl_ref: decl_ref ->
  ovrei_pointer: pointer ->
  ?ovrei_is_free_ivar: bool ->
  unit -> obj_c_ivar_ref_expr_info
  (** Create a record of type {!obj_c_ivar_ref_expr_info}. *)

val validate_obj_c_ivar_ref_expr_info :
  Ag_util.Validation.path -> obj_c_ivar_ref_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_ivar_ref_expr_info}. *)

val create_obj_c_property_decl_info :
  opdi_qual_type: qual_type ->
  ?opdi_getter_method: decl_ref ->
  ?opdi_setter_method: decl_ref ->
  ?opdi_ivar_decl: decl_ref ->
  ?opdi_property_control: obj_c_property_control ->
  ?opdi_property_attributes: property_attribute list ->
  unit -> obj_c_property_decl_info
  (** Create a record of type {!obj_c_property_decl_info}. *)

val validate_obj_c_property_decl_info :
  Ag_util.Validation.path -> obj_c_property_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_property_decl_info}. *)

val create_obj_c_property_impl_decl_info :
  opidi_implementation: property_implementation ->
  ?opidi_property_decl: decl_ref ->
  ?opidi_ivar_decl: decl_ref ->
  unit -> obj_c_property_impl_decl_info
  (** Create a record of type {!obj_c_property_impl_decl_info}. *)

val validate_obj_c_property_impl_decl_info :
  Ag_util.Validation.path -> obj_c_property_impl_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_property_impl_decl_info}. *)

val create_obj_c_protocol_decl_info :
  ?opcdi_protocols: decl_ref list ->
  unit -> obj_c_protocol_decl_info
  (** Create a record of type {!obj_c_protocol_decl_info}. *)

val validate_obj_c_protocol_decl_info :
  Ag_util.Validation.path -> obj_c_protocol_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_protocol_decl_info}. *)

val create_objc_encode_expr_info :
  oeei_qual_type: qual_type ->
  oeei_raw: string ->
  unit -> objc_encode_expr_info
  (** Create a record of type {!objc_encode_expr_info}. *)

val validate_objc_encode_expr_info :
  Ag_util.Validation.path -> objc_encode_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!objc_encode_expr_info}. *)

val create_objc_object_type_info :
  ooti_base_type: type_ptr ->
  ?ooti_protocol_decls_ptr: pointer list ->
  ?ooti_type_args: qual_type list ->
  unit -> objc_object_type_info
  (** Create a record of type {!objc_object_type_info}. *)

val validate_objc_object_type_info :
  Ag_util.Validation.path -> objc_object_type_info -> Ag_util.Validation.error option
  (** Validate a value of type {!objc_object_type_info}. *)

val create_overload_expr_info :
  ?oei_decls: decl_ref list ->
  oei_name: declaration_name ->
  unit -> overload_expr_info
  (** Create a record of type {!overload_expr_info}. *)

val validate_overload_expr_info :
  Ag_util.Validation.path -> overload_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!overload_expr_info}. *)

val create_params_type_info :
  ?pti_params_type: qual_type list ->
  unit -> params_type_info
  (** Create a record of type {!params_type_info}. *)

val validate_params_type_info :
  Ag_util.Validation.path -> params_type_info -> Ag_util.Validation.error option
  (** Validate a value of type {!params_type_info}. *)

val validate_property_ref_kind :
  Ag_util.Validation.path -> property_ref_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!property_ref_kind}. *)

val create_obj_c_property_ref_expr_info :
  oprei_kind: property_ref_kind ->
  ?oprei_is_super_receiver: bool ->
  ?oprei_is_messaging_getter: bool ->
  ?oprei_is_messaging_setter: bool ->
  unit -> obj_c_property_ref_expr_info
  (** Create a record of type {!obj_c_property_ref_expr_info}. *)

val validate_obj_c_property_ref_expr_info :
  Ag_util.Validation.path -> obj_c_property_ref_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_property_ref_expr_info}. *)

val validate_receiver_kind :
  Ag_util.Validation.path -> receiver_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!receiver_kind}. *)

val create_obj_c_message_expr_info :
  omei_selector: string ->
  ?omei_is_definition_found: bool ->
  ?omei_decl_pointer: pointer ->
  ?omei_receiver_kind: receiver_kind ->
  unit -> obj_c_message_expr_info
  (** Create a record of type {!obj_c_message_expr_info}. *)

val validate_obj_c_message_expr_info :
  Ag_util.Validation.path -> obj_c_message_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_message_expr_info}. *)

val create_type_info :
  ti_pointer: pointer ->
  ?ti_desugared_type: type_ptr ->
  unit -> type_info
  (** Create a record of type {!type_info}. *)

val validate_type_info :
  Ag_util.Validation.path -> type_info -> Ag_util.Validation.error option
  (** Validate a value of type {!type_info}. *)

val create_type_trait_info :
  ?xtti_value: bool ->
  unit -> type_trait_info
  (** Create a record of type {!type_trait_info}. *)

val validate_type_trait_info :
  Ag_util.Validation.path -> type_trait_info -> Ag_util.Validation.error option
  (** Validate a value of type {!type_trait_info}. *)

val create_typedef_decl_info :
  ?tdi_is_module_private: bool ->
  unit -> typedef_decl_info
  (** Create a record of type {!typedef_decl_info}. *)

val validate_typedef_decl_info :
  Ag_util.Validation.path -> typedef_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!typedef_decl_info}. *)

val create_typedef_type_info :
  tti_child_type: qual_type ->
  tti_decl_ptr: pointer ->
  unit -> typedef_type_info
  (** Create a record of type {!typedef_type_info}. *)

val validate_typedef_type_info :
  Ag_util.Validation.path -> typedef_type_info -> Ag_util.Validation.error option
  (** Validate a value of type {!typedef_type_info}. *)

val validate_c_type :
  Ag_util.Validation.path -> c_type -> Ag_util.Validation.error option
  (** Validate a value of type {!c_type}. *)

val create_translation_unit_decl_info :
  tudi_input_path: source_file ->
  tudi_input_kind: input_kind ->
  ?tudi_arc_enabled: bool ->
  tudi_types: c_type list ->
  unit -> translation_unit_decl_info
  (** Create a record of type {!translation_unit_decl_info}. *)

val validate_translation_unit_decl_info :
  Ag_util.Validation.path -> translation_unit_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!translation_unit_decl_info}. *)

val validate_unary_expr_or_type_trait_kind :
  Ag_util.Validation.path -> unary_expr_or_type_trait_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!unary_expr_or_type_trait_kind}. *)

val create_unary_expr_or_type_trait_expr_info :
  uttei_kind: unary_expr_or_type_trait_kind ->
  ?uttei_qual_type: qual_type ->
  unit -> unary_expr_or_type_trait_expr_info
  (** Create a record of type {!unary_expr_or_type_trait_expr_info}. *)

val validate_unary_expr_or_type_trait_expr_info :
  Ag_util.Validation.path -> unary_expr_or_type_trait_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!unary_expr_or_type_trait_expr_info}. *)

val validate_unary_operator_kind :
  Ag_util.Validation.path -> unary_operator_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!unary_operator_kind}. *)

val create_unary_operator_info :
  uoi_kind: unary_operator_kind ->
  ?uoi_is_postfix: bool ->
  unit -> unary_operator_info
  (** Create a record of type {!unary_operator_info}. *)

val validate_unary_operator_info :
  Ag_util.Validation.path -> unary_operator_info -> Ag_util.Validation.error option
  (** Validate a value of type {!unary_operator_info}. *)

val create_unresolved_lookup_expr_info :
  ?ulei_requires_ADL: bool ->
  ?ulei_is_overloaded: bool ->
  ?ulei_naming_class: decl_ref ->
  unit -> unresolved_lookup_expr_info
  (** Create a record of type {!unresolved_lookup_expr_info}. *)

val validate_unresolved_lookup_expr_info :
  Ag_util.Validation.path -> unresolved_lookup_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!unresolved_lookup_expr_info}. *)

val create_using_directive_decl_info :
  uddi_using_location: source_location ->
  uddi_namespace_key_location: source_location ->
  uddi_nested_name_specifier_locs: nested_name_specifier_loc list ->
  ?uddi_nominated_namespace: decl_ref ->
  unit -> using_directive_decl_info
  (** Create a record of type {!using_directive_decl_info}. *)

val validate_using_directive_decl_info :
  Ag_util.Validation.path -> using_directive_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!using_directive_decl_info}. *)

val validate_value_kind :
  Ag_util.Validation.path -> value_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!value_kind}. *)

val create_expr_info :
  ei_qual_type: qual_type ->
  ?ei_value_kind: value_kind ->
  ?ei_object_kind: object_kind ->
  unit -> expr_info
  (** Create a record of type {!expr_info}. *)

val validate_expr_info :
  Ag_util.Validation.path -> expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!expr_info}. *)

val validate_template_instantiation_arg_info :
  Ag_util.Validation.path -> template_instantiation_arg_info -> Ag_util.Validation.error option
  (** Validate a value of type {!template_instantiation_arg_info}. *)

val validate_comment :
  Ag_util.Validation.path -> comment -> Ag_util.Validation.error option
  (** Validate a value of type {!comment}. *)

val create_template_specialization_info :
  tsi_template_decl: pointer ->
  ?tsi_specialization_args: template_instantiation_arg_info list ->
  unit -> template_specialization_info
  (** Create a record of type {!template_specialization_info}. *)

val validate_template_specialization_info :
  Ag_util.Validation.path -> template_specialization_info -> Ag_util.Validation.error option
  (** Validate a value of type {!template_specialization_info}. *)

val create_decl_info :
  di_pointer: pointer ->
  ?di_parent_pointer: pointer ->
  di_source_range: source_range ->
  ?di_owning_module: string ->
  ?di_is_hidden: bool ->
  ?di_is_implicit: bool ->
  ?di_is_used: bool ->
  ?di_is_this_declaration_referenced: bool ->
  ?di_is_invalid_decl: bool ->
  ?di_attributes: attribute list ->
  ?di_full_comment: comment ->
  ?di_access: access_specifier ->
  unit -> decl_info
  (** Create a record of type {!decl_info}. *)

val validate_decl_info :
  Ag_util.Validation.path -> decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!decl_info}. *)

val create_block_captured_variable :
  ?bcv_is_by_ref: bool ->
  ?bcv_is_nested: bool ->
  ?bcv_variable: decl_ref ->
  ?bcv_copy_expr: stmt ->
  unit -> block_captured_variable
  (** Create a record of type {!block_captured_variable}. *)

val validate_block_captured_variable :
  Ag_util.Validation.path -> block_captured_variable -> Ag_util.Validation.error option
  (** Validate a value of type {!block_captured_variable}. *)

val create_block_decl_info :
  ?bdi_parameters: decl list ->
  ?bdi_is_variadic: bool ->
  ?bdi_captures_cxx_this: bool ->
  ?bdi_captured_variables: block_captured_variable list ->
  ?bdi_body: stmt ->
  unit -> block_decl_info
  (** Create a record of type {!block_decl_info}. *)

val validate_block_decl_info :
  Ag_util.Validation.path -> block_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!block_decl_info}. *)

val create_cxx_catch_stmt_info :
  ?xcsi_variable: decl ->
  unit -> cxx_catch_stmt_info
  (** Create a record of type {!cxx_catch_stmt_info}. *)

val validate_cxx_catch_stmt_info :
  Ag_util.Validation.path -> cxx_catch_stmt_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_catch_stmt_info}. *)

val create_cxx_ctor_initializer :
  xci_subject: cxx_ctor_initializer_subject ->
  xci_source_range: source_range ->
  ?xci_init_expr: stmt ->
  unit -> cxx_ctor_initializer
  (** Create a record of type {!cxx_ctor_initializer}. *)

val validate_cxx_ctor_initializer :
  Ag_util.Validation.path -> cxx_ctor_initializer -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_ctor_initializer}. *)

val create_cxx_default_expr_info :
  ?xdaei_init_expr: stmt ->
  unit -> cxx_default_expr_info
  (** Create a record of type {!cxx_default_expr_info}. *)

val validate_cxx_default_expr_info :
  Ag_util.Validation.path -> cxx_default_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_default_expr_info}. *)

val create_cxx_method_decl_info :
  ?xmdi_is_virtual: bool ->
  ?xmdi_is_static: bool ->
  ?xmdi_is_constexpr: bool ->
  ?xmdi_cxx_ctor_initializers: cxx_ctor_initializer list ->
  ?xmdi_overriden_methods: decl_ref list ->
  unit -> cxx_method_decl_info
  (** Create a record of type {!cxx_method_decl_info}. *)

val validate_cxx_method_decl_info :
  Ag_util.Validation.path -> cxx_method_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_method_decl_info}. *)

val create_cxx_record_decl_info :
  ?xrdi_bases: type_ptr list ->
  ?xrdi_vbases: type_ptr list ->
  ?xrdi_transitive_vbases: type_ptr list ->
  ?xrdi_is_pod: bool ->
  ?xrdi_destructor: decl_ref ->
  ?xrdi_lambda_call_operator: decl_ref ->
  ?xrdi_lambda_captures: lambda_capture_info list ->
  unit -> cxx_record_decl_info
  (** Create a record of type {!cxx_record_decl_info}. *)

val validate_cxx_record_decl_info :
  Ag_util.Validation.path -> cxx_record_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!cxx_record_decl_info}. *)

val validate_decl :
  Ag_util.Validation.path -> decl -> Ag_util.Validation.error option
  (** Validate a value of type {!decl}. *)

val create_enum_constant_decl_info :
  ?ecdi_init_expr: stmt ->
  unit -> enum_constant_decl_info
  (** Create a record of type {!enum_constant_decl_info}. *)

val validate_enum_constant_decl_info :
  Ag_util.Validation.path -> enum_constant_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!enum_constant_decl_info}. *)

val create_field_decl_info :
  ?fldi_is_mutable: bool ->
  ?fldi_is_module_private: bool ->
  ?fldi_init_expr: stmt ->
  ?fldi_bit_width_expr: stmt ->
  unit -> field_decl_info
  (** Create a record of type {!field_decl_info}. *)

val validate_field_decl_info :
  Ag_util.Validation.path -> field_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!field_decl_info}. *)

val validate_friend_info :
  Ag_util.Validation.path -> friend_info -> Ag_util.Validation.error option
  (** Validate a value of type {!friend_info}. *)

val create_function_decl_info :
  ?fdi_mangled_name: string ->
  ?fdi_storage_class: string ->
  ?fdi_is_inline: bool ->
  ?fdi_is_module_private: bool ->
  ?fdi_is_pure: bool ->
  ?fdi_is_delete_as_written: bool ->
  ?fdi_is_no_throw: bool ->
  ?fdi_parameters: decl list ->
  ?fdi_decl_ptr_with_body: pointer ->
  ?fdi_body: stmt ->
  ?fdi_template_specialization: template_specialization_info ->
  unit -> function_decl_info
  (** Create a record of type {!function_decl_info}. *)

val validate_function_decl_info :
  Ag_util.Validation.path -> function_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!function_decl_info}. *)

val create_lambda_capture_info :
  lci_capture_kind: lambda_capture_kind ->
  ?lci_capture_this: bool ->
  ?lci_capture_variable: bool ->
  ?lci_capture_VLAtype: bool ->
  ?lci_init_captured_vardecl: decl ->
  ?lci_captured_var: decl_ref ->
  ?lci_is_implicit: bool ->
  lci_location: source_range ->
  ?lci_is_pack_expansion: bool ->
  unit -> lambda_capture_info
  (** Create a record of type {!lambda_capture_info}. *)

val validate_lambda_capture_info :
  Ag_util.Validation.path -> lambda_capture_info -> Ag_util.Validation.error option
  (** Validate a value of type {!lambda_capture_info}. *)

val create_lambda_expr_info :
  lei_lambda_decl: decl ->
  unit -> lambda_expr_info
  (** Create a record of type {!lambda_expr_info}. *)

val validate_lambda_expr_info :
  Ag_util.Validation.path -> lambda_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!lambda_expr_info}. *)

val create_obj_c_implementation_decl_info :
  ?oidi_super: decl_ref ->
  ?oidi_class_interface: decl_ref ->
  ?oidi_ivar_initializers: cxx_ctor_initializer list ->
  unit -> obj_c_implementation_decl_info
  (** Create a record of type {!obj_c_implementation_decl_info}. *)

val validate_obj_c_implementation_decl_info :
  Ag_util.Validation.path -> obj_c_implementation_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_implementation_decl_info}. *)

val validate_obj_c_message_expr_kind :
  Ag_util.Validation.path -> obj_c_message_expr_kind -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_message_expr_kind}. *)

val create_obj_c_method_decl_info :
  ?omdi_is_instance_method: bool ->
  omdi_result_type: qual_type ->
  ?omdi_is_property_accessor: bool ->
  ?omdi_property_decl: decl_ref ->
  ?omdi_parameters: decl list ->
  ?omdi_implicit_parameters: decl list ->
  ?omdi_is_variadic: bool ->
  ?omdi_body: stmt ->
  unit -> obj_c_method_decl_info
  (** Create a record of type {!obj_c_method_decl_info}. *)

val validate_obj_c_method_decl_info :
  Ag_util.Validation.path -> obj_c_method_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!obj_c_method_decl_info}. *)

val create_opaque_value_expr_info :
  ?ovei_source_expr: stmt ->
  unit -> opaque_value_expr_info
  (** Create a record of type {!opaque_value_expr_info}. *)

val validate_opaque_value_expr_info :
  Ag_util.Validation.path -> opaque_value_expr_info -> Ag_util.Validation.error option
  (** Validate a value of type {!opaque_value_expr_info}. *)

val validate_stmt :
  Ag_util.Validation.path -> stmt -> Ag_util.Validation.error option
  (** Validate a value of type {!stmt}. *)

val create_template_decl_info :
  ?tdi_specializations: decl list ->
  unit -> template_decl_info
  (** Create a record of type {!template_decl_info}. *)

val validate_template_decl_info :
  Ag_util.Validation.path -> template_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!template_decl_info}. *)

val create_var_decl_info :
  ?vdi_storage_class: string ->
  ?vdi_tls_kind: tls_kind ->
  ?vdi_is_global: bool ->
  ?vdi_is_static_local: bool ->
  ?vdi_is_module_private: bool ->
  ?vdi_is_nrvo_variable: bool ->
  ?vdi_is_const_expr: bool ->
  ?vdi_init_expr: stmt ->
  ?vdi_parm_index_in_function: int ->
  unit -> var_decl_info
  (** Create a record of type {!var_decl_info}. *)

val validate_var_decl_info :
  Ag_util.Validation.path -> var_decl_info -> Ag_util.Validation.error option
  (** Validate a value of type {!var_decl_info}. *)

val create_lookup :
  lup_decl_name: string ->
  lup_decl_refs: decl_ref list ->
  unit -> lookup
  (** Create a record of type {!lookup}. *)

val validate_lookup :
  Ag_util.Validation.path -> lookup -> Ag_util.Validation.error option
  (** Validate a value of type {!lookup}. *)

val create_lookups :
  lups_decl_ref: decl_ref ->
  ?lups_primary_context_pointer: pointer ->
  lups_lookups: lookup list ->
  ?lups_has_undeserialized_decls: bool ->
  unit -> lookups
  (** Create a record of type {!lookups}. *)

val validate_lookups :
  Ag_util.Validation.path -> lookups -> Ag_util.Validation.error option
  (** Validate a value of type {!lookups}. *)

