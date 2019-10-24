









//===----------------------------------------------------------------------===//
// ASTExporter Visitor
//===----------------------------------------------------------------------===//

namespace ASTLib {

struct ASTExporterOptions : ASTPluginLib::PluginASTOptionsBase {
  bool withPointers = true;
  bool dumpComments = false;
  bool useMacroExpansionLocation = true;
  ATDWriter::ATDWriterOptions atdWriterOptions = {
      .useYojson = false, .prettifyJson = true,
  };

  void loadValuesFromEnvAndMap(
      const ASTPluginLib::PluginASTOptionsBase::argmap_t &map) {
    ASTPluginLib::PluginASTOptionsBase::loadValuesFromEnvAndMap(map);
    loadBool(map, "AST_WITH_POINTERS", withPointers);
    loadBool(map, "USE_YOJSON", atdWriterOptions.useYojson);
    loadBool(map, "PRETTIFY_JSON", atdWriterOptions.prettifyJson);
  }
};

using namespace clang;
using namespace clang::comments;

template <class Impl>
struct TupleSizeBase {
// Decls





























int AccessSpec##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int Block##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int Captured##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int ClassScopeFunctionSpecialization##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int Empty##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int Export##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int ExternCContext##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int FileScopeAsm##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int Friend##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int FriendTemplate##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int Import##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int LinkageSpec##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int Named##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }



int Label##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int Namespace##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int NamespaceAlias##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int ObjCCompatibleAlias##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int ObjCContainer##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }



int ObjCCategory##DeclTupleSize() { return static_cast<Impl *>(this)-> ObjCContainerDecl##TupleSize(); }





int ObjCImpl##DeclTupleSize() { return static_cast<Impl *>(this)-> ObjCContainerDecl##TupleSize(); }



int ObjCCategoryImpl##DeclTupleSize() { return static_cast<Impl *>(this)-> ObjCImplDecl##TupleSize(); }





int ObjCImplementation##DeclTupleSize() { return static_cast<Impl *>(this)-> ObjCImplDecl##TupleSize(); }









int ObjCInterface##DeclTupleSize() { return static_cast<Impl *>(this)-> ObjCContainerDecl##TupleSize(); }





int ObjCProtocol##DeclTupleSize() { return static_cast<Impl *>(this)-> ObjCContainerDecl##TupleSize(); }









int ObjCMethod##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int ObjCProperty##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int Template##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }



int BuiltinTemplate##DeclTupleSize() { return static_cast<Impl *>(this)-> TemplateDecl##TupleSize(); }





int RedeclarableTemplate##DeclTupleSize() { return static_cast<Impl *>(this)-> TemplateDecl##TupleSize(); }



int ClassTemplate##DeclTupleSize() { return static_cast<Impl *>(this)-> RedeclarableTemplateDecl##TupleSize(); }





int FunctionTemplate##DeclTupleSize() { return static_cast<Impl *>(this)-> RedeclarableTemplateDecl##TupleSize(); }





int TypeAliasTemplate##DeclTupleSize() { return static_cast<Impl *>(this)-> RedeclarableTemplateDecl##TupleSize(); }





int VarTemplate##DeclTupleSize() { return static_cast<Impl *>(this)-> RedeclarableTemplateDecl##TupleSize(); }









int TemplateTemplateParm##DeclTupleSize() { return static_cast<Impl *>(this)-> TemplateDecl##TupleSize(); }









int Type##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }



int Tag##DeclTupleSize() { return static_cast<Impl *>(this)-> TypeDecl##TupleSize(); }



int Enum##DeclTupleSize() { return static_cast<Impl *>(this)-> TagDecl##TupleSize(); }





int Record##DeclTupleSize() { return static_cast<Impl *>(this)-> TagDecl##TupleSize(); }



int CXXRecord##DeclTupleSize() { return static_cast<Impl *>(this)-> RecordDecl##TupleSize(); }



int ClassTemplateSpecialization##DeclTupleSize() { return static_cast<Impl *>(this)-> CXXRecordDecl##TupleSize(); }



int ClassTemplatePartialSpecialization##DeclTupleSize() { return static_cast<Impl *>(this)-> ClassTemplateSpecializationDecl##TupleSize(); }





















int TemplateTypeParm##DeclTupleSize() { return static_cast<Impl *>(this)-> TypeDecl##TupleSize(); }





int TypedefName##DeclTupleSize() { return static_cast<Impl *>(this)-> TypeDecl##TupleSize(); }



int ObjCTypeParam##DeclTupleSize() { return static_cast<Impl *>(this)-> TypedefNameDecl##TupleSize(); }





int TypeAlias##DeclTupleSize() { return static_cast<Impl *>(this)-> TypedefNameDecl##TupleSize(); }





int Typedef##DeclTupleSize() { return static_cast<Impl *>(this)-> TypedefNameDecl##TupleSize(); }









int UnresolvedUsingTypename##DeclTupleSize() { return static_cast<Impl *>(this)-> TypeDecl##TupleSize(); }









int Using##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int UsingDirective##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int UsingPack##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }





int UsingShadow##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }



int ConstructorUsingShadow##DeclTupleSize() { return static_cast<Impl *>(this)-> UsingShadowDecl##TupleSize(); }









int Value##DeclTupleSize() { return static_cast<Impl *>(this)-> NamedDecl##TupleSize(); }



int Binding##DeclTupleSize() { return static_cast<Impl *>(this)-> ValueDecl##TupleSize(); }





int Declarator##DeclTupleSize() { return static_cast<Impl *>(this)-> ValueDecl##TupleSize(); }



int Field##DeclTupleSize() { return static_cast<Impl *>(this)-> DeclaratorDecl##TupleSize(); }



int ObjCAtDefsField##DeclTupleSize() { return static_cast<Impl *>(this)-> FieldDecl##TupleSize(); }





int ObjCIvar##DeclTupleSize() { return static_cast<Impl *>(this)-> FieldDecl##TupleSize(); }









int Function##DeclTupleSize() { return static_cast<Impl *>(this)-> DeclaratorDecl##TupleSize(); }



int CXXDeductionGuide##DeclTupleSize() { return static_cast<Impl *>(this)-> FunctionDecl##TupleSize(); }





int CXXMethod##DeclTupleSize() { return static_cast<Impl *>(this)-> FunctionDecl##TupleSize(); }



int CXXConstructor##DeclTupleSize() { return static_cast<Impl *>(this)-> CXXMethodDecl##TupleSize(); }





int CXXConversion##DeclTupleSize() { return static_cast<Impl *>(this)-> CXXMethodDecl##TupleSize(); }





int CXXDestructor##DeclTupleSize() { return static_cast<Impl *>(this)-> CXXMethodDecl##TupleSize(); }













int MSProperty##DeclTupleSize() { return static_cast<Impl *>(this)-> DeclaratorDecl##TupleSize(); }





int NonTypeTemplateParm##DeclTupleSize() { return static_cast<Impl *>(this)-> DeclaratorDecl##TupleSize(); }





int Var##DeclTupleSize() { return static_cast<Impl *>(this)-> DeclaratorDecl##TupleSize(); }



int Decomposition##DeclTupleSize() { return static_cast<Impl *>(this)-> VarDecl##TupleSize(); }





int ImplicitParam##DeclTupleSize() { return static_cast<Impl *>(this)-> VarDecl##TupleSize(); }





int OMPCapturedExpr##DeclTupleSize() { return static_cast<Impl *>(this)-> VarDecl##TupleSize(); }





int ParmVar##DeclTupleSize() { return static_cast<Impl *>(this)-> VarDecl##TupleSize(); }





int VarTemplateSpecialization##DeclTupleSize() { return static_cast<Impl *>(this)-> VarDecl##TupleSize(); }



int VarTemplatePartialSpecialization##DeclTupleSize() { return static_cast<Impl *>(this)-> VarTemplateSpecializationDecl##TupleSize(); }

















int EnumConstant##DeclTupleSize() { return static_cast<Impl *>(this)-> ValueDecl##TupleSize(); }





int IndirectField##DeclTupleSize() { return static_cast<Impl *>(this)-> ValueDecl##TupleSize(); }





int OMPDeclareReduction##DeclTupleSize() { return static_cast<Impl *>(this)-> ValueDecl##TupleSize(); }





int UnresolvedUsingValue##DeclTupleSize() { return static_cast<Impl *>(this)-> ValueDecl##TupleSize(); }













int OMPThreadPrivate##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int ObjCPropertyImpl##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int PragmaComment##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int PragmaDetectMismatch##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int StaticAssert##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }





int TranslationUnit##DeclTupleSize() { return static_cast<Impl *>(this)-> Decl##TupleSize(); }






















                           













  int tupleSizeOfDeclKind(const Decl::Kind kind) {
    switch (kind) {



























case Decl::AccessSpec: return static_cast<Impl *>(this)->AccessSpec##DeclTupleSize();





case Decl::Block: return static_cast<Impl *>(this)->Block##DeclTupleSize();





case Decl::Captured: return static_cast<Impl *>(this)->Captured##DeclTupleSize();





case Decl::ClassScopeFunctionSpecialization: return static_cast<Impl *>(this)->ClassScopeFunctionSpecialization##DeclTupleSize();





case Decl::Empty: return static_cast<Impl *>(this)->Empty##DeclTupleSize();





case Decl::Export: return static_cast<Impl *>(this)->Export##DeclTupleSize();





case Decl::ExternCContext: return static_cast<Impl *>(this)->ExternCContext##DeclTupleSize();





case Decl::FileScopeAsm: return static_cast<Impl *>(this)->FileScopeAsm##DeclTupleSize();





case Decl::Friend: return static_cast<Impl *>(this)->Friend##DeclTupleSize();





case Decl::FriendTemplate: return static_cast<Impl *>(this)->FriendTemplate##DeclTupleSize();





case Decl::Import: return static_cast<Impl *>(this)->Import##DeclTupleSize();





case Decl::LinkageSpec: return static_cast<Impl *>(this)->LinkageSpec##DeclTupleSize();





                                 



case Decl::Label: return static_cast<Impl *>(this)->Label##DeclTupleSize();





case Decl::Namespace: return static_cast<Impl *>(this)->Namespace##DeclTupleSize();





case Decl::NamespaceAlias: return static_cast<Impl *>(this)->NamespaceAlias##DeclTupleSize();





case Decl::ObjCCompatibleAlias: return static_cast<Impl *>(this)->ObjCCompatibleAlias##DeclTupleSize();





                                                      



case Decl::ObjCCategory: return static_cast<Impl *>(this)->ObjCCategory##DeclTupleSize();





                                                    



case Decl::ObjCCategoryImpl: return static_cast<Impl *>(this)->ObjCCategoryImpl##DeclTupleSize();





case Decl::ObjCImplementation: return static_cast<Impl *>(this)->ObjCImplementation##DeclTupleSize();









case Decl::ObjCInterface: return static_cast<Impl *>(this)->ObjCInterface##DeclTupleSize();





case Decl::ObjCProtocol: return static_cast<Impl *>(this)->ObjCProtocol##DeclTupleSize();









case Decl::ObjCMethod: return static_cast<Impl *>(this)->ObjCMethod##DeclTupleSize();





case Decl::ObjCProperty: return static_cast<Impl *>(this)->ObjCProperty##DeclTupleSize();





                                            



case Decl::BuiltinTemplate: return static_cast<Impl *>(this)->BuiltinTemplate##DeclTupleSize();





                                                                       



case Decl::ClassTemplate: return static_cast<Impl *>(this)->ClassTemplate##DeclTupleSize();





case Decl::FunctionTemplate: return static_cast<Impl *>(this)->FunctionTemplate##DeclTupleSize();





case Decl::TypeAliasTemplate: return static_cast<Impl *>(this)->TypeAliasTemplate##DeclTupleSize();





case Decl::VarTemplate: return static_cast<Impl *>(this)->VarTemplate##DeclTupleSize();









case Decl::TemplateTemplateParm: return static_cast<Impl *>(this)->TemplateTemplateParm##DeclTupleSize();









                                    



                                 



case Decl::Enum: return static_cast<Impl *>(this)->Enum##DeclTupleSize();





case Decl::Record: return static_cast<Impl *>(this)->Record##DeclTupleSize();



case Decl::CXXRecord: return static_cast<Impl *>(this)->CXXRecord##DeclTupleSize();



case Decl::ClassTemplateSpecialization: return static_cast<Impl *>(this)->ClassTemplateSpecialization##DeclTupleSize();



case Decl::ClassTemplatePartialSpecialization: return static_cast<Impl *>(this)->ClassTemplatePartialSpecialization##DeclTupleSize();





















case Decl::TemplateTypeParm: return static_cast<Impl *>(this)->TemplateTypeParm##DeclTupleSize();





                                                 



case Decl::ObjCTypeParam: return static_cast<Impl *>(this)->ObjCTypeParam##DeclTupleSize();





case Decl::TypeAlias: return static_cast<Impl *>(this)->TypeAlias##DeclTupleSize();





case Decl::Typedef: return static_cast<Impl *>(this)->Typedef##DeclTupleSize();









case Decl::UnresolvedUsingTypename: return static_cast<Impl *>(this)->UnresolvedUsingTypename##DeclTupleSize();









case Decl::Using: return static_cast<Impl *>(this)->Using##DeclTupleSize();





case Decl::UsingDirective: return static_cast<Impl *>(this)->UsingDirective##DeclTupleSize();





case Decl::UsingPack: return static_cast<Impl *>(this)->UsingPack##DeclTupleSize();





case Decl::UsingShadow: return static_cast<Impl *>(this)->UsingShadow##DeclTupleSize();



case Decl::ConstructorUsingShadow: return static_cast<Impl *>(this)->ConstructorUsingShadow##DeclTupleSize();









                                      



case Decl::Binding: return static_cast<Impl *>(this)->Binding##DeclTupleSize();





                                                



case Decl::Field: return static_cast<Impl *>(this)->Field##DeclTupleSize();



case Decl::ObjCAtDefsField: return static_cast<Impl *>(this)->ObjCAtDefsField##DeclTupleSize();





case Decl::ObjCIvar: return static_cast<Impl *>(this)->ObjCIvar##DeclTupleSize();









case Decl::Function: return static_cast<Impl *>(this)->Function##DeclTupleSize();



case Decl::CXXDeductionGuide: return static_cast<Impl *>(this)->CXXDeductionGuide##DeclTupleSize();





case Decl::CXXMethod: return static_cast<Impl *>(this)->CXXMethod##DeclTupleSize();



case Decl::CXXConstructor: return static_cast<Impl *>(this)->CXXConstructor##DeclTupleSize();





case Decl::CXXConversion: return static_cast<Impl *>(this)->CXXConversion##DeclTupleSize();





case Decl::CXXDestructor: return static_cast<Impl *>(this)->CXXDestructor##DeclTupleSize();













case Decl::MSProperty: return static_cast<Impl *>(this)->MSProperty##DeclTupleSize();





case Decl::NonTypeTemplateParm: return static_cast<Impl *>(this)->NonTypeTemplateParm##DeclTupleSize();





case Decl::Var: return static_cast<Impl *>(this)->Var##DeclTupleSize();



case Decl::Decomposition: return static_cast<Impl *>(this)->Decomposition##DeclTupleSize();





case Decl::ImplicitParam: return static_cast<Impl *>(this)->ImplicitParam##DeclTupleSize();





case Decl::OMPCapturedExpr: return static_cast<Impl *>(this)->OMPCapturedExpr##DeclTupleSize();





case Decl::ParmVar: return static_cast<Impl *>(this)->ParmVar##DeclTupleSize();





case Decl::VarTemplateSpecialization: return static_cast<Impl *>(this)->VarTemplateSpecialization##DeclTupleSize();



case Decl::VarTemplatePartialSpecialization: return static_cast<Impl *>(this)->VarTemplatePartialSpecialization##DeclTupleSize();

















case Decl::EnumConstant: return static_cast<Impl *>(this)->EnumConstant##DeclTupleSize();





case Decl::IndirectField: return static_cast<Impl *>(this)->IndirectField##DeclTupleSize();





case Decl::OMPDeclareReduction: return static_cast<Impl *>(this)->OMPDeclareReduction##DeclTupleSize();





case Decl::UnresolvedUsingValue: return static_cast<Impl *>(this)->UnresolvedUsingValue##DeclTupleSize();













case Decl::OMPThreadPrivate: return static_cast<Impl *>(this)->OMPThreadPrivate##DeclTupleSize();





case Decl::ObjCPropertyImpl: return static_cast<Impl *>(this)->ObjCPropertyImpl##DeclTupleSize();





case Decl::PragmaComment: return static_cast<Impl *>(this)->PragmaComment##DeclTupleSize();





case Decl::PragmaDetectMismatch: return static_cast<Impl *>(this)->PragmaDetectMismatch##DeclTupleSize();





case Decl::StaticAssert: return static_cast<Impl *>(this)->StaticAssert##DeclTupleSize();





case Decl::TranslationUnit: return static_cast<Impl *>(this)->TranslationUnit##DeclTupleSize();






















                           












    }
    llvm_unreachable("Decl that isn't part of DeclNodes.inc!");
  }

// Stmts





























int AsmStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }



int GCCAsmStmt##TupleSize() { return static_cast<Impl *>(this)-> AsmStmt##TupleSize(); }





int MSAsmStmt##TupleSize() { return static_cast<Impl *>(this)-> AsmStmt##TupleSize(); }









int AttributedStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int BreakStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int CXXCatchStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int CXXForRangeStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int CXXTryStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int CapturedStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int CompoundStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ContinueStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int CoreturnStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int CoroutineBodyStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int DeclStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int DoStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int Expr##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }



int AbstractConditionalOperator##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }



int BinaryConditionalOperator##TupleSize() { return static_cast<Impl *>(this)-> AbstractConditionalOperator##TupleSize(); }





int ConditionalOperator##TupleSize() { return static_cast<Impl *>(this)-> AbstractConditionalOperator##TupleSize(); }









int AddrLabelExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ArrayInitIndexExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ArrayInitLoopExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ArraySubscriptExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ArrayTypeTraitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int AsTypeExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int AtomicExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int BinaryOperator##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }



int CompoundAssignOperator##TupleSize() { return static_cast<Impl *>(this)-> BinaryOperator##TupleSize(); }









int BlockExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXBindTemporaryExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXBoolLiteralExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXConstructExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }



int CXXTemporaryObjectExpr##TupleSize() { return static_cast<Impl *>(this)-> CXXConstructExpr##TupleSize(); }









int CXXDefaultArgExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXDefaultInitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXDeleteExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXDependentScopeMemberExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXFoldExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXInheritedCtorInitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXNewExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXNoexceptExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXNullPtrLiteralExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXPseudoDestructorExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXScalarValueInitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXStdInitializerListExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXThisExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXThrowExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXTypeidExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXUnresolvedConstructExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CXXUuidofExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CallExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }



int CUDAKernelCallExpr##TupleSize() { return static_cast<Impl *>(this)-> CallExpr##TupleSize(); }





int CXXMemberCallExpr##TupleSize() { return static_cast<Impl *>(this)-> CallExpr##TupleSize(); }





int CXXOperatorCallExpr##TupleSize() { return static_cast<Impl *>(this)-> CallExpr##TupleSize(); }





int UserDefinedLiteral##TupleSize() { return static_cast<Impl *>(this)-> CallExpr##TupleSize(); }









int CastExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }



int ExplicitCastExpr##TupleSize() { return static_cast<Impl *>(this)-> CastExpr##TupleSize(); }



int CStyleCastExpr##TupleSize() { return static_cast<Impl *>(this)-> ExplicitCastExpr##TupleSize(); }





int CXXFunctionalCastExpr##TupleSize() { return static_cast<Impl *>(this)-> ExplicitCastExpr##TupleSize(); }





int CXXNamedCastExpr##TupleSize() { return static_cast<Impl *>(this)-> ExplicitCastExpr##TupleSize(); }



int CXXConstCastExpr##TupleSize() { return static_cast<Impl *>(this)-> CXXNamedCastExpr##TupleSize(); }





int CXXDynamicCastExpr##TupleSize() { return static_cast<Impl *>(this)-> CXXNamedCastExpr##TupleSize(); }





int CXXReinterpretCastExpr##TupleSize() { return static_cast<Impl *>(this)-> CXXNamedCastExpr##TupleSize(); }





int CXXStaticCastExpr##TupleSize() { return static_cast<Impl *>(this)-> CXXNamedCastExpr##TupleSize(); }









int ObjCBridgedCastExpr##TupleSize() { return static_cast<Impl *>(this)-> ExplicitCastExpr##TupleSize(); }









int ImplicitCastExpr##TupleSize() { return static_cast<Impl *>(this)-> CastExpr##TupleSize(); }









int CharacterLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ChooseExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CompoundLiteralExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ConvertVectorExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int CoroutineSuspendExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }



int CoawaitExpr##TupleSize() { return static_cast<Impl *>(this)-> CoroutineSuspendExpr##TupleSize(); }





int CoyieldExpr##TupleSize() { return static_cast<Impl *>(this)-> CoroutineSuspendExpr##TupleSize(); }









int DeclRefExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int DependentCoawaitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int DependentScopeDeclRefExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int DesignatedInitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int DesignatedInitUpdateExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ExprWithCleanups##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ExpressionTraitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ExtVectorElementExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int FloatingLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int FunctionParmPackExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int GNUNullExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int GenericSelectionExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ImaginaryLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ImplicitValueInitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int InitListExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int IntegerLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int LambdaExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int MSPropertyRefExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int MSPropertySubscriptExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int MaterializeTemporaryExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int MemberExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int NoInitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int OMPArraySectionExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCArrayLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCAvailabilityCheckExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCBoolLiteralExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCBoxedExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCDictionaryLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCEncodeExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCIndirectCopyRestoreExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCIsaExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCIvarRefExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCMessageExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCPropertyRefExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCProtocolExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCSelectorExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCStringLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ObjCSubscriptRefExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int OffsetOfExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int OpaqueValueExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int OverloadExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }



int UnresolvedLookupExpr##TupleSize() { return static_cast<Impl *>(this)-> OverloadExpr##TupleSize(); }





int UnresolvedMemberExpr##TupleSize() { return static_cast<Impl *>(this)-> OverloadExpr##TupleSize(); }









int PackExpansionExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ParenExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ParenListExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int PredefinedExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int PseudoObjectExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int ShuffleVectorExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int SizeOfPackExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int StmtExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int StringLiteral##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int SubstNonTypeTemplateParmExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int SubstNonTypeTemplateParmPackExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int TypeTraitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int TypoExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int UnaryExprOrTypeTraitExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int UnaryOperator##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }





int VAArgExpr##TupleSize() { return static_cast<Impl *>(this)-> Expr##TupleSize(); }









int ForStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int GotoStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int IfStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int IndirectGotoStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int LabelStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int MSDependentExistsStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int NullStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int OMPExecutableDirective##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }



int OMPAtomicDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPBarrierDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPCancelDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPCancellationPointDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPCriticalDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPFlushDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPLoopDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }



int OMPDistributeDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPDistributeParallelForDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPDistributeParallelForSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPDistributeSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPForDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPForSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPParallelForDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPParallelForSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTargetParallelForSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTargetSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTargetTeamsDistributeDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTargetTeamsDistributeParallelForDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTargetTeamsDistributeParallelForSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTargetTeamsDistributeSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTaskLoopDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTaskLoopSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTeamsDistributeDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTeamsDistributeParallelForDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTeamsDistributeParallelForSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }





int OMPTeamsDistributeSimdDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPLoopDirective##TupleSize(); }









int OMPMasterDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPOrderedDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPParallelDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPParallelSectionsDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPSectionDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPSectionsDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPSingleDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetDataDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetEnterDataDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetExitDataDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetParallelDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetParallelForDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetTeamsDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTargetUpdateDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTaskDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTaskgroupDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTaskwaitDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTaskyieldDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }





int OMPTeamsDirective##TupleSize() { return static_cast<Impl *>(this)-> OMPExecutableDirective##TupleSize(); }









int ObjCAtCatchStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ObjCAtFinallyStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ObjCAtSynchronizedStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ObjCAtThrowStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ObjCAtTryStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ObjCAutoreleasePoolStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ObjCForCollectionStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int ReturnStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int SEHExceptStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int SEHFinallyStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int SEHLeaveStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int SEHTryStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int SwitchCase##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }



int CaseStmt##TupleSize() { return static_cast<Impl *>(this)-> SwitchCase##TupleSize(); }





int DefaultStmt##TupleSize() { return static_cast<Impl *>(this)-> SwitchCase##TupleSize(); }









int SwitchStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }





int WhileStmt##TupleSize() { return static_cast<Impl *>(this)-> Stmt##TupleSize(); }






  int tupleSizeOfStmtClass(const Stmt::StmtClass stmtClass) {
    switch (stmtClass) {



























                                     



case Stmt::GCCAsmStmt##Class: return static_cast<Impl *>(this)->GCCAsmStmt##TupleSize();





case Stmt::MSAsmStmt##Class: return static_cast<Impl *>(this)->MSAsmStmt##TupleSize();









case Stmt::AttributedStmt##Class: return static_cast<Impl *>(this)->AttributedStmt##TupleSize();





case Stmt::BreakStmt##Class: return static_cast<Impl *>(this)->BreakStmt##TupleSize();





case Stmt::CXXCatchStmt##Class: return static_cast<Impl *>(this)->CXXCatchStmt##TupleSize();





case Stmt::CXXForRangeStmt##Class: return static_cast<Impl *>(this)->CXXForRangeStmt##TupleSize();





case Stmt::CXXTryStmt##Class: return static_cast<Impl *>(this)->CXXTryStmt##TupleSize();





case Stmt::CapturedStmt##Class: return static_cast<Impl *>(this)->CapturedStmt##TupleSize();





case Stmt::CompoundStmt##Class: return static_cast<Impl *>(this)->CompoundStmt##TupleSize();





case Stmt::ContinueStmt##Class: return static_cast<Impl *>(this)->ContinueStmt##TupleSize();





case Stmt::CoreturnStmt##Class: return static_cast<Impl *>(this)->CoreturnStmt##TupleSize();





case Stmt::CoroutineBodyStmt##Class: return static_cast<Impl *>(this)->CoroutineBodyStmt##TupleSize();





case Stmt::DeclStmt##Class: return static_cast<Impl *>(this)->DeclStmt##TupleSize();





case Stmt::DoStmt##Class: return static_cast<Impl *>(this)->DoStmt##TupleSize();





                               



                                                                             



case Stmt::BinaryConditionalOperator##Class: return static_cast<Impl *>(this)->BinaryConditionalOperator##TupleSize();





case Stmt::ConditionalOperator##Class: return static_cast<Impl *>(this)->ConditionalOperator##TupleSize();









case Stmt::AddrLabelExpr##Class: return static_cast<Impl *>(this)->AddrLabelExpr##TupleSize();





case Stmt::ArrayInitIndexExpr##Class: return static_cast<Impl *>(this)->ArrayInitIndexExpr##TupleSize();





case Stmt::ArrayInitLoopExpr##Class: return static_cast<Impl *>(this)->ArrayInitLoopExpr##TupleSize();





case Stmt::ArraySubscriptExpr##Class: return static_cast<Impl *>(this)->ArraySubscriptExpr##TupleSize();





case Stmt::ArrayTypeTraitExpr##Class: return static_cast<Impl *>(this)->ArrayTypeTraitExpr##TupleSize();





case Stmt::AsTypeExpr##Class: return static_cast<Impl *>(this)->AsTypeExpr##TupleSize();





case Stmt::AtomicExpr##Class: return static_cast<Impl *>(this)->AtomicExpr##TupleSize();





case Stmt::BinaryOperator##Class: return static_cast<Impl *>(this)->BinaryOperator##TupleSize();



case Stmt::CompoundAssignOperator##Class: return static_cast<Impl *>(this)->CompoundAssignOperator##TupleSize();









case Stmt::BlockExpr##Class: return static_cast<Impl *>(this)->BlockExpr##TupleSize();





case Stmt::CXXBindTemporaryExpr##Class: return static_cast<Impl *>(this)->CXXBindTemporaryExpr##TupleSize();





case Stmt::CXXBoolLiteralExpr##Class: return static_cast<Impl *>(this)->CXXBoolLiteralExpr##TupleSize();





case Stmt::CXXConstructExpr##Class: return static_cast<Impl *>(this)->CXXConstructExpr##TupleSize();



case Stmt::CXXTemporaryObjectExpr##Class: return static_cast<Impl *>(this)->CXXTemporaryObjectExpr##TupleSize();









case Stmt::CXXDefaultArgExpr##Class: return static_cast<Impl *>(this)->CXXDefaultArgExpr##TupleSize();





case Stmt::CXXDefaultInitExpr##Class: return static_cast<Impl *>(this)->CXXDefaultInitExpr##TupleSize();





case Stmt::CXXDeleteExpr##Class: return static_cast<Impl *>(this)->CXXDeleteExpr##TupleSize();





case Stmt::CXXDependentScopeMemberExpr##Class: return static_cast<Impl *>(this)->CXXDependentScopeMemberExpr##TupleSize();





case Stmt::CXXFoldExpr##Class: return static_cast<Impl *>(this)->CXXFoldExpr##TupleSize();





case Stmt::CXXInheritedCtorInitExpr##Class: return static_cast<Impl *>(this)->CXXInheritedCtorInitExpr##TupleSize();





case Stmt::CXXNewExpr##Class: return static_cast<Impl *>(this)->CXXNewExpr##TupleSize();





case Stmt::CXXNoexceptExpr##Class: return static_cast<Impl *>(this)->CXXNoexceptExpr##TupleSize();





case Stmt::CXXNullPtrLiteralExpr##Class: return static_cast<Impl *>(this)->CXXNullPtrLiteralExpr##TupleSize();





case Stmt::CXXPseudoDestructorExpr##Class: return static_cast<Impl *>(this)->CXXPseudoDestructorExpr##TupleSize();





case Stmt::CXXScalarValueInitExpr##Class: return static_cast<Impl *>(this)->CXXScalarValueInitExpr##TupleSize();





case Stmt::CXXStdInitializerListExpr##Class: return static_cast<Impl *>(this)->CXXStdInitializerListExpr##TupleSize();





case Stmt::CXXThisExpr##Class: return static_cast<Impl *>(this)->CXXThisExpr##TupleSize();





case Stmt::CXXThrowExpr##Class: return static_cast<Impl *>(this)->CXXThrowExpr##TupleSize();





case Stmt::CXXTypeidExpr##Class: return static_cast<Impl *>(this)->CXXTypeidExpr##TupleSize();





case Stmt::CXXUnresolvedConstructExpr##Class: return static_cast<Impl *>(this)->CXXUnresolvedConstructExpr##TupleSize();





case Stmt::CXXUuidofExpr##Class: return static_cast<Impl *>(this)->CXXUuidofExpr##TupleSize();





case Stmt::CallExpr##Class: return static_cast<Impl *>(this)->CallExpr##TupleSize();



case Stmt::CUDAKernelCallExpr##Class: return static_cast<Impl *>(this)->CUDAKernelCallExpr##TupleSize();





case Stmt::CXXMemberCallExpr##Class: return static_cast<Impl *>(this)->CXXMemberCallExpr##TupleSize();





case Stmt::CXXOperatorCallExpr##Class: return static_cast<Impl *>(this)->CXXOperatorCallExpr##TupleSize();





case Stmt::UserDefinedLiteral##Class: return static_cast<Impl *>(this)->UserDefinedLiteral##TupleSize();









                                       



                                                           



case Stmt::CStyleCastExpr##Class: return static_cast<Impl *>(this)->CStyleCastExpr##TupleSize();





case Stmt::CXXFunctionalCastExpr##Class: return static_cast<Impl *>(this)->CXXFunctionalCastExpr##TupleSize();





                                                                   



case Stmt::CXXConstCastExpr##Class: return static_cast<Impl *>(this)->CXXConstCastExpr##TupleSize();





case Stmt::CXXDynamicCastExpr##Class: return static_cast<Impl *>(this)->CXXDynamicCastExpr##TupleSize();





case Stmt::CXXReinterpretCastExpr##Class: return static_cast<Impl *>(this)->CXXReinterpretCastExpr##TupleSize();





case Stmt::CXXStaticCastExpr##Class: return static_cast<Impl *>(this)->CXXStaticCastExpr##TupleSize();









case Stmt::ObjCBridgedCastExpr##Class: return static_cast<Impl *>(this)->ObjCBridgedCastExpr##TupleSize();









case Stmt::ImplicitCastExpr##Class: return static_cast<Impl *>(this)->ImplicitCastExpr##TupleSize();









case Stmt::CharacterLiteral##Class: return static_cast<Impl *>(this)->CharacterLiteral##TupleSize();





case Stmt::ChooseExpr##Class: return static_cast<Impl *>(this)->ChooseExpr##TupleSize();





case Stmt::CompoundLiteralExpr##Class: return static_cast<Impl *>(this)->CompoundLiteralExpr##TupleSize();





case Stmt::ConvertVectorExpr##Class: return static_cast<Impl *>(this)->ConvertVectorExpr##TupleSize();





                                                               



case Stmt::CoawaitExpr##Class: return static_cast<Impl *>(this)->CoawaitExpr##TupleSize();





case Stmt::CoyieldExpr##Class: return static_cast<Impl *>(this)->CoyieldExpr##TupleSize();









case Stmt::DeclRefExpr##Class: return static_cast<Impl *>(this)->DeclRefExpr##TupleSize();





case Stmt::DependentCoawaitExpr##Class: return static_cast<Impl *>(this)->DependentCoawaitExpr##TupleSize();





case Stmt::DependentScopeDeclRefExpr##Class: return static_cast<Impl *>(this)->DependentScopeDeclRefExpr##TupleSize();





case Stmt::DesignatedInitExpr##Class: return static_cast<Impl *>(this)->DesignatedInitExpr##TupleSize();





case Stmt::DesignatedInitUpdateExpr##Class: return static_cast<Impl *>(this)->DesignatedInitUpdateExpr##TupleSize();





case Stmt::ExprWithCleanups##Class: return static_cast<Impl *>(this)->ExprWithCleanups##TupleSize();





case Stmt::ExpressionTraitExpr##Class: return static_cast<Impl *>(this)->ExpressionTraitExpr##TupleSize();





case Stmt::ExtVectorElementExpr##Class: return static_cast<Impl *>(this)->ExtVectorElementExpr##TupleSize();





case Stmt::FloatingLiteral##Class: return static_cast<Impl *>(this)->FloatingLiteral##TupleSize();





case Stmt::FunctionParmPackExpr##Class: return static_cast<Impl *>(this)->FunctionParmPackExpr##TupleSize();





case Stmt::GNUNullExpr##Class: return static_cast<Impl *>(this)->GNUNullExpr##TupleSize();





case Stmt::GenericSelectionExpr##Class: return static_cast<Impl *>(this)->GenericSelectionExpr##TupleSize();





case Stmt::ImaginaryLiteral##Class: return static_cast<Impl *>(this)->ImaginaryLiteral##TupleSize();





case Stmt::ImplicitValueInitExpr##Class: return static_cast<Impl *>(this)->ImplicitValueInitExpr##TupleSize();





case Stmt::InitListExpr##Class: return static_cast<Impl *>(this)->InitListExpr##TupleSize();





case Stmt::IntegerLiteral##Class: return static_cast<Impl *>(this)->IntegerLiteral##TupleSize();





case Stmt::LambdaExpr##Class: return static_cast<Impl *>(this)->LambdaExpr##TupleSize();





case Stmt::MSPropertyRefExpr##Class: return static_cast<Impl *>(this)->MSPropertyRefExpr##TupleSize();





case Stmt::MSPropertySubscriptExpr##Class: return static_cast<Impl *>(this)->MSPropertySubscriptExpr##TupleSize();





case Stmt::MaterializeTemporaryExpr##Class: return static_cast<Impl *>(this)->MaterializeTemporaryExpr##TupleSize();





case Stmt::MemberExpr##Class: return static_cast<Impl *>(this)->MemberExpr##TupleSize();





case Stmt::NoInitExpr##Class: return static_cast<Impl *>(this)->NoInitExpr##TupleSize();





case Stmt::OMPArraySectionExpr##Class: return static_cast<Impl *>(this)->OMPArraySectionExpr##TupleSize();





case Stmt::ObjCArrayLiteral##Class: return static_cast<Impl *>(this)->ObjCArrayLiteral##TupleSize();





case Stmt::ObjCAvailabilityCheckExpr##Class: return static_cast<Impl *>(this)->ObjCAvailabilityCheckExpr##TupleSize();





case Stmt::ObjCBoolLiteralExpr##Class: return static_cast<Impl *>(this)->ObjCBoolLiteralExpr##TupleSize();





case Stmt::ObjCBoxedExpr##Class: return static_cast<Impl *>(this)->ObjCBoxedExpr##TupleSize();





case Stmt::ObjCDictionaryLiteral##Class: return static_cast<Impl *>(this)->ObjCDictionaryLiteral##TupleSize();





case Stmt::ObjCEncodeExpr##Class: return static_cast<Impl *>(this)->ObjCEncodeExpr##TupleSize();





case Stmt::ObjCIndirectCopyRestoreExpr##Class: return static_cast<Impl *>(this)->ObjCIndirectCopyRestoreExpr##TupleSize();





case Stmt::ObjCIsaExpr##Class: return static_cast<Impl *>(this)->ObjCIsaExpr##TupleSize();





case Stmt::ObjCIvarRefExpr##Class: return static_cast<Impl *>(this)->ObjCIvarRefExpr##TupleSize();





case Stmt::ObjCMessageExpr##Class: return static_cast<Impl *>(this)->ObjCMessageExpr##TupleSize();





case Stmt::ObjCPropertyRefExpr##Class: return static_cast<Impl *>(this)->ObjCPropertyRefExpr##TupleSize();





case Stmt::ObjCProtocolExpr##Class: return static_cast<Impl *>(this)->ObjCProtocolExpr##TupleSize();





case Stmt::ObjCSelectorExpr##Class: return static_cast<Impl *>(this)->ObjCSelectorExpr##TupleSize();





case Stmt::ObjCStringLiteral##Class: return static_cast<Impl *>(this)->ObjCStringLiteral##TupleSize();





case Stmt::ObjCSubscriptRefExpr##Class: return static_cast<Impl *>(this)->ObjCSubscriptRefExpr##TupleSize();





case Stmt::OffsetOfExpr##Class: return static_cast<Impl *>(this)->OffsetOfExpr##TupleSize();





case Stmt::OpaqueValueExpr##Class: return static_cast<Impl *>(this)->OpaqueValueExpr##TupleSize();





                                               



case Stmt::UnresolvedLookupExpr##Class: return static_cast<Impl *>(this)->UnresolvedLookupExpr##TupleSize();





case Stmt::UnresolvedMemberExpr##Class: return static_cast<Impl *>(this)->UnresolvedMemberExpr##TupleSize();









case Stmt::PackExpansionExpr##Class: return static_cast<Impl *>(this)->PackExpansionExpr##TupleSize();





case Stmt::ParenExpr##Class: return static_cast<Impl *>(this)->ParenExpr##TupleSize();





case Stmt::ParenListExpr##Class: return static_cast<Impl *>(this)->ParenListExpr##TupleSize();





case Stmt::PredefinedExpr##Class: return static_cast<Impl *>(this)->PredefinedExpr##TupleSize();





case Stmt::PseudoObjectExpr##Class: return static_cast<Impl *>(this)->PseudoObjectExpr##TupleSize();





case Stmt::ShuffleVectorExpr##Class: return static_cast<Impl *>(this)->ShuffleVectorExpr##TupleSize();





case Stmt::SizeOfPackExpr##Class: return static_cast<Impl *>(this)->SizeOfPackExpr##TupleSize();





case Stmt::StmtExpr##Class: return static_cast<Impl *>(this)->StmtExpr##TupleSize();





case Stmt::StringLiteral##Class: return static_cast<Impl *>(this)->StringLiteral##TupleSize();





case Stmt::SubstNonTypeTemplateParmExpr##Class: return static_cast<Impl *>(this)->SubstNonTypeTemplateParmExpr##TupleSize();





case Stmt::SubstNonTypeTemplateParmPackExpr##Class: return static_cast<Impl *>(this)->SubstNonTypeTemplateParmPackExpr##TupleSize();





case Stmt::TypeTraitExpr##Class: return static_cast<Impl *>(this)->TypeTraitExpr##TupleSize();





case Stmt::TypoExpr##Class: return static_cast<Impl *>(this)->TypoExpr##TupleSize();





case Stmt::UnaryExprOrTypeTraitExpr##Class: return static_cast<Impl *>(this)->UnaryExprOrTypeTraitExpr##TupleSize();





case Stmt::UnaryOperator##Class: return static_cast<Impl *>(this)->UnaryOperator##TupleSize();





case Stmt::VAArgExpr##Class: return static_cast<Impl *>(this)->VAArgExpr##TupleSize();









case Stmt::ForStmt##Class: return static_cast<Impl *>(this)->ForStmt##TupleSize();





case Stmt::GotoStmt##Class: return static_cast<Impl *>(this)->GotoStmt##TupleSize();





case Stmt::IfStmt##Class: return static_cast<Impl *>(this)->IfStmt##TupleSize();





case Stmt::IndirectGotoStmt##Class: return static_cast<Impl *>(this)->IndirectGotoStmt##TupleSize();





case Stmt::LabelStmt##Class: return static_cast<Impl *>(this)->LabelStmt##TupleSize();





case Stmt::MSDependentExistsStmt##Class: return static_cast<Impl *>(this)->MSDependentExistsStmt##TupleSize();





case Stmt::NullStmt##Class: return static_cast<Impl *>(this)->NullStmt##TupleSize();





                                                                   



case Stmt::OMPAtomicDirective##Class: return static_cast<Impl *>(this)->OMPAtomicDirective##TupleSize();





case Stmt::OMPBarrierDirective##Class: return static_cast<Impl *>(this)->OMPBarrierDirective##TupleSize();





case Stmt::OMPCancelDirective##Class: return static_cast<Impl *>(this)->OMPCancelDirective##TupleSize();





case Stmt::OMPCancellationPointDirective##Class: return static_cast<Impl *>(this)->OMPCancellationPointDirective##TupleSize();





case Stmt::OMPCriticalDirective##Class: return static_cast<Impl *>(this)->OMPCriticalDirective##TupleSize();





case Stmt::OMPFlushDirective##Class: return static_cast<Impl *>(this)->OMPFlushDirective##TupleSize();





                                                                         



case Stmt::OMPDistributeDirective##Class: return static_cast<Impl *>(this)->OMPDistributeDirective##TupleSize();





case Stmt::OMPDistributeParallelForDirective##Class: return static_cast<Impl *>(this)->OMPDistributeParallelForDirective##TupleSize();





case Stmt::OMPDistributeParallelForSimdDirective##Class: return static_cast<Impl *>(this)->OMPDistributeParallelForSimdDirective##TupleSize();





case Stmt::OMPDistributeSimdDirective##Class: return static_cast<Impl *>(this)->OMPDistributeSimdDirective##TupleSize();





case Stmt::OMPForDirective##Class: return static_cast<Impl *>(this)->OMPForDirective##TupleSize();





case Stmt::OMPForSimdDirective##Class: return static_cast<Impl *>(this)->OMPForSimdDirective##TupleSize();





case Stmt::OMPParallelForDirective##Class: return static_cast<Impl *>(this)->OMPParallelForDirective##TupleSize();





case Stmt::OMPParallelForSimdDirective##Class: return static_cast<Impl *>(this)->OMPParallelForSimdDirective##TupleSize();





case Stmt::OMPSimdDirective##Class: return static_cast<Impl *>(this)->OMPSimdDirective##TupleSize();





case Stmt::OMPTargetParallelForSimdDirective##Class: return static_cast<Impl *>(this)->OMPTargetParallelForSimdDirective##TupleSize();





case Stmt::OMPTargetSimdDirective##Class: return static_cast<Impl *>(this)->OMPTargetSimdDirective##TupleSize();





case Stmt::OMPTargetTeamsDistributeDirective##Class: return static_cast<Impl *>(this)->OMPTargetTeamsDistributeDirective##TupleSize();





case Stmt::OMPTargetTeamsDistributeParallelForDirective##Class: return static_cast<Impl *>(this)->OMPTargetTeamsDistributeParallelForDirective##TupleSize();





case Stmt::OMPTargetTeamsDistributeParallelForSimdDirective##Class: return static_cast<Impl *>(this)->OMPTargetTeamsDistributeParallelForSimdDirective##TupleSize();





case Stmt::OMPTargetTeamsDistributeSimdDirective##Class: return static_cast<Impl *>(this)->OMPTargetTeamsDistributeSimdDirective##TupleSize();





case Stmt::OMPTaskLoopDirective##Class: return static_cast<Impl *>(this)->OMPTaskLoopDirective##TupleSize();





case Stmt::OMPTaskLoopSimdDirective##Class: return static_cast<Impl *>(this)->OMPTaskLoopSimdDirective##TupleSize();





case Stmt::OMPTeamsDistributeDirective##Class: return static_cast<Impl *>(this)->OMPTeamsDistributeDirective##TupleSize();





case Stmt::OMPTeamsDistributeParallelForDirective##Class: return static_cast<Impl *>(this)->OMPTeamsDistributeParallelForDirective##TupleSize();





case Stmt::OMPTeamsDistributeParallelForSimdDirective##Class: return static_cast<Impl *>(this)->OMPTeamsDistributeParallelForSimdDirective##TupleSize();





case Stmt::OMPTeamsDistributeSimdDirective##Class: return static_cast<Impl *>(this)->OMPTeamsDistributeSimdDirective##TupleSize();









case Stmt::OMPMasterDirective##Class: return static_cast<Impl *>(this)->OMPMasterDirective##TupleSize();





case Stmt::OMPOrderedDirective##Class: return static_cast<Impl *>(this)->OMPOrderedDirective##TupleSize();





case Stmt::OMPParallelDirective##Class: return static_cast<Impl *>(this)->OMPParallelDirective##TupleSize();





case Stmt::OMPParallelSectionsDirective##Class: return static_cast<Impl *>(this)->OMPParallelSectionsDirective##TupleSize();





case Stmt::OMPSectionDirective##Class: return static_cast<Impl *>(this)->OMPSectionDirective##TupleSize();





case Stmt::OMPSectionsDirective##Class: return static_cast<Impl *>(this)->OMPSectionsDirective##TupleSize();





case Stmt::OMPSingleDirective##Class: return static_cast<Impl *>(this)->OMPSingleDirective##TupleSize();





case Stmt::OMPTargetDataDirective##Class: return static_cast<Impl *>(this)->OMPTargetDataDirective##TupleSize();





case Stmt::OMPTargetDirective##Class: return static_cast<Impl *>(this)->OMPTargetDirective##TupleSize();





case Stmt::OMPTargetEnterDataDirective##Class: return static_cast<Impl *>(this)->OMPTargetEnterDataDirective##TupleSize();





case Stmt::OMPTargetExitDataDirective##Class: return static_cast<Impl *>(this)->OMPTargetExitDataDirective##TupleSize();





case Stmt::OMPTargetParallelDirective##Class: return static_cast<Impl *>(this)->OMPTargetParallelDirective##TupleSize();





case Stmt::OMPTargetParallelForDirective##Class: return static_cast<Impl *>(this)->OMPTargetParallelForDirective##TupleSize();





case Stmt::OMPTargetTeamsDirective##Class: return static_cast<Impl *>(this)->OMPTargetTeamsDirective##TupleSize();





case Stmt::OMPTargetUpdateDirective##Class: return static_cast<Impl *>(this)->OMPTargetUpdateDirective##TupleSize();





case Stmt::OMPTaskDirective##Class: return static_cast<Impl *>(this)->OMPTaskDirective##TupleSize();





case Stmt::OMPTaskgroupDirective##Class: return static_cast<Impl *>(this)->OMPTaskgroupDirective##TupleSize();





case Stmt::OMPTaskwaitDirective##Class: return static_cast<Impl *>(this)->OMPTaskwaitDirective##TupleSize();





case Stmt::OMPTaskyieldDirective##Class: return static_cast<Impl *>(this)->OMPTaskyieldDirective##TupleSize();





case Stmt::OMPTeamsDirective##Class: return static_cast<Impl *>(this)->OMPTeamsDirective##TupleSize();









case Stmt::ObjCAtCatchStmt##Class: return static_cast<Impl *>(this)->ObjCAtCatchStmt##TupleSize();





case Stmt::ObjCAtFinallyStmt##Class: return static_cast<Impl *>(this)->ObjCAtFinallyStmt##TupleSize();





case Stmt::ObjCAtSynchronizedStmt##Class: return static_cast<Impl *>(this)->ObjCAtSynchronizedStmt##TupleSize();





case Stmt::ObjCAtThrowStmt##Class: return static_cast<Impl *>(this)->ObjCAtThrowStmt##TupleSize();





case Stmt::ObjCAtTryStmt##Class: return static_cast<Impl *>(this)->ObjCAtTryStmt##TupleSize();





case Stmt::ObjCAutoreleasePoolStmt##Class: return static_cast<Impl *>(this)->ObjCAutoreleasePoolStmt##TupleSize();





case Stmt::ObjCForCollectionStmt##Class: return static_cast<Impl *>(this)->ObjCForCollectionStmt##TupleSize();





case Stmt::ReturnStmt##Class: return static_cast<Impl *>(this)->ReturnStmt##TupleSize();





case Stmt::SEHExceptStmt##Class: return static_cast<Impl *>(this)->SEHExceptStmt##TupleSize();





case Stmt::SEHFinallyStmt##Class: return static_cast<Impl *>(this)->SEHFinallyStmt##TupleSize();





case Stmt::SEHLeaveStmt##Class: return static_cast<Impl *>(this)->SEHLeaveStmt##TupleSize();





case Stmt::SEHTryStmt##Class: return static_cast<Impl *>(this)->SEHTryStmt##TupleSize();





                                           



case Stmt::CaseStmt##Class: return static_cast<Impl *>(this)->CaseStmt##TupleSize();





case Stmt::DefaultStmt##Class: return static_cast<Impl *>(this)->DefaultStmt##TupleSize();









case Stmt::SwitchStmt##Class: return static_cast<Impl *>(this)->SwitchStmt##TupleSize();





case Stmt::WhileStmt##Class: return static_cast<Impl *>(this)->WhileStmt##TupleSize();





    case Stmt::NoStmtClass:
      break;
    }
    llvm_unreachable("Stmt that isn't part of StmtNodes.inc!");
  }

// Comments





























int BlockContentComment##TupleSize() { return static_cast<Impl *>(this)-> Comment##TupleSize(); }



int BlockCommandComment##TupleSize() { return static_cast<Impl *>(this)-> BlockContentComment##TupleSize(); }



int ParamCommandComment##TupleSize() { return static_cast<Impl *>(this)-> BlockCommandComment##TupleSize(); }





int TParamCommandComment##TupleSize() { return static_cast<Impl *>(this)-> BlockCommandComment##TupleSize(); }





int VerbatimBlockComment##TupleSize() { return static_cast<Impl *>(this)-> BlockCommandComment##TupleSize(); }





int VerbatimLineComment##TupleSize() { return static_cast<Impl *>(this)-> BlockCommandComment##TupleSize(); }









int ParagraphComment##TupleSize() { return static_cast<Impl *>(this)-> BlockContentComment##TupleSize(); }









int FullComment##TupleSize() { return static_cast<Impl *>(this)-> Comment##TupleSize(); }





int InlineContentComment##TupleSize() { return static_cast<Impl *>(this)-> Comment##TupleSize(); }



int HTMLTagComment##TupleSize() { return static_cast<Impl *>(this)-> InlineContentComment##TupleSize(); }



int HTMLEndTagComment##TupleSize() { return static_cast<Impl *>(this)-> HTMLTagComment##TupleSize(); }





int HTMLStartTagComment##TupleSize() { return static_cast<Impl *>(this)-> HTMLTagComment##TupleSize(); }









int InlineCommandComment##TupleSize() { return static_cast<Impl *>(this)-> InlineContentComment##TupleSize(); }





int TextComment##TupleSize() { return static_cast<Impl *>(this)-> InlineContentComment##TupleSize(); }









int VerbatimBlockLineComment##TupleSize() { return static_cast<Impl *>(this)-> Comment##TupleSize(); }






  int tupleSizeOfCommentKind(const Comment::CommentKind kind) {
    switch (kind) {



























                                                                   



case Comment::BlockCommandComment##Kind: return static_cast<Impl *>(this)->BlockCommandComment##TupleSize();



case Comment::ParamCommandComment##Kind: return static_cast<Impl *>(this)->ParamCommandComment##TupleSize();





case Comment::TParamCommandComment##Kind: return static_cast<Impl *>(this)->TParamCommandComment##TupleSize();





case Comment::VerbatimBlockComment##Kind: return static_cast<Impl *>(this)->VerbatimBlockComment##TupleSize();





case Comment::VerbatimLineComment##Kind: return static_cast<Impl *>(this)->VerbatimLineComment##TupleSize();









case Comment::ParagraphComment##Kind: return static_cast<Impl *>(this)->ParagraphComment##TupleSize();









case Comment::FullComment##Kind: return static_cast<Impl *>(this)->FullComment##TupleSize();





                                                                     



                                                                      



case Comment::HTMLEndTagComment##Kind: return static_cast<Impl *>(this)->HTMLEndTagComment##TupleSize();





case Comment::HTMLStartTagComment##Kind: return static_cast<Impl *>(this)->HTMLStartTagComment##TupleSize();









case Comment::InlineCommandComment##Kind: return static_cast<Impl *>(this)->InlineCommandComment##TupleSize();





case Comment::TextComment##Kind: return static_cast<Impl *>(this)->TextComment##TupleSize();









case Comment::VerbatimBlockLineComment##Kind: return static_cast<Impl *>(this)->VerbatimBlockLineComment##TupleSize();





    case Comment::NoCommentKind:
      break;
    }
    llvm_unreachable("Comment that isn't part of CommentNodes.inc!");
  }

// Types







//===-- TypeNodes.def - Metadata about Type AST nodes -----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file defines the AST type info database. Each type node is
//  enumerated by providing its name (e.g., "Builtin" or "Enum") and
//  base class (e.g., "Type" or "TagType"). Depending on where in the
//  abstract syntax tree the type will show up, the enumeration uses
//  one of five different macros:
//
//    int Class##TypeTupleSize() { return static_cast<Impl *>(this)-> Base##TupleSize(); } - A type that can show up anywhere in the AST,
//    and might be dependent, canonical, or non-canonical. All clients
//    will need to understand these types.
//
//    int Class##TypeTupleSize() { return static_cast<Impl *>(this)-> Base##TupleSize(); } - An abstract class that shows up in
//    the type hierarchy but has no concrete instances.
//
//    NON_CANONICAL_TYPE(Class, Base) - A type that can show up
//    anywhere in the AST but will never be a part of a canonical
//    type. Clients that only need to deal with canonical types
//    (ignoring, e.g., typedefs and other type alises used for
//    pretty-printing) can ignore these types.
//
//    DEPENDENT_TYPE(Class, Base) - A type that will only show up
//    within a C++ template that has not been instantiated, e.g., a
//    type that is always dependent. Clients that do not need to deal
//    with uninstantiated C++ templates can ignore these types.
//
//    NON_CANONICAL_UNLESS_DEPENDENT_TYPE(Class, Base) - A type that
//    is non-canonical unless it is dependent.  Defaults to TYPE because
//    it is neither reliably dependent nor reliably non-canonical.
//
//  There is a sixth macro, independent of the others.  Most clients
//  will not need to use it.
//
//    LEAF_TYPE(Class) - A type that never has inner types.  Clients
//    which can operate on such types more efficiently may wish to do so.
//
//===----------------------------------------------------------------------===//

















int Builtin##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Complex##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Pointer##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int BlockPointer##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Reference##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int LValueReference##TypeTupleSize() { return static_cast<Impl *>(this)-> ReferenceType##TupleSize(); }
int RValueReference##TypeTupleSize() { return static_cast<Impl *>(this)-> ReferenceType##TupleSize(); }
int MemberPointer##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Array##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int ConstantArray##TypeTupleSize() { return static_cast<Impl *>(this)-> ArrayType##TupleSize(); }
int IncompleteArray##TypeTupleSize() { return static_cast<Impl *>(this)-> ArrayType##TupleSize(); }
int VariableArray##TypeTupleSize() { return static_cast<Impl *>(this)-> ArrayType##TupleSize(); }
int DependentSizedArray##TypeTupleSize() { return static_cast<Impl *>(this)-> ArrayType##TupleSize(); }
int DependentSizedExtVector##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Vector##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int ExtVector##TypeTupleSize() { return static_cast<Impl *>(this)-> VectorType##TupleSize(); }
int Function##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int FunctionProto##TypeTupleSize() { return static_cast<Impl *>(this)-> FunctionType##TupleSize(); }
int FunctionNoProto##TypeTupleSize() { return static_cast<Impl *>(this)-> FunctionType##TupleSize(); }
int UnresolvedUsing##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Paren##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Typedef##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Adjusted##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Decayed##TypeTupleSize() { return static_cast<Impl *>(this)-> AdjustedType##TupleSize(); }
int TypeOfExpr##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int TypeOf##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Decltype##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int UnaryTransform##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Tag##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Record##TypeTupleSize() { return static_cast<Impl *>(this)-> TagType##TupleSize(); }
int Enum##TypeTupleSize() { return static_cast<Impl *>(this)-> TagType##TupleSize(); }
int Elaborated##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Attributed##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int TemplateTypeParm##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int SubstTemplateTypeParm##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int SubstTemplateTypeParmPack##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int TemplateSpecialization##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Deduced##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Auto##TypeTupleSize() { return static_cast<Impl *>(this)-> DeducedType##TupleSize(); }
int DeducedTemplateSpecialization##TypeTupleSize() { return static_cast<Impl *>(this)-> DeducedType##TupleSize(); }
int InjectedClassName##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int DependentName##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int DependentTemplateSpecialization##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int PackExpansion##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int ObjCTypeParam##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int ObjCObject##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int ObjCInterface##TypeTupleSize() { return static_cast<Impl *>(this)-> ObjCObjectType##TupleSize(); }
int ObjCObjectPointer##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Pipe##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }
int Atomic##TypeTupleSize() { return static_cast<Impl *>(this)-> Type##TupleSize(); }






// These types are always leaves in the type hierarchy.




  int tupleSizeOfTypeClass(const Type::TypeClass typeClass) {
    switch (typeClass) {





//===-- TypeNodes.def - Metadata about Type AST nodes -----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file defines the AST type info database. Each type node is
//  enumerated by providing its name (e.g., "Builtin" or "Enum") and
//  base class (e.g., "Type" or "TagType"). Depending on where in the
//  abstract syntax tree the type will show up, the enumeration uses
//  one of five different macros:
//
//    case Type::Class: return static_cast<Impl *>(this)->Class##TypeTupleSize(); - A type that can show up anywhere in the AST,
//    and might be dependent, canonical, or non-canonical. All clients
//    will need to understand these types.
//
//     - An abstract class that shows up in
//    the type hierarchy but has no concrete instances.
//
//    NON_CANONICAL_TYPE(Class, Base) - A type that can show up
//    anywhere in the AST but will never be a part of a canonical
//    type. Clients that only need to deal with canonical types
//    (ignoring, e.g., typedefs and other type alises used for
//    pretty-printing) can ignore these types.
//
//    DEPENDENT_TYPE(Class, Base) - A type that will only show up
//    within a C++ template that has not been instantiated, e.g., a
//    type that is always dependent. Clients that do not need to deal
//    with uninstantiated C++ templates can ignore these types.
//
//    NON_CANONICAL_UNLESS_DEPENDENT_TYPE(Class, Base) - A type that
//    is non-canonical unless it is dependent.  Defaults to TYPE because
//    it is neither reliably dependent nor reliably non-canonical.
//
//  There is a sixth macro, independent of the others.  Most clients
//  will not need to use it.
//
//    LEAF_TYPE(Class) - A type that never has inner types.  Clients
//    which can operate on such types more efficiently may wish to do so.
//
//===----------------------------------------------------------------------===//

















case Type::Builtin: return static_cast<Impl *>(this)->Builtin##TypeTupleSize();
case Type::Complex: return static_cast<Impl *>(this)->Complex##TypeTupleSize();
case Type::Pointer: return static_cast<Impl *>(this)->Pointer##TypeTupleSize();
case Type::BlockPointer: return static_cast<Impl *>(this)->BlockPointer##TypeTupleSize();

case Type::LValueReference: return static_cast<Impl *>(this)->LValueReference##TypeTupleSize();
case Type::RValueReference: return static_cast<Impl *>(this)->RValueReference##TypeTupleSize();
case Type::MemberPointer: return static_cast<Impl *>(this)->MemberPointer##TypeTupleSize();

case Type::ConstantArray: return static_cast<Impl *>(this)->ConstantArray##TypeTupleSize();
case Type::IncompleteArray: return static_cast<Impl *>(this)->IncompleteArray##TypeTupleSize();
case Type::VariableArray: return static_cast<Impl *>(this)->VariableArray##TypeTupleSize();
case Type::DependentSizedArray: return static_cast<Impl *>(this)->DependentSizedArray##TypeTupleSize();
case Type::DependentSizedExtVector: return static_cast<Impl *>(this)->DependentSizedExtVector##TypeTupleSize();
case Type::Vector: return static_cast<Impl *>(this)->Vector##TypeTupleSize();
case Type::ExtVector: return static_cast<Impl *>(this)->ExtVector##TypeTupleSize();

case Type::FunctionProto: return static_cast<Impl *>(this)->FunctionProto##TypeTupleSize();
case Type::FunctionNoProto: return static_cast<Impl *>(this)->FunctionNoProto##TypeTupleSize();
case Type::UnresolvedUsing: return static_cast<Impl *>(this)->UnresolvedUsing##TypeTupleSize();
case Type::Paren: return static_cast<Impl *>(this)->Paren##TypeTupleSize();
case Type::Typedef: return static_cast<Impl *>(this)->Typedef##TypeTupleSize();
case Type::Adjusted: return static_cast<Impl *>(this)->Adjusted##TypeTupleSize();
case Type::Decayed: return static_cast<Impl *>(this)->Decayed##TypeTupleSize();
case Type::TypeOfExpr: return static_cast<Impl *>(this)->TypeOfExpr##TypeTupleSize();
case Type::TypeOf: return static_cast<Impl *>(this)->TypeOf##TypeTupleSize();
case Type::Decltype: return static_cast<Impl *>(this)->Decltype##TypeTupleSize();
case Type::UnaryTransform: return static_cast<Impl *>(this)->UnaryTransform##TypeTupleSize();

case Type::Record: return static_cast<Impl *>(this)->Record##TypeTupleSize();
case Type::Enum: return static_cast<Impl *>(this)->Enum##TypeTupleSize();
case Type::Elaborated: return static_cast<Impl *>(this)->Elaborated##TypeTupleSize();
case Type::Attributed: return static_cast<Impl *>(this)->Attributed##TypeTupleSize();
case Type::TemplateTypeParm: return static_cast<Impl *>(this)->TemplateTypeParm##TypeTupleSize();
case Type::SubstTemplateTypeParm: return static_cast<Impl *>(this)->SubstTemplateTypeParm##TypeTupleSize();
case Type::SubstTemplateTypeParmPack: return static_cast<Impl *>(this)->SubstTemplateTypeParmPack##TypeTupleSize();
case Type::TemplateSpecialization: return static_cast<Impl *>(this)->TemplateSpecialization##TypeTupleSize();

case Type::Auto: return static_cast<Impl *>(this)->Auto##TypeTupleSize();
case Type::DeducedTemplateSpecialization: return static_cast<Impl *>(this)->DeducedTemplateSpecialization##TypeTupleSize();
case Type::InjectedClassName: return static_cast<Impl *>(this)->InjectedClassName##TypeTupleSize();
case Type::DependentName: return static_cast<Impl *>(this)->DependentName##TypeTupleSize();
case Type::DependentTemplateSpecialization: return static_cast<Impl *>(this)->DependentTemplateSpecialization##TypeTupleSize();
case Type::PackExpansion: return static_cast<Impl *>(this)->PackExpansion##TypeTupleSize();
case Type::ObjCTypeParam: return static_cast<Impl *>(this)->ObjCTypeParam##TypeTupleSize();
case Type::ObjCObject: return static_cast<Impl *>(this)->ObjCObject##TypeTupleSize();
case Type::ObjCInterface: return static_cast<Impl *>(this)->ObjCInterface##TypeTupleSize();
case Type::ObjCObjectPointer: return static_cast<Impl *>(this)->ObjCObjectPointer##TypeTupleSize();
case Type::Pipe: return static_cast<Impl *>(this)->Pipe##TypeTupleSize();
case Type::Atomic: return static_cast<Impl *>(this)->Atomic##TypeTupleSize();






// These types are always leaves in the type hierarchy.



    }
    llvm_unreachable("Type that isn't part of TypeNodes.def!");
  }
};

typedef ATDWriter::JsonWriter<raw_ostream> JsonWriter;

template <class ATDWriter = JsonWriter>
class ASTExporter : public ConstDeclVisitor<ASTExporter<ATDWriter>>,
                    public ConstStmtVisitor<ASTExporter<ATDWriter>>,
                    public ConstCommentVisitor<ASTExporter<ATDWriter>>,
                    public TypeVisitor<ASTExporter<ATDWriter>>,
                    public TupleSizeBase<ASTExporter<ATDWriter>> {
  typedef typename ATDWriter::ObjectScope ObjectScope;
  typedef typename ATDWriter::ArrayScope ArrayScope;
  typedef typename ATDWriter::TupleScope TupleScope;
  typedef typename ATDWriter::VariantScope VariantScope;
  ATDWriter OF;

  ASTContext &Context;

  const ASTExporterOptions &Options;

  std::unique_ptr<MangleContext> Mangler;

  // Encoding of NULL pointers into suitable empty nodes
  // This is a hack but using option types in children lists would make the Json
  // terribly verbose.
  // Also these useless nodes could have occurred in the original AST anyway :)
  //
  // Note: We are not using std::unique_ptr because 'delete' appears to be
  // protected (at least on Stmt).
  const Stmt *const NullPtrStmt;
  const Decl *const NullPtrDecl;
  const Comment *const NullPtrComment;

  // Keep track of the last location we print out so that we can
  // print out deltas from then on out.
  const char *LastLocFilename;
  unsigned LastLocLine;

  // The \c FullComment parent of the comment being dumped.
  const FullComment *FC;

  NamePrinter<ATDWriter> NamePrint;

 public:
  ASTExporter(raw_ostream &OS,
              ASTContext &Context,
              const ASTExporterOptions &Opts)
      : OF(OS, Opts.atdWriterOptions),
        Context(Context),
        Options(Opts),
        Mangler(
            ItaniumMangleContext::create(Context, Context.getDiagnostics())),
        NullPtrStmt(new (Context) NullStmt(SourceLocation())),
        NullPtrDecl(EmptyDecl::Create(
            Context, Context.getTranslationUnitDecl(), SourceLocation())),
        NullPtrComment(new (Context) Comment(
            Comment::NoCommentKind, SourceLocation(), SourceLocation())),
        LastLocFilename(""),
        LastLocLine(~0U),
        FC(0),
        NamePrint(Context.getSourceManager(), OF) {}

  void dumpDecl(const Decl *D);
  void dumpStmt(const Stmt *S);
  void dumpFullComment(const FullComment *C);
  void dumpType(const Type *T);
  void dumpPointerToType(const Type *T);
  void dumpQualTypeNoQuals(const QualType &qt);
  void dumpClassLambdaCapture(const LambdaCapture *C);

  // Utilities
  void dumpPointer(const void *Ptr);
  void dumpSourceRange(SourceRange R);
  void dumpSourceLocation(SourceLocation Loc);
  void dumpQualType(const QualType &qt);
  void dumpTypeOld(const Type *T);
  void dumpDeclRef(const Decl &Node);
  bool hasNodes(const DeclContext *DC);
  void dumpLookups(const DeclContext &DC);
  void dumpAttr(const Attr &A);
  void dumpSelector(const Selector sel);
  void dumpName(const NamedDecl &decl);
  void dumpInputKind(const InputKind kind);

  bool alwaysEmitParent(const Decl *D);

  // C++ Utilities
  void dumpAccessSpecifier(AccessSpecifier AS);
  void dumpCXXCtorInitializer(const CXXCtorInitializer &Init);
  void dumpDeclarationName(const DeclarationName &Name);
  void dumpNestedNameSpecifierLoc(NestedNameSpecifierLoc NNS);
  void dumpTemplateArgument(const TemplateArgument &Arg);
  void dumpTemplateSpecialization(const TemplateDecl *D,
                                  const TemplateArgumentList &Args);
  //    void dumpTemplateParameters(const TemplateParameterList *TPL);
  //    void dumpTemplateArgumentListInfo(const TemplateArgumentListInfo &TALI);
  //    void dumpTemplateArgumentLoc(const TemplateArgumentLoc &A);
  //    void dumpTemplateArgumentList(const TemplateArgumentList &TAL);
  //    void dumpTemplateArgument(const TemplateArgument &A,
  //                              SourceRange R = SourceRange());
  void dumpCXXBaseSpecifier(const CXXBaseSpecifier &Base);








  // Decls
  int Decl##TupleSize(); void Visit##Decl(const Decl *D);
  int DeclContext##TupleSize(); void Visit##DeclContext(const DeclContext *D);
  int BlockDecl##TupleSize(); void Visit##BlockDecl(const BlockDecl *D);
  int CapturedDecl##TupleSize(); void Visit##CapturedDecl(const CapturedDecl *D);
  int LinkageSpecDecl##TupleSize(); void Visit##LinkageSpecDecl(const LinkageSpecDecl *D);
  int NamespaceDecl##TupleSize(); void Visit##NamespaceDecl(const NamespaceDecl *D);
  int ObjCContainerDecl##TupleSize(); void Visit##ObjCContainerDecl(const ObjCContainerDecl *D);
  int TagDecl##TupleSize(); void Visit##TagDecl(const TagDecl *D);
  int TypeDecl##TupleSize(); void Visit##TypeDecl(const TypeDecl *D);
  int TranslationUnitDecl##TupleSize(); void Visit##TranslationUnitDecl(const TranslationUnitDecl *D);
  int NamedDecl##TupleSize(); void Visit##NamedDecl(const NamedDecl *D);
  int ValueDecl##TupleSize(); void Visit##ValueDecl(const ValueDecl *D);
  int TypedefDecl##TupleSize(); void Visit##TypedefDecl(const TypedefDecl *D);
  int EnumDecl##TupleSize(); void Visit##EnumDecl(const EnumDecl *D);
  int RecordDecl##TupleSize(); void Visit##RecordDecl(const RecordDecl *D);
  int EnumConstantDecl##TupleSize(); void Visit##EnumConstantDecl(const EnumConstantDecl *D);
  int IndirectFieldDecl##TupleSize(); void Visit##IndirectFieldDecl(const IndirectFieldDecl *D);
  int FunctionDecl##TupleSize(); void Visit##FunctionDecl(const FunctionDecl *D);
  int FieldDecl##TupleSize(); void Visit##FieldDecl(const FieldDecl *D);
  int VarDecl##TupleSize(); void Visit##VarDecl(const VarDecl *D);
  int FileScopeAsmDecl##TupleSize(); void Visit##FileScopeAsmDecl(const FileScopeAsmDecl *D);
  int ImportDecl##TupleSize(); void Visit##ImportDecl(const ImportDecl *D);

  // C++ Decls
  int UsingDirectiveDecl##TupleSize(); void Visit##UsingDirectiveDecl(const UsingDirectiveDecl *D);
  int NamespaceAliasDecl##TupleSize(); void Visit##NamespaceAliasDecl(const NamespaceAliasDecl *D);
  int CXXRecordDecl##TupleSize(); void Visit##CXXRecordDecl(const CXXRecordDecl *D);
  int ClassTemplateSpecializationDecl##TupleSize(); void Visit##ClassTemplateSpecializationDecl(const ClassTemplateSpecializationDecl *D);
  int CXXMethodDecl##TupleSize(); void Visit##CXXMethodDecl(const CXXMethodDecl *D);
  int ClassTemplateDecl##TupleSize(); void Visit##ClassTemplateDecl(const ClassTemplateDecl *D);
  int FunctionTemplateDecl##TupleSize(); void Visit##FunctionTemplateDecl(const FunctionTemplateDecl *D);
  int FriendDecl##TupleSize(); void Visit##FriendDecl(const FriendDecl *D);

  //    void VisitTypeAliasDecl(const TypeAliasDecl *D);
  //    void VisitTypeAliasTemplateDecl(const TypeAliasTemplateDecl *D);
  //    void VisitStaticAssertDecl(const StaticAssertDecl *D);
  //    template<typename SpecializationDecl>
  //    void VisitTemplateDeclSpecialization(ChildDumper &Children,
  //                                         const SpecializationDecl *D,
  //                                         bool DumpExplicitInst,
  //                                         bool DumpRefOnly);
  //    void VisitFunctionTemplateDecl(const FunctionTemplateDecl *D);
  //    void VisitClassTemplateSpecializationDecl(
  //        const ClassTemplateSpecializationDecl *D);
  //    void VisitClassTemplatePartialSpecializationDecl(
  //        const ClassTemplatePartialSpecializationDecl *D);
  //    void VisitClassScopeFunctionSpecializationDecl(
  //        const ClassScopeFunctionSpecializationDecl *D);
  //    void VisitVarTemplateDecl(const VarTemplateDecl *D);
  //    void VisitVarTemplateSpecializationDecl(
  //        const VarTemplateSpecializationDecl *D);
  //    void VisitVarTemplatePartialSpecializationDecl(
  //        const VarTemplatePartialSpecializationDecl *D);
  //    void VisitTemplateTypeParmDecl(const TemplateTypeParmDecl *D);
  //    void VisitNonTypeTemplateParmDecl(const NonTypeTemplateParmDecl *D);
  //    void VisitTemplateTemplateParmDecl(const TemplateTemplateParmDecl *D);
  //    void VisitUsingDecl(const UsingDecl *D);
  //    void VisitUnresolvedUsingTypenameDecl(const UnresolvedUsingTypenameDecl
  //    *D);
  //    void VisitUnresolvedUsingValueDecl(const UnresolvedUsingValueDecl *D);
  //    void VisitUsingShadowDecl(const UsingShadowDecl *D);
  //    void VisitLinkageSpecDecl(const LinkageSpecDecl *D);
  //    void VisitAccessSpecDecl(const AccessSpecDecl *D);
  //
  //    // ObjC Decls
  int ObjCIvarDecl##TupleSize(); void Visit##ObjCIvarDecl(const ObjCIvarDecl *D);
  int ObjCMethodDecl##TupleSize(); void Visit##ObjCMethodDecl(const ObjCMethodDecl *D);
  int ObjCCategoryDecl##TupleSize(); void Visit##ObjCCategoryDecl(const ObjCCategoryDecl *D);
  int ObjCCategoryImplDecl##TupleSize(); void Visit##ObjCCategoryImplDecl(const ObjCCategoryImplDecl *D);
  int ObjCProtocolDecl##TupleSize(); void Visit##ObjCProtocolDecl(const ObjCProtocolDecl *D);
  int ObjCInterfaceDecl##TupleSize(); void Visit##ObjCInterfaceDecl(const ObjCInterfaceDecl *D);
  int ObjCImplementationDecl##TupleSize(); void Visit##ObjCImplementationDecl(const ObjCImplementationDecl *D);
  int ObjCCompatibleAliasDecl##TupleSize(); void Visit##ObjCCompatibleAliasDecl(const ObjCCompatibleAliasDecl *D);
  int ObjCPropertyDecl##TupleSize(); void Visit##ObjCPropertyDecl(const ObjCPropertyDecl *D);
  int ObjCPropertyImplDecl##TupleSize(); void Visit##ObjCPropertyImplDecl(const ObjCPropertyImplDecl *D);

  // Stmts.
  int Stmt##TupleSize(); void Visit##Stmt(const Stmt *D);
  int DeclStmt##TupleSize(); void Visit##DeclStmt(const DeclStmt *D);
  int AttributedStmt##TupleSize(); void Visit##AttributedStmt(const AttributedStmt *D);
  int LabelStmt##TupleSize(); void Visit##LabelStmt(const LabelStmt *D);
  int GotoStmt##TupleSize(); void Visit##GotoStmt(const GotoStmt *D);
  int CXXCatchStmt##TupleSize(); void Visit##CXXCatchStmt(const CXXCatchStmt *D);

  // Exprs
  int Expr##TupleSize(); void Visit##Expr(const Expr *D);
  int CastExpr##TupleSize(); void Visit##CastExpr(const CastExpr *D);
  int ExplicitCastExpr##TupleSize(); void Visit##ExplicitCastExpr(const ExplicitCastExpr *D);
  int DeclRefExpr##TupleSize(); void Visit##DeclRefExpr(const DeclRefExpr *D);
  int PredefinedExpr##TupleSize(); void Visit##PredefinedExpr(const PredefinedExpr *D);
  int CharacterLiteral##TupleSize(); void Visit##CharacterLiteral(const CharacterLiteral *D);
  int IntegerLiteral##TupleSize(); void Visit##IntegerLiteral(const IntegerLiteral *D);
  int FloatingLiteral##TupleSize(); void Visit##FloatingLiteral(const FloatingLiteral *D);
  int StringLiteral##TupleSize(); void Visit##StringLiteral(const StringLiteral *D);
  //    int InitListExpr##TupleSize(); void Visit##InitListExpr(const InitListExpr *D);
  int UnaryOperator##TupleSize(); void Visit##UnaryOperator(const UnaryOperator *D);
  int UnaryExprOrTypeTraitExpr##TupleSize(); void Visit##UnaryExprOrTypeTraitExpr(const UnaryExprOrTypeTraitExpr *D);
  int MemberExpr##TupleSize(); void Visit##MemberExpr(const MemberExpr *D);
  int ExtVectorElementExpr##TupleSize(); void Visit##ExtVectorElementExpr(const ExtVectorElementExpr *D);
  int BinaryOperator##TupleSize(); void Visit##BinaryOperator(const BinaryOperator *D);
  int CompoundAssignOperator##TupleSize(); void Visit##CompoundAssignOperator(const CompoundAssignOperator *D);
  int AddrLabelExpr##TupleSize(); void Visit##AddrLabelExpr(const AddrLabelExpr *D);
  int BlockExpr##TupleSize(); void Visit##BlockExpr(const BlockExpr *D);
  int OpaqueValueExpr##TupleSize(); void Visit##OpaqueValueExpr(const OpaqueValueExpr *D);

  // C++
  int CXXNamedCastExpr##TupleSize(); void Visit##CXXNamedCastExpr(const CXXNamedCastExpr *D);
  int CXXBoolLiteralExpr##TupleSize(); void Visit##CXXBoolLiteralExpr(const CXXBoolLiteralExpr *D);
  int CXXConstructExpr##TupleSize(); void Visit##CXXConstructExpr(const CXXConstructExpr *D);
  int CXXBindTemporaryExpr##TupleSize(); void Visit##CXXBindTemporaryExpr(const CXXBindTemporaryExpr *D);
  int MaterializeTemporaryExpr##TupleSize(); void Visit##MaterializeTemporaryExpr(const MaterializeTemporaryExpr *D);
  int ExprWithCleanups##TupleSize(); void Visit##ExprWithCleanups(const ExprWithCleanups *D);
  int OverloadExpr##TupleSize(); void Visit##OverloadExpr(const OverloadExpr *D);
  int UnresolvedLookupExpr##TupleSize(); void Visit##UnresolvedLookupExpr(const UnresolvedLookupExpr *D);
  void dumpCXXTemporary(const CXXTemporary *Temporary);
  int LambdaExpr##TupleSize(); void Visit##LambdaExpr(const LambdaExpr *D);
  int CXXNewExpr##TupleSize(); void Visit##CXXNewExpr(const CXXNewExpr *D);
  int CXXDeleteExpr##TupleSize(); void Visit##CXXDeleteExpr(const CXXDeleteExpr *D);
  int CXXDefaultArgExpr##TupleSize(); void Visit##CXXDefaultArgExpr(const CXXDefaultArgExpr *D);
  int CXXDefaultInitExpr##TupleSize(); void Visit##CXXDefaultInitExpr(const CXXDefaultInitExpr *D);
  int TypeTraitExpr##TupleSize(); void Visit##TypeTraitExpr(const TypeTraitExpr *D);
  int CXXNoexceptExpr##TupleSize(); void Visit##CXXNoexceptExpr(const CXXNoexceptExpr *D);

  // ObjC
  int ObjCAtCatchStmt##TupleSize(); void Visit##ObjCAtCatchStmt(const ObjCAtCatchStmt *D);
  int ObjCEncodeExpr##TupleSize(); void Visit##ObjCEncodeExpr(const ObjCEncodeExpr *D);
  int ObjCMessageExpr##TupleSize(); void Visit##ObjCMessageExpr(const ObjCMessageExpr *D);
  int ObjCBoxedExpr##TupleSize(); void Visit##ObjCBoxedExpr(const ObjCBoxedExpr *D);
  int ObjCSelectorExpr##TupleSize(); void Visit##ObjCSelectorExpr(const ObjCSelectorExpr *D);
  int ObjCProtocolExpr##TupleSize(); void Visit##ObjCProtocolExpr(const ObjCProtocolExpr *D);
  int ObjCPropertyRefExpr##TupleSize(); void Visit##ObjCPropertyRefExpr(const ObjCPropertyRefExpr *D);
  int ObjCSubscriptRefExpr##TupleSize(); void Visit##ObjCSubscriptRefExpr(const ObjCSubscriptRefExpr *D);
  int ObjCIvarRefExpr##TupleSize(); void Visit##ObjCIvarRefExpr(const ObjCIvarRefExpr *D);
  int ObjCBoolLiteralExpr##TupleSize(); void Visit##ObjCBoolLiteralExpr(const ObjCBoolLiteralExpr *D);
  int ObjCAvailabilityCheckExpr##TupleSize(); void Visit##ObjCAvailabilityCheckExpr(const ObjCAvailabilityCheckExpr *D);

  // Comments.
  const char *getCommandName(unsigned CommandID);
  void dumpComment(const Comment *C);

  // Inline comments.
  int Comment##TupleSize(); void visit##Comment(const Comment *D);
  int TextComment##TupleSize(); void visit##TextComment(const TextComment *D);
  //    void visitInlineCommandComment(const InlineCommandComment *C);
  //    void visitHTMLStartTagComment(const HTMLStartTagComment *C);
  //    void visitHTMLEndTagComment(const HTMLEndTagComment *C);
  //
  //    // Block comments.
  //    void visitBlockCommandComment(const BlockCommandComment *C);
  //    void visitParamCommandComment(const ParamCommandComment *C);
  //    void visitTParamCommandComment(const TParamCommandComment *C);
  //    void visitVerbatimBlockComment(const VerbatimBlockComment *C);
  //    void visitVerbatimBlockLineComment(const VerbatimBlockLineComment *C);
  //    void visitVerbatimLineComment(const VerbatimLineComment *C);

  // Types - no template type handling yet
  int TypeWithChildInfoTupleSize();
  int Type##TupleSize(); void Visit##Type(const Type *D);
  int AdjustedType##TupleSize(); void Visit##AdjustedType(const AdjustedType *D);
  int ArrayType##TupleSize(); void Visit##ArrayType(const ArrayType *D);
  int ConstantArrayType##TupleSize(); void Visit##ConstantArrayType(const ConstantArrayType *D);
  //  int DependentSizedArrayType##TupleSize(); void Visit##DependentSizedArrayType(const DependentSizedArrayType *D);
  //  int IncompleteArrayType##TupleSize(); void Visit##IncompleteArrayType(const IncompleteArrayType *D);
  int VariableArrayType##TupleSize(); void Visit##VariableArrayType(const VariableArrayType *D);
  int AtomicType##TupleSize(); void Visit##AtomicType(const AtomicType *D);
  int AttributedType##TupleSize(); void Visit##AttributedType(const AttributedType *D); // getEquivalentType() + getAttrKind -> string
  //  int AutoType##TupleSize(); void Visit##AutoType(const AutoType *D);
  int BlockPointerType##TupleSize(); void Visit##BlockPointerType(const BlockPointerType *D);
  int BuiltinType##TupleSize(); void Visit##BuiltinType(const BuiltinType *D);
  //  int ComplexType##TupleSize(); void Visit##ComplexType(const ComplexType *D);
  int DecltypeType##TupleSize(); void Visit##DecltypeType(const DecltypeType *D);
  //  int DependentSizedExtVectorType##TupleSize(); void Visit##DependentSizedExtVectorType(const DependentSizedExtVectorType *D);
  int FunctionType##TupleSize(); void Visit##FunctionType(const FunctionType *D);
  //  int FunctionNoProtoType##TupleSize(); void Visit##FunctionNoProtoType(const FunctionNoProtoType *D);
  int FunctionProtoType##TupleSize(); void Visit##FunctionProtoType(const FunctionProtoType *D);
  //  int InjectedClassNameType##TupleSize(); void Visit##InjectedClassNameType(const InjectedClassNameType *D);
  int MemberPointerType##TupleSize(); void Visit##MemberPointerType(const MemberPointerType *D);
  int ObjCObjectPointerType##TupleSize(); void Visit##ObjCObjectPointerType(const ObjCObjectPointerType *D);
  int ObjCObjectType##TupleSize(); void Visit##ObjCObjectType(const ObjCObjectType *D);
  int ObjCInterfaceType##TupleSize(); void Visit##ObjCInterfaceType(const ObjCInterfaceType *D);
  int ParenType##TupleSize(); void Visit##ParenType(const ParenType *D);
  int PointerType##TupleSize(); void Visit##PointerType(const PointerType *D);
  int ReferenceType##TupleSize(); void Visit##ReferenceType(const ReferenceType *D);
  int TagType##TupleSize(); void Visit##TagType(const TagType *D);
  int TypedefType##TupleSize(); void Visit##TypedefType(const TypedefType *D);

  void dumpTypeAttr(AttributedType::Kind kind);
  void dumpObjCLifetimeQual(Qualifiers::ObjCLifetime qual);

  
  
  
};

//===----------------------------------------------------------------------===//
//  Utilities
//===----------------------------------------------------------------------===//

bool hasMeaningfulTypeInfo(const Type *T) {
  // clang goes into an infinite loop trying to compute the TypeInfo of
  // dependent types, and a width of 0 if the type doesn't have a constant size
  return T && !T->isIncompleteType() && !T->isDependentType() &&
         T->isConstantSizeType();
}

std::unordered_map<const void *, int> pointerMap;
int pointerCounter = 1;

//@atd type pointer = int
template <class ATDWriter>
void writePointer(ATDWriter &OF, bool withPointers, const void *Ptr) {
  if (!Ptr) {
    OF.emitInteger(0);
    return;
  }
  if (pointerMap.find(Ptr) == pointerMap.end()) {
    pointerMap[Ptr] = pointerCounter++;
  }
  OF.emitInteger(pointerMap[Ptr]);
}

template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpPointer(const void *Ptr) {
  writePointer(OF, Options.withPointers, Ptr);
}

//@atd type source_file = string
//@atd type source_location = {
//@atd   ?file <ocaml mutable> : source_file option;
//@atd   ?line <ocaml mutable> : int option;
//@atd   ?column <ocaml mutable> : int option;
//@atd } <ocaml field_prefix="sl_" validator="Clang_ast_visit.visit_source_loc">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpSourceLocation(SourceLocation Loc) {
  const SourceManager &SM = Context.getSourceManager();
  SourceLocation ExpLoc =
      Options.useMacroExpansionLocation ? SM.getExpansionLoc(Loc) : Loc;
  SourceLocation SpellingLoc = SM.getSpellingLoc(ExpLoc);

  // The general format we print out is filename:line:col, but we drop pieces
  // that haven't changed since the last loc printed.
  PresumedLoc PLoc = SM.getPresumedLoc(SpellingLoc);

  if (PLoc.isInvalid()) {
    ObjectScope Scope(OF, 0);
    return;
  }

  if (strcmp(PLoc.getFilename(), LastLocFilename) != 0) {
    ObjectScope Scope(OF, 3);
    OF.emitTag("file");
    // Normalizing filenames matters because the current directory may change
    // during the compilation of large projects.
    OF.emitString(Options.normalizeSourcePath(PLoc.getFilename()));
    OF.emitTag("line");
    OF.emitInteger(PLoc.getLine());
    OF.emitTag("column");
    OF.emitInteger(PLoc.getColumn());
  } else if (PLoc.getLine() != LastLocLine) {
    ObjectScope Scope(OF, 2);
    OF.emitTag("line");
    OF.emitInteger(PLoc.getLine());
    OF.emitTag("column");
    OF.emitInteger(PLoc.getColumn());
  } else {
    ObjectScope Scope(OF, 1);
    OF.emitTag("column");
    OF.emitInteger(PLoc.getColumn());
  }
  LastLocFilename = PLoc.getFilename();
  LastLocLine = PLoc.getLine();
  // TODO: lastLocColumn
}

//@atd type source_range = (source_location * source_location)
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpSourceRange(SourceRange R) {
  TupleScope Scope(OF, 2);
  dumpSourceLocation(R.getBegin());
  dumpSourceLocation(R.getEnd());
}

//@atd type qual_type = {
//@atd   type_ptr : type_ptr;
//@atd   ~is_const : bool;
//@atd   ~is_restrict : bool;
//@atd   ~is_volatile : bool;
//@atd } <ocaml field_prefix="qt_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpQualType(const QualType &qt) {
  clang::Qualifiers Quals =
      qt.isNull() ? clang::Qualifiers() : qt.getQualifiers();
  bool isConst = Quals.hasConst();
  bool isRestrict = Quals.hasRestrict();
  bool isVolatile = Quals.hasVolatile();
  ObjectScope oScope(OF, 1 + isConst + isVolatile + isRestrict);
  OF.emitTag("type_ptr");
  dumpQualTypeNoQuals(qt);
  OF.emitFlag("is_const", isConst);
  OF.emitFlag("is_restrict", isRestrict);
  OF.emitFlag("is_volatile", isVolatile);
}

//@atd type named_decl_info = {
//@atd   name : string;
//@atd   qual_name : string list;
//@atd } <ocaml field_prefix="ni_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpName(const NamedDecl &Decl) {
  // dump name
  ObjectScope oScope(OF, 2);
  OF.emitTag("name");
  OF.emitString(Decl.getNameAsString());

  OF.emitTag("qual_name");
  NamePrint.printDeclName(Decl);
}

//@atd type decl_ref = {
//@atd   kind : decl_kind;
//@atd   decl_pointer : pointer;
//@atd   ?name : named_decl_info option;
//@atd   ~is_hidden : bool;
//@atd   ?qual_type : qual_type option
//@atd } <ocaml field_prefix="dr_">
//@atd type decl_kind = [

























//@atd | AccessSpec





//@atd | Block





//@atd | Captured





//@atd | ClassScopeFunctionSpecialization





//@atd | Empty





//@atd | Export





//@atd | ExternCContext





//@atd | FileScopeAsm





//@atd | Friend





//@atd | FriendTemplate





//@atd | Import





//@atd | LinkageSpec





//@atd | Named



//@atd | Label





//@atd | Namespace





//@atd | NamespaceAlias





//@atd | ObjCCompatibleAlias





//@atd | ObjCContainer



//@atd | ObjCCategory





//@atd | ObjCImpl



//@atd | ObjCCategoryImpl





//@atd | ObjCImplementation









//@atd | ObjCInterface





//@atd | ObjCProtocol









//@atd | ObjCMethod





//@atd | ObjCProperty





//@atd | Template



//@atd | BuiltinTemplate





//@atd | RedeclarableTemplate



//@atd | ClassTemplate





//@atd | FunctionTemplate





//@atd | TypeAliasTemplate





//@atd | VarTemplate









//@atd | TemplateTemplateParm









//@atd | Type



//@atd | Tag



//@atd | Enum





//@atd | Record



//@atd | CXXRecord



//@atd | ClassTemplateSpecialization



//@atd | ClassTemplatePartialSpecialization





















//@atd | TemplateTypeParm





//@atd | TypedefName



//@atd | ObjCTypeParam





//@atd | TypeAlias





//@atd | Typedef









//@atd | UnresolvedUsingTypename









//@atd | Using





//@atd | UsingDirective





//@atd | UsingPack





//@atd | UsingShadow



//@atd | ConstructorUsingShadow









//@atd | Value



//@atd | Binding





//@atd | Declarator



//@atd | Field



//@atd | ObjCAtDefsField





//@atd | ObjCIvar









//@atd | Function



//@atd | CXXDeductionGuide





//@atd | CXXMethod



//@atd | CXXConstructor





//@atd | CXXConversion





//@atd | CXXDestructor













//@atd | MSProperty





//@atd | NonTypeTemplateParm





//@atd | Var



//@atd | Decomposition





//@atd | ImplicitParam





//@atd | OMPCapturedExpr





//@atd | ParmVar





//@atd | VarTemplateSpecialization



//@atd | VarTemplatePartialSpecialization

















//@atd | EnumConstant





//@atd | IndirectField





//@atd | OMPDeclareReduction





//@atd | UnresolvedUsingValue













//@atd | OMPThreadPrivate





//@atd | ObjCPropertyImpl





//@atd | PragmaComment





//@atd | PragmaDetectMismatch





//@atd | StaticAssert





//@atd | TranslationUnit






















                           












//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpDeclRef(const Decl &D) {
  const NamedDecl *ND = dyn_cast<NamedDecl>(&D);
  const ValueDecl *VD = dyn_cast<ValueDecl>(&D);
  bool IsHidden = ND && ND->isHidden();
  ObjectScope Scope(OF, 2 + (bool)ND + (bool)VD + IsHidden);

  OF.emitTag("kind");
  OF.emitSimpleVariant(D.getDeclKindName());
  OF.emitTag("decl_pointer");
  dumpPointer(&D);
  if (ND) {
    OF.emitTag("name");
    dumpName(*ND);
    OF.emitFlag("is_hidden", IsHidden);
  }
  if (VD) {
    OF.emitTag("qual_type");
    dumpQualType(VD->getType());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::DeclContextTupleSize() {
  return 2;
}
//@atd #define decl_context_tuple decl list * decl_context_info
//@atd type decl_context_info = {
//@atd   ~has_external_lexical_storage : bool;
//@atd   ~has_external_visible_storage : bool
//@atd } <ocaml field_prefix="dci_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitDeclContext(const DeclContext *DC) {
  if (!DC) {
    { ArrayScope Scope(OF, 0); }
    { ObjectScope Scope(OF, 0); }
    return;
  }
  {
    std::vector<Decl *> declsToDump;
    for (auto I : DC->decls()) {
      declsToDump.push_back(I);
    }
    

    // getObjCInstanceType() should return null type when 'instancetype' is not
    // known yet - it doesn't work this way due to bug in clang, but keep
    // the check for when the bug is fixed.
    if (isa<TranslationUnitDecl>(DC) &&
        Context.getObjCInstanceType().getTypePtrOrNull()) {
      declsToDump.push_back(Context.getObjCInstanceTypeDecl());
    }
    ArrayScope Scope(OF, declsToDump.size());
    for (auto I : declsToDump) {
      dumpDecl(I);
    }
  }
  {
    bool HasExternalLexicalStorage = DC->hasExternalLexicalStorage();
    bool HasExternalVisibleStorage = DC->hasExternalVisibleStorage();
    ObjectScope Scope(OF,
                      0 + HasExternalLexicalStorage +
                          HasExternalVisibleStorage); // not covered by tests

    OF.emitFlag("has_external_lexical_storage", HasExternalLexicalStorage);
    OF.emitFlag("has_external_visible_storage", HasExternalVisibleStorage);
  }
}

//@atd type lookups = {
//@atd   decl_ref : decl_ref;
//@atd   ?primary_context_pointer : pointer option;
//@atd   lookups : lookup list;
//@atd   ~has_undeserialized_decls : bool;
//@atd } <ocaml field_prefix="lups_">
//@atd type lookup = {
//@atd   decl_name : string;
//@atd   decl_refs : decl_ref list;
//@atd } <ocaml field_prefix="lup_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpLookups(const DeclContext &DC) {
  ObjectScope Scope(OF, 4); // not covered by tests

  OF.emitTag("decl_ref");
  dumpDeclRef(cast<Decl>(DC));

  const DeclContext *Primary = DC.getPrimaryContext();
  if (Primary != &DC) {
    OF.emitTag("primary_context_pointer");
    dumpPointer(cast<Decl>(Primary));
  }

  OF.emitTag("lookups");
  {
    ArrayScope Scope(OF);
    DeclContext::all_lookups_iterator I = Primary->noload_lookups_begin(),
                                      E = Primary->noload_lookups_end();
    while (I != E) {
      DeclarationName Name = I.getLookupName();
      DeclContextLookupResult R = *I++;

      ObjectScope Scope(OF, 2); // not covered by tests
      OF.emitTag("decl_name");
      OF.emitString(Name.getAsString());

      OF.emitTag("decl_refs");
      {
        ArrayScope Scope(OF);
        for (DeclContextLookupResult::iterator RI = R.begin(), RE = R.end();
             RI != RE;
             ++RI) {
          dumpDeclRef(**RI);
        }
      }
    }
  }

  bool HasUndeserializedLookups = Primary->hasExternalVisibleStorage();
  OF.emitFlag("has_undeserialized_decls", HasUndeserializedLookups);
}

//@atd type attribute = [






























//@atd | FallThrough@@Attr of attribute_info
//@atd | Suppress@@Attr of attribute_info
//@atd | SwiftContext@@Attr of attribute_info
//@atd | SwiftErrorResult@@Attr of attribute_info
//@atd | SwiftIndirectResult@@Attr of attribute_info
//@atd | Annotate@@Attr of attribute_info
//@atd | CFConsumed@@Attr of attribute_info
//@atd | CarriesDependency@@Attr of attribute_info
//@atd | NSConsumed@@Attr of attribute_info
//@atd | NonNull@@Attr of attribute_info
//@atd | PassObjectSize@@Attr of attribute_info
//@atd | AMDGPUFlatWorkGroupSize@@Attr of attribute_info
//@atd | AMDGPUNumSGPR@@Attr of attribute_info
//@atd | AMDGPUNumVGPR@@Attr of attribute_info
//@atd | AMDGPUWavesPerEU@@Attr of attribute_info
//@atd | ARMInterrupt@@Attr of attribute_info
//@atd | AVRInterrupt@@Attr of attribute_info
//@atd | AVRSignal@@Attr of attribute_info
//@atd | AcquireCapability@@Attr of attribute_info
//@atd | AcquiredAfter@@Attr of attribute_info
//@atd | AcquiredBefore@@Attr of attribute_info
//@atd | AlignMac68k@@Attr of attribute_info
//@atd | Aligned@@Attr of attribute_info
//@atd | AllocAlign@@Attr of attribute_info
//@atd | AllocSize@@Attr of attribute_info
//@atd | AlwaysInline@@Attr of attribute_info
//@atd | AnalyzerNoReturn@@Attr of attribute_info
//@atd | AnyX86Interrupt@@Attr of attribute_info
//@atd | AnyX86NoCallerSavedRegisters@@Attr of attribute_info
//@atd | ArcWeakrefUnavailable@@Attr of attribute_info
//@atd | ArgumentWithTypeTag@@Attr of attribute_info
//@atd | AsmLabel@@Attr of attribute_info
//@atd | AssertCapability@@Attr of attribute_info
//@atd | AssertExclusiveLock@@Attr of attribute_info
//@atd | AssertSharedLock@@Attr of attribute_info
//@atd | AssumeAligned@@Attr of attribute_info
//@atd | Availability@@Attr of attribute_info
//@atd | Blocks@@Attr of attribute_info
//@atd | C11NoReturn@@Attr of attribute_info
//@atd | CDecl@@Attr of attribute_info
//@atd | CFAuditedTransfer@@Attr of attribute_info
//@atd | CFReturnsNotRetained@@Attr of attribute_info
//@atd | CFReturnsRetained@@Attr of attribute_info
//@atd | CFUnknownTransfer@@Attr of attribute_info
//@atd | CUDAConstant@@Attr of attribute_info
//@atd | CUDADevice@@Attr of attribute_info
//@atd | CUDAGlobal@@Attr of attribute_info
//@atd | CUDAHost@@Attr of attribute_info
//@atd | CUDAInvalidTarget@@Attr of attribute_info
//@atd | CUDALaunchBounds@@Attr of attribute_info
//@atd | CUDAShared@@Attr of attribute_info
//@atd | CXX11NoReturn@@Attr of attribute_info
//@atd | CallableWhen@@Attr of attribute_info
//@atd | Capability@@Attr of attribute_info
//@atd | CapturedRecord@@Attr of attribute_info
//@atd | Cleanup@@Attr of attribute_info
//@atd | Cold@@Attr of attribute_info
//@atd | Common@@Attr of attribute_info
//@atd | Const@@Attr of attribute_info
//@atd | Constructor@@Attr of attribute_info
//@atd | Consumable@@Attr of attribute_info
//@atd | ConsumableAutoCast@@Attr of attribute_info
//@atd | ConsumableSetOnRead@@Attr of attribute_info
//@atd | Convergent@@Attr of attribute_info
//@atd | DLLExport@@Attr of attribute_info
//@atd | DLLImport@@Attr of attribute_info
//@atd | Deprecated@@Attr of attribute_info
//@atd | Destructor@@Attr of attribute_info
//@atd | DiagnoseIf@@Attr of attribute_info
//@atd | DisableTailCalls@@Attr of attribute_info
//@atd | EmptyBases@@Attr of attribute_info
//@atd | EnableIf@@Attr of attribute_info
//@atd | EnumExtensibility@@Attr of attribute_info
//@atd | ExclusiveTrylockFunction@@Attr of attribute_info
//@atd | ExternalSourceSymbol@@Attr of attribute_info
//@atd | FastCall@@Attr of attribute_info
//@atd | Final@@Attr of attribute_info
//@atd | FlagEnum@@Attr of attribute_info
//@atd | Flatten@@Attr of attribute_info
//@atd | Format@@Attr of attribute_info
//@atd | FormatArg@@Attr of attribute_info
//@atd | GNUInline@@Attr of attribute_info
//@atd | GuardedBy@@Attr of attribute_info
//@atd | GuardedVar@@Attr of attribute_info
//@atd | Hot@@Attr of attribute_info
//@atd | IBAction@@Attr of attribute_info
//@atd | IBOutlet@@Attr of attribute_info
//@atd | IBOutletCollection@@Attr of attribute_info
//@atd | InitPriority@@Attr of attribute_info
//@atd | IntelOclBicc@@Attr of attribute_info
//@atd | InternalLinkage@@Attr of attribute_info
//@atd | LTOVisibilityPublic@@Attr of attribute_info
//@atd | LayoutVersion@@Attr of attribute_info
//@atd | LockReturned@@Attr of attribute_info
//@atd | LocksExcluded@@Attr of attribute_info
//@atd | MSABI@@Attr of attribute_info
//@atd | MSInheritance@@Attr of attribute_info
//@atd | MSNoVTable@@Attr of attribute_info
//@atd | MSP430Interrupt@@Attr of attribute_info
//@atd | MSStruct@@Attr of attribute_info
//@atd | MSVtorDisp@@Attr of attribute_info
//@atd | MaxFieldAlignment@@Attr of attribute_info
//@atd | MayAlias@@Attr of attribute_info
//@atd | MicroMips@@Attr of attribute_info
//@atd | MinSize@@Attr of attribute_info
//@atd | Mips16@@Attr of attribute_info
//@atd | MipsInterrupt@@Attr of attribute_info
//@atd | NSConsumesSelf@@Attr of attribute_info
//@atd | NSReturnsAutoreleased@@Attr of attribute_info
//@atd | NSReturnsNotRetained@@Attr of attribute_info
//@atd | NSReturnsRetained@@Attr of attribute_info
//@atd | Naked@@Attr of attribute_info
//@atd | NoAlias@@Attr of attribute_info
//@atd | NoCommon@@Attr of attribute_info
//@atd | NoDebug@@Attr of attribute_info
//@atd | NoDuplicate@@Attr of attribute_info
//@atd | NoInline@@Attr of attribute_info
//@atd | NoInstrumentFunction@@Attr of attribute_info
//@atd | NoMicroMips@@Attr of attribute_info
//@atd | NoMips16@@Attr of attribute_info
//@atd | NoReturn@@Attr of attribute_info
//@atd | NoSanitize@@Attr of attribute_info
//@atd | NoSplitStack@@Attr of attribute_info
//@atd | NoThreadSafetyAnalysis@@Attr of attribute_info
//@atd | NoThrow@@Attr of attribute_info
//@atd | NotTailCalled@@Attr of attribute_info
//@atd | OMPCaptureNoInit@@Attr of attribute_info
//@atd | OMPThreadPrivateDecl@@Attr of attribute_info
//@atd | ObjCBridge@@Attr of attribute_info
//@atd | ObjCBridgeMutable@@Attr of attribute_info
//@atd | ObjCBridgeRelated@@Attr of attribute_info
//@atd | ObjCException@@Attr of attribute_info
//@atd | ObjCExplicitProtocolImpl@@Attr of attribute_info
//@atd | ObjCIndependentClass@@Attr of attribute_info
//@atd | ObjCMethodFamily@@Attr of attribute_info
//@atd | ObjCNSObject@@Attr of attribute_info
//@atd | ObjCPreciseLifetime@@Attr of attribute_info
//@atd | ObjCRequiresPropertyDefs@@Attr of attribute_info
//@atd | ObjCRequiresSuper@@Attr of attribute_info
//@atd | ObjCReturnsInnerPointer@@Attr of attribute_info
//@atd | ObjCRootClass@@Attr of attribute_info
//@atd | ObjCSubclassingRestricted@@Attr of attribute_info
//@atd | OpenCLIntelReqdSubGroupSize@@Attr of attribute_info
//@atd | OpenCLKernel@@Attr of attribute_info
//@atd | OpenCLUnrollHint@@Attr of attribute_info
//@atd | OptimizeNone@@Attr of attribute_info
//@atd | Override@@Attr of attribute_info
//@atd | Ownership@@Attr of attribute_info
//@atd | Packed@@Attr of attribute_info
//@atd | ParamTypestate@@Attr of attribute_info
//@atd | Pascal@@Attr of attribute_info
//@atd | Pcs@@Attr of attribute_info
//@atd | PragmaClangBSSSection@@Attr of attribute_info
//@atd | PragmaClangDataSection@@Attr of attribute_info
//@atd | PragmaClangRodataSection@@Attr of attribute_info
//@atd | PragmaClangTextSection@@Attr of attribute_info
//@atd | PreserveAll@@Attr of attribute_info
//@atd | PreserveMost@@Attr of attribute_info
//@atd | PtGuardedBy@@Attr of attribute_info
//@atd | PtGuardedVar@@Attr of attribute_info
//@atd | Pure@@Attr of attribute_info
//@atd | RegCall@@Attr of attribute_info
//@atd | ReleaseCapability@@Attr of attribute_info
//@atd | ReqdWorkGroupSize@@Attr of attribute_info
//@atd | RequireConstantInit@@Attr of attribute_info
//@atd | RequiresCapability@@Attr of attribute_info
//@atd | Restrict@@Attr of attribute_info
//@atd | ReturnTypestate@@Attr of attribute_info
//@atd | ReturnsNonNull@@Attr of attribute_info
//@atd | ReturnsTwice@@Attr of attribute_info
//@atd | ScopedLockable@@Attr of attribute_info
//@atd | Section@@Attr of attribute_info
//@atd | SelectAny@@Attr of attribute_info
//@atd | Sentinel@@Attr of attribute_info
//@atd | SetTypestate@@Attr of attribute_info
//@atd | SharedTrylockFunction@@Attr of attribute_info
//@atd | StdCall@@Attr of attribute_info
//@atd | SwiftCall@@Attr of attribute_info
//@atd | SysVABI@@Attr of attribute_info
//@atd | TLSModel@@Attr of attribute_info
//@atd | Target@@Attr of attribute_info
//@atd | TestTypestate@@Attr of attribute_info
//@atd | ThisCall@@Attr of attribute_info
//@atd | TransparentUnion@@Attr of attribute_info
//@atd | TryAcquireCapability@@Attr of attribute_info
//@atd | TypeTagForDatatype@@Attr of attribute_info
//@atd | TypeVisibility@@Attr of attribute_info
//@atd | Unavailable@@Attr of attribute_info
//@atd | Unused@@Attr of attribute_info
//@atd | Used@@Attr of attribute_info
//@atd | Uuid@@Attr of attribute_info
//@atd | VecReturn@@Attr of attribute_info
//@atd | VecTypeHint@@Attr of attribute_info
//@atd | VectorCall@@Attr of attribute_info
//@atd | Visibility@@Attr of attribute_info
//@atd | WarnUnused@@Attr of attribute_info
//@atd | WarnUnusedResult@@Attr of attribute_info
//@atd | Weak@@Attr of attribute_info
//@atd | WeakImport@@Attr of attribute_info
//@atd | WeakRef@@Attr of attribute_info
//@atd | WorkGroupSizeHint@@Attr of attribute_info
//@atd | X86ForceAlignArgPointer@@Attr of attribute_info
//@atd | XRayInstrument@@Attr of attribute_info
//@atd | XRayLogArgs@@Attr of attribute_info
//@atd | AbiTag@@Attr of attribute_info
//@atd | Alias@@Attr of attribute_info
//@atd | AlignValue@@Attr of attribute_info
//@atd | IFunc@@Attr of attribute_info
//@atd | InitSeg@@Attr of attribute_info
//@atd | LoopHint@@Attr of attribute_info
//@atd | Mode@@Attr of attribute_info
//@atd | OMPDeclareSimdDecl@@Attr of attribute_info
//@atd | OMPDeclareTargetDecl@@Attr of attribute_info
//@atd | ObjCBoxable@@Attr of attribute_info
//@atd | ObjCDesignatedInitializer@@Attr of attribute_info
//@atd | ObjCRuntimeName@@Attr of attribute_info
//@atd | ObjCRuntimeVisible@@Attr of attribute_info
//@atd | OpenCLAccess@@Attr of attribute_info
//@atd | Overloadable@@Attr of attribute_info
//@atd | RenderScriptKernel@@Attr of attribute_info
//@atd | Thread@@Attr of attribute_info





//@atd ] <ocaml repr="classic">
//@atd type attribute_info = {
//@atd   pointer : pointer;
//@atd   source_range : source_range;
//@atd   parameters : string list;
//@atd   ~is_inherited : bool;
//@atd   ~is_implicit : bool
//@atd } <ocaml field_prefix="ai_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpAttr(const Attr &Att) {
  std::string tag;
  switch (Att.getKind()) {

































case attr::FallThrough: tag = #FallThrough "Attr"; break;
case attr::Suppress: tag = #Suppress "Attr"; break;
case attr::SwiftContext: tag = #SwiftContext "Attr"; break;
case attr::SwiftErrorResult: tag = #SwiftErrorResult "Attr"; break;
case attr::SwiftIndirectResult: tag = #SwiftIndirectResult "Attr"; break;
case attr::Annotate: tag = #Annotate "Attr"; break;
case attr::CFConsumed: tag = #CFConsumed "Attr"; break;
case attr::CarriesDependency: tag = #CarriesDependency "Attr"; break;
case attr::NSConsumed: tag = #NSConsumed "Attr"; break;
case attr::NonNull: tag = #NonNull "Attr"; break;
case attr::PassObjectSize: tag = #PassObjectSize "Attr"; break;
case attr::AMDGPUFlatWorkGroupSize: tag = #AMDGPUFlatWorkGroupSize "Attr"; break;
case attr::AMDGPUNumSGPR: tag = #AMDGPUNumSGPR "Attr"; break;
case attr::AMDGPUNumVGPR: tag = #AMDGPUNumVGPR "Attr"; break;
case attr::AMDGPUWavesPerEU: tag = #AMDGPUWavesPerEU "Attr"; break;
case attr::ARMInterrupt: tag = #ARMInterrupt "Attr"; break;
case attr::AVRInterrupt: tag = #AVRInterrupt "Attr"; break;
case attr::AVRSignal: tag = #AVRSignal "Attr"; break;
case attr::AcquireCapability: tag = #AcquireCapability "Attr"; break;
case attr::AcquiredAfter: tag = #AcquiredAfter "Attr"; break;
case attr::AcquiredBefore: tag = #AcquiredBefore "Attr"; break;
case attr::AlignMac68k: tag = #AlignMac68k "Attr"; break;
case attr::Aligned: tag = #Aligned "Attr"; break;
case attr::AllocAlign: tag = #AllocAlign "Attr"; break;
case attr::AllocSize: tag = #AllocSize "Attr"; break;
case attr::AlwaysInline: tag = #AlwaysInline "Attr"; break;
case attr::AnalyzerNoReturn: tag = #AnalyzerNoReturn "Attr"; break;
case attr::AnyX86Interrupt: tag = #AnyX86Interrupt "Attr"; break;
case attr::AnyX86NoCallerSavedRegisters: tag = #AnyX86NoCallerSavedRegisters "Attr"; break;
case attr::ArcWeakrefUnavailable: tag = #ArcWeakrefUnavailable "Attr"; break;
case attr::ArgumentWithTypeTag: tag = #ArgumentWithTypeTag "Attr"; break;
case attr::AsmLabel: tag = #AsmLabel "Attr"; break;
case attr::AssertCapability: tag = #AssertCapability "Attr"; break;
case attr::AssertExclusiveLock: tag = #AssertExclusiveLock "Attr"; break;
case attr::AssertSharedLock: tag = #AssertSharedLock "Attr"; break;
case attr::AssumeAligned: tag = #AssumeAligned "Attr"; break;
case attr::Availability: tag = #Availability "Attr"; break;
case attr::Blocks: tag = #Blocks "Attr"; break;
case attr::C11NoReturn: tag = #C11NoReturn "Attr"; break;
case attr::CDecl: tag = #CDecl "Attr"; break;
case attr::CFAuditedTransfer: tag = #CFAuditedTransfer "Attr"; break;
case attr::CFReturnsNotRetained: tag = #CFReturnsNotRetained "Attr"; break;
case attr::CFReturnsRetained: tag = #CFReturnsRetained "Attr"; break;
case attr::CFUnknownTransfer: tag = #CFUnknownTransfer "Attr"; break;
case attr::CUDAConstant: tag = #CUDAConstant "Attr"; break;
case attr::CUDADevice: tag = #CUDADevice "Attr"; break;
case attr::CUDAGlobal: tag = #CUDAGlobal "Attr"; break;
case attr::CUDAHost: tag = #CUDAHost "Attr"; break;
case attr::CUDAInvalidTarget: tag = #CUDAInvalidTarget "Attr"; break;
case attr::CUDALaunchBounds: tag = #CUDALaunchBounds "Attr"; break;
case attr::CUDAShared: tag = #CUDAShared "Attr"; break;
case attr::CXX11NoReturn: tag = #CXX11NoReturn "Attr"; break;
case attr::CallableWhen: tag = #CallableWhen "Attr"; break;
case attr::Capability: tag = #Capability "Attr"; break;
case attr::CapturedRecord: tag = #CapturedRecord "Attr"; break;
case attr::Cleanup: tag = #Cleanup "Attr"; break;
case attr::Cold: tag = #Cold "Attr"; break;
case attr::Common: tag = #Common "Attr"; break;
case attr::Const: tag = #Const "Attr"; break;
case attr::Constructor: tag = #Constructor "Attr"; break;
case attr::Consumable: tag = #Consumable "Attr"; break;
case attr::ConsumableAutoCast: tag = #ConsumableAutoCast "Attr"; break;
case attr::ConsumableSetOnRead: tag = #ConsumableSetOnRead "Attr"; break;
case attr::Convergent: tag = #Convergent "Attr"; break;
case attr::DLLExport: tag = #DLLExport "Attr"; break;
case attr::DLLImport: tag = #DLLImport "Attr"; break;
case attr::Deprecated: tag = #Deprecated "Attr"; break;
case attr::Destructor: tag = #Destructor "Attr"; break;
case attr::DiagnoseIf: tag = #DiagnoseIf "Attr"; break;
case attr::DisableTailCalls: tag = #DisableTailCalls "Attr"; break;
case attr::EmptyBases: tag = #EmptyBases "Attr"; break;
case attr::EnableIf: tag = #EnableIf "Attr"; break;
case attr::EnumExtensibility: tag = #EnumExtensibility "Attr"; break;
case attr::ExclusiveTrylockFunction: tag = #ExclusiveTrylockFunction "Attr"; break;
case attr::ExternalSourceSymbol: tag = #ExternalSourceSymbol "Attr"; break;
case attr::FastCall: tag = #FastCall "Attr"; break;
case attr::Final: tag = #Final "Attr"; break;
case attr::FlagEnum: tag = #FlagEnum "Attr"; break;
case attr::Flatten: tag = #Flatten "Attr"; break;
case attr::Format: tag = #Format "Attr"; break;
case attr::FormatArg: tag = #FormatArg "Attr"; break;
case attr::GNUInline: tag = #GNUInline "Attr"; break;
case attr::GuardedBy: tag = #GuardedBy "Attr"; break;
case attr::GuardedVar: tag = #GuardedVar "Attr"; break;
case attr::Hot: tag = #Hot "Attr"; break;
case attr::IBAction: tag = #IBAction "Attr"; break;
case attr::IBOutlet: tag = #IBOutlet "Attr"; break;
case attr::IBOutletCollection: tag = #IBOutletCollection "Attr"; break;
case attr::InitPriority: tag = #InitPriority "Attr"; break;
case attr::IntelOclBicc: tag = #IntelOclBicc "Attr"; break;
case attr::InternalLinkage: tag = #InternalLinkage "Attr"; break;
case attr::LTOVisibilityPublic: tag = #LTOVisibilityPublic "Attr"; break;
case attr::LayoutVersion: tag = #LayoutVersion "Attr"; break;
case attr::LockReturned: tag = #LockReturned "Attr"; break;
case attr::LocksExcluded: tag = #LocksExcluded "Attr"; break;
case attr::MSABI: tag = #MSABI "Attr"; break;
case attr::MSInheritance: tag = #MSInheritance "Attr"; break;
case attr::MSNoVTable: tag = #MSNoVTable "Attr"; break;
case attr::MSP430Interrupt: tag = #MSP430Interrupt "Attr"; break;
case attr::MSStruct: tag = #MSStruct "Attr"; break;
case attr::MSVtorDisp: tag = #MSVtorDisp "Attr"; break;
case attr::MaxFieldAlignment: tag = #MaxFieldAlignment "Attr"; break;
case attr::MayAlias: tag = #MayAlias "Attr"; break;
case attr::MicroMips: tag = #MicroMips "Attr"; break;
case attr::MinSize: tag = #MinSize "Attr"; break;
case attr::Mips16: tag = #Mips16 "Attr"; break;
case attr::MipsInterrupt: tag = #MipsInterrupt "Attr"; break;
case attr::NSConsumesSelf: tag = #NSConsumesSelf "Attr"; break;
case attr::NSReturnsAutoreleased: tag = #NSReturnsAutoreleased "Attr"; break;
case attr::NSReturnsNotRetained: tag = #NSReturnsNotRetained "Attr"; break;
case attr::NSReturnsRetained: tag = #NSReturnsRetained "Attr"; break;
case attr::Naked: tag = #Naked "Attr"; break;
case attr::NoAlias: tag = #NoAlias "Attr"; break;
case attr::NoCommon: tag = #NoCommon "Attr"; break;
case attr::NoDebug: tag = #NoDebug "Attr"; break;
case attr::NoDuplicate: tag = #NoDuplicate "Attr"; break;
case attr::NoInline: tag = #NoInline "Attr"; break;
case attr::NoInstrumentFunction: tag = #NoInstrumentFunction "Attr"; break;
case attr::NoMicroMips: tag = #NoMicroMips "Attr"; break;
case attr::NoMips16: tag = #NoMips16 "Attr"; break;
case attr::NoReturn: tag = #NoReturn "Attr"; break;
case attr::NoSanitize: tag = #NoSanitize "Attr"; break;
case attr::NoSplitStack: tag = #NoSplitStack "Attr"; break;
case attr::NoThreadSafetyAnalysis: tag = #NoThreadSafetyAnalysis "Attr"; break;
case attr::NoThrow: tag = #NoThrow "Attr"; break;
case attr::NotTailCalled: tag = #NotTailCalled "Attr"; break;
case attr::OMPCaptureNoInit: tag = #OMPCaptureNoInit "Attr"; break;
case attr::OMPThreadPrivateDecl: tag = #OMPThreadPrivateDecl "Attr"; break;
case attr::ObjCBridge: tag = #ObjCBridge "Attr"; break;
case attr::ObjCBridgeMutable: tag = #ObjCBridgeMutable "Attr"; break;
case attr::ObjCBridgeRelated: tag = #ObjCBridgeRelated "Attr"; break;
case attr::ObjCException: tag = #ObjCException "Attr"; break;
case attr::ObjCExplicitProtocolImpl: tag = #ObjCExplicitProtocolImpl "Attr"; break;
case attr::ObjCIndependentClass: tag = #ObjCIndependentClass "Attr"; break;
case attr::ObjCMethodFamily: tag = #ObjCMethodFamily "Attr"; break;
case attr::ObjCNSObject: tag = #ObjCNSObject "Attr"; break;
case attr::ObjCPreciseLifetime: tag = #ObjCPreciseLifetime "Attr"; break;
case attr::ObjCRequiresPropertyDefs: tag = #ObjCRequiresPropertyDefs "Attr"; break;
case attr::ObjCRequiresSuper: tag = #ObjCRequiresSuper "Attr"; break;
case attr::ObjCReturnsInnerPointer: tag = #ObjCReturnsInnerPointer "Attr"; break;
case attr::ObjCRootClass: tag = #ObjCRootClass "Attr"; break;
case attr::ObjCSubclassingRestricted: tag = #ObjCSubclassingRestricted "Attr"; break;
case attr::OpenCLIntelReqdSubGroupSize: tag = #OpenCLIntelReqdSubGroupSize "Attr"; break;
case attr::OpenCLKernel: tag = #OpenCLKernel "Attr"; break;
case attr::OpenCLUnrollHint: tag = #OpenCLUnrollHint "Attr"; break;
case attr::OptimizeNone: tag = #OptimizeNone "Attr"; break;
case attr::Override: tag = #Override "Attr"; break;
case attr::Ownership: tag = #Ownership "Attr"; break;
case attr::Packed: tag = #Packed "Attr"; break;
case attr::ParamTypestate: tag = #ParamTypestate "Attr"; break;
case attr::Pascal: tag = #Pascal "Attr"; break;
case attr::Pcs: tag = #Pcs "Attr"; break;
case attr::PragmaClangBSSSection: tag = #PragmaClangBSSSection "Attr"; break;
case attr::PragmaClangDataSection: tag = #PragmaClangDataSection "Attr"; break;
case attr::PragmaClangRodataSection: tag = #PragmaClangRodataSection "Attr"; break;
case attr::PragmaClangTextSection: tag = #PragmaClangTextSection "Attr"; break;
case attr::PreserveAll: tag = #PreserveAll "Attr"; break;
case attr::PreserveMost: tag = #PreserveMost "Attr"; break;
case attr::PtGuardedBy: tag = #PtGuardedBy "Attr"; break;
case attr::PtGuardedVar: tag = #PtGuardedVar "Attr"; break;
case attr::Pure: tag = #Pure "Attr"; break;
case attr::RegCall: tag = #RegCall "Attr"; break;
case attr::ReleaseCapability: tag = #ReleaseCapability "Attr"; break;
case attr::ReqdWorkGroupSize: tag = #ReqdWorkGroupSize "Attr"; break;
case attr::RequireConstantInit: tag = #RequireConstantInit "Attr"; break;
case attr::RequiresCapability: tag = #RequiresCapability "Attr"; break;
case attr::Restrict: tag = #Restrict "Attr"; break;
case attr::ReturnTypestate: tag = #ReturnTypestate "Attr"; break;
case attr::ReturnsNonNull: tag = #ReturnsNonNull "Attr"; break;
case attr::ReturnsTwice: tag = #ReturnsTwice "Attr"; break;
case attr::ScopedLockable: tag = #ScopedLockable "Attr"; break;
case attr::Section: tag = #Section "Attr"; break;
case attr::SelectAny: tag = #SelectAny "Attr"; break;
case attr::Sentinel: tag = #Sentinel "Attr"; break;
case attr::SetTypestate: tag = #SetTypestate "Attr"; break;
case attr::SharedTrylockFunction: tag = #SharedTrylockFunction "Attr"; break;
case attr::StdCall: tag = #StdCall "Attr"; break;
case attr::SwiftCall: tag = #SwiftCall "Attr"; break;
case attr::SysVABI: tag = #SysVABI "Attr"; break;
case attr::TLSModel: tag = #TLSModel "Attr"; break;
case attr::Target: tag = #Target "Attr"; break;
case attr::TestTypestate: tag = #TestTypestate "Attr"; break;
case attr::ThisCall: tag = #ThisCall "Attr"; break;
case attr::TransparentUnion: tag = #TransparentUnion "Attr"; break;
case attr::TryAcquireCapability: tag = #TryAcquireCapability "Attr"; break;
case attr::TypeTagForDatatype: tag = #TypeTagForDatatype "Attr"; break;
case attr::TypeVisibility: tag = #TypeVisibility "Attr"; break;
case attr::Unavailable: tag = #Unavailable "Attr"; break;
case attr::Unused: tag = #Unused "Attr"; break;
case attr::Used: tag = #Used "Attr"; break;
case attr::Uuid: tag = #Uuid "Attr"; break;
case attr::VecReturn: tag = #VecReturn "Attr"; break;
case attr::VecTypeHint: tag = #VecTypeHint "Attr"; break;
case attr::VectorCall: tag = #VectorCall "Attr"; break;
case attr::Visibility: tag = #Visibility "Attr"; break;
case attr::WarnUnused: tag = #WarnUnused "Attr"; break;
case attr::WarnUnusedResult: tag = #WarnUnusedResult "Attr"; break;
case attr::Weak: tag = #Weak "Attr"; break;
case attr::WeakImport: tag = #WeakImport "Attr"; break;
case attr::WeakRef: tag = #WeakRef "Attr"; break;
case attr::WorkGroupSizeHint: tag = #WorkGroupSizeHint "Attr"; break;
case attr::X86ForceAlignArgPointer: tag = #X86ForceAlignArgPointer "Attr"; break;
case attr::XRayInstrument: tag = #XRayInstrument "Attr"; break;
case attr::XRayLogArgs: tag = #XRayLogArgs "Attr"; break;
case attr::AbiTag: tag = #AbiTag "Attr"; break;
case attr::Alias: tag = #Alias "Attr"; break;
case attr::AlignValue: tag = #AlignValue "Attr"; break;
case attr::IFunc: tag = #IFunc "Attr"; break;
case attr::InitSeg: tag = #InitSeg "Attr"; break;
case attr::LoopHint: tag = #LoopHint "Attr"; break;
case attr::Mode: tag = #Mode "Attr"; break;
case attr::OMPDeclareSimdDecl: tag = #OMPDeclareSimdDecl "Attr"; break;
case attr::OMPDeclareTargetDecl: tag = #OMPDeclareTargetDecl "Attr"; break;
case attr::ObjCBoxable: tag = #ObjCBoxable "Attr"; break;
case attr::ObjCDesignatedInitializer: tag = #ObjCDesignatedInitializer "Attr"; break;
case attr::ObjCRuntimeName: tag = #ObjCRuntimeName "Attr"; break;
case attr::ObjCRuntimeVisible: tag = #ObjCRuntimeVisible "Attr"; break;
case attr::OpenCLAccess: tag = #OpenCLAccess "Attr"; break;
case attr::Overloadable: tag = #Overloadable "Attr"; break;
case attr::RenderScriptKernel: tag = #RenderScriptKernel "Attr"; break;
case attr::Thread: tag = #Thread "Attr"; break;





  }
  VariantScope Scope(OF, tag);
  {
    bool IsInherited = Att.isInherited();
    bool IsImplicit = Att.isImplicit();
    ObjectScope Scope(OF, 3 + IsInherited + IsImplicit);
    OF.emitTag("pointer");
    dumpPointer(&Att);
    OF.emitTag("source_range");
    dumpSourceRange(Att.getRange());

    OF.emitTag("parameters");
    {
      AttrParameterVectorStream OS{};

      // TODO: better dumping of attribute parameters.
      // Here we skip three types of parameters (see #define's below)
      // and output the others as strings, so clients reading the
      // emitted AST will have to parse them.
      const Attr *A = &Att;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"












  switch (A->getKind()) {
  case attr::AMDGPUFlatWorkGroupSize: {
    const auto *SA = cast<AMDGPUFlatWorkGroupSizeAttr>(A);
    OS << " " << SA->getMin();
    OS << " " << SA->getMax();
    break;
  }
  case attr::AMDGPUNumSGPR: {
    const auto *SA = cast<AMDGPUNumSGPRAttr>(A);
    OS << " " << SA->getNumSGPR();
    break;
  }
  case attr::AMDGPUNumVGPR: {
    const auto *SA = cast<AMDGPUNumVGPRAttr>(A);
    OS << " " << SA->getNumVGPR();
    break;
  }
  case attr::AMDGPUWavesPerEU: {
    const auto *SA = cast<AMDGPUWavesPerEUAttr>(A);
    OS << " " << SA->getMin();
    OS << " " << SA->getMax();
    break;
  }
  case attr::ARMInterrupt: {
    const auto *SA = cast<ARMInterruptAttr>(A);
    switch(SA->getInterrupt()) {
    case ARMInterruptAttr::IRQ:
      OS << " IRQ";
      break;
    case ARMInterruptAttr::FIQ:
      OS << " FIQ";
      break;
    case ARMInterruptAttr::SWI:
      OS << " SWI";
      break;
    case ARMInterruptAttr::ABORT:
      OS << " ABORT";
      break;
    case ARMInterruptAttr::UNDEF:
      OS << " UNDEF";
      break;
    case ARMInterruptAttr::Generic:
      OS << " Generic";
      break;
    }
    break;
  }
  case attr::AVRInterrupt: {
    break;
  }
  case attr::AVRSignal: {
    break;
  }
  case attr::AbiTag: {
    const auto *SA = cast<AbiTagAttr>(A);
    for (const auto &Val : SA->tags())
      OS << " " << Val;
    break;
  }
  case attr::AcquireCapability: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<AcquireCapabilityAttr>(A);
    for (AcquireCapabilityAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::AcquiredAfter: {
    const auto *SA = cast<AcquiredAfterAttr>(A);
    for (AcquiredAfterAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::AcquiredBefore: {
    const auto *SA = cast<AcquiredBeforeAttr>(A);
    for (AcquiredBeforeAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::Alias: {
    const auto *SA = cast<AliasAttr>(A);
    OS << " \"" << SA->getAliasee() << "\"";
    break;
  }
  case attr::AlignMac68k: {
    break;
  }
  case attr::AlignValue: {
    const auto *SA = cast<AlignValueAttr>(A);
    OS << "?";
    break;
  }
  case attr::Aligned: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<AlignedAttr>(A);
    if (SA->isAlignmentExpr())
      OS << "?";
    else
      OS << "?";
    break;
  }
  case attr::AllocAlign: {
    const auto *SA = cast<AllocAlignAttr>(A);
    OS << " " << SA->getParamIndex();
    break;
  }
  case attr::AllocSize: {
    const auto *SA = cast<AllocSizeAttr>(A);
    OS << " " << SA->getElemSizeParam();
    OS << " " << SA->getNumElemsParam();
    break;
  }
  case attr::AlwaysInline: {
    OS << " " << A->getSpelling();
    break;
  }
  case attr::AnalyzerNoReturn: {
    break;
  }
  case attr::Annotate: {
    const auto *SA = cast<AnnotateAttr>(A);
    OS << " \"" << SA->getAnnotation() << "\"";
    break;
  }
  case attr::AnyX86Interrupt: {
    break;
  }
  case attr::AnyX86NoCallerSavedRegisters: {
    break;
  }
  case attr::ArcWeakrefUnavailable: {
    break;
  }
  case attr::ArgumentWithTypeTag: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<ArgumentWithTypeTagAttr>(A);
    OS << " " << SA->getArgumentKind()->getName();
    OS << " " << SA->getArgumentIdx();
    OS << " " << SA->getTypeTagIdx();
    if (SA->getIsPointer()) OS << " IsPointer";
    break;
  }
  case attr::AsmLabel: {
    const auto *SA = cast<AsmLabelAttr>(A);
    OS << " \"" << SA->getLabel() << "\"";
    break;
  }
  case attr::AssertCapability: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<AssertCapabilityAttr>(A);
    OS << "?";
    break;
  }
  case attr::AssertExclusiveLock: {
    const auto *SA = cast<AssertExclusiveLockAttr>(A);
    for (AssertExclusiveLockAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::AssertSharedLock: {
    const auto *SA = cast<AssertSharedLockAttr>(A);
    for (AssertSharedLockAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::AssumeAligned: {
    const auto *SA = cast<AssumeAlignedAttr>(A);
    OS << "?";
    OS << "?";
    break;
  }
  case attr::Availability: {
    const auto *SA = cast<AvailabilityAttr>(A);
    OS << " " << SA->getPlatform()->getName();
    OS << " " << SA->getIntroduced();
    OS << " " << SA->getDeprecated();
    OS << " " << SA->getObsoleted();
    if (SA->getUnavailable()) OS << " Unavailable";
    OS << " \"" << SA->getMessage() << "\"";
    if (SA->getStrict()) OS << " Strict";
    OS << " \"" << SA->getReplacement() << "\"";
    break;
  }
  case attr::Blocks: {
    const auto *SA = cast<BlocksAttr>(A);
    switch(SA->getType()) {
    case BlocksAttr::ByRef:
      OS << " ByRef";
      break;
    }
    break;
  }
  case attr::C11NoReturn: {
    break;
  }
  case attr::CDecl: {
    break;
  }
  case attr::CFAuditedTransfer: {
    break;
  }
  case attr::CFConsumed: {
    break;
  }
  case attr::CFReturnsNotRetained: {
    break;
  }
  case attr::CFReturnsRetained: {
    break;
  }
  case attr::CFUnknownTransfer: {
    break;
  }
  case attr::CUDAConstant: {
    break;
  }
  case attr::CUDADevice: {
    break;
  }
  case attr::CUDAGlobal: {
    break;
  }
  case attr::CUDAHost: {
    break;
  }
  case attr::CUDAInvalidTarget: {
    break;
  }
  case attr::CUDALaunchBounds: {
    const auto *SA = cast<CUDALaunchBoundsAttr>(A);
    OS << "?";
    OS << "?";
    break;
  }
  case attr::CUDAShared: {
    break;
  }
  case attr::CXX11NoReturn: {
    break;
  }
  case attr::CallableWhen: {
    const auto *SA = cast<CallableWhenAttr>(A);
    for (CallableWhenAttr::callableStates_iterator I = SA->callableStates_begin(), E = SA->callableStates_end(); I != E; ++I) {
      switch(*I) {
    case CallableWhenAttr::Unknown:
      OS << " Unknown";
      break;
    case CallableWhenAttr::Consumed:
      OS << " Consumed";
      break;
    case CallableWhenAttr::Unconsumed:
      OS << " Unconsumed";
      break;
      }
    }
    break;
  }
  case attr::Capability: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<CapabilityAttr>(A);
    OS << " \"" << SA->getName() << "\"";
    break;
  }
  case attr::CapturedRecord: {
    break;
  }
  case attr::CarriesDependency: {
    break;
  }
  case attr::Cleanup: {
    const auto *SA = cast<CleanupAttr>(A);
    OS << " ";
    OS << "?";
    break;
  }
  case attr::Cold: {
    break;
  }
  case attr::Common: {
    break;
  }
  case attr::Const: {
    break;
  }
  case attr::Constructor: {
    const auto *SA = cast<ConstructorAttr>(A);
    OS << " " << SA->getPriority();
    break;
  }
  case attr::Consumable: {
    const auto *SA = cast<ConsumableAttr>(A);
    switch(SA->getDefaultState()) {
    case ConsumableAttr::Unknown:
      OS << " Unknown";
      break;
    case ConsumableAttr::Consumed:
      OS << " Consumed";
      break;
    case ConsumableAttr::Unconsumed:
      OS << " Unconsumed";
      break;
    }
    break;
  }
  case attr::ConsumableAutoCast: {
    break;
  }
  case attr::ConsumableSetOnRead: {
    break;
  }
  case attr::Convergent: {
    break;
  }
  case attr::DLLExport: {
    break;
  }
  case attr::DLLImport: {
    break;
  }
  case attr::Deprecated: {
    const auto *SA = cast<DeprecatedAttr>(A);
    OS << " \"" << SA->getMessage() << "\"";
    OS << " \"" << SA->getReplacement() << "\"";
    break;
  }
  case attr::Destructor: {
    const auto *SA = cast<DestructorAttr>(A);
    OS << " " << SA->getPriority();
    break;
  }
  case attr::DiagnoseIf: {
    const auto *SA = cast<DiagnoseIfAttr>(A);
    OS << " \"" << SA->getMessage() << "\"";
    switch(SA->getDiagnosticType()) {
    case DiagnoseIfAttr::DT_Error:
      OS << " DT_Error";
      break;
    case DiagnoseIfAttr::DT_Warning:
      OS << " DT_Warning";
      break;
    }
    if (SA->getArgDependent()) OS << " ArgDependent";
    OS << " ";
    OS << "?";
    OS << "?";
    break;
  }
  case attr::DisableTailCalls: {
    break;
  }
  case attr::EmptyBases: {
    break;
  }
  case attr::EnableIf: {
    const auto *SA = cast<EnableIfAttr>(A);
    OS << " \"" << SA->getMessage() << "\"";
    OS << "?";
    break;
  }
  case attr::EnumExtensibility: {
    const auto *SA = cast<EnumExtensibilityAttr>(A);
    switch(SA->getExtensibility()) {
    case EnumExtensibilityAttr::Closed:
      OS << " Closed";
      break;
    case EnumExtensibilityAttr::Open:
      OS << " Open";
      break;
    }
    break;
  }
  case attr::ExclusiveTrylockFunction: {
    const auto *SA = cast<ExclusiveTrylockFunctionAttr>(A);
    OS << "?";
    for (ExclusiveTrylockFunctionAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::ExternalSourceSymbol: {
    const auto *SA = cast<ExternalSourceSymbolAttr>(A);
    OS << " \"" << SA->getLanguage() << "\"";
    OS << " \"" << SA->getDefinedIn() << "\"";
    if (SA->getGeneratedDeclaration()) OS << " GeneratedDeclaration";
    break;
  }
  case attr::FallThrough: {
    break;
  }
  case attr::FastCall: {
    break;
  }
  case attr::Final: {
    OS << " " << A->getSpelling();
    break;
  }
  case attr::FlagEnum: {
    break;
  }
  case attr::Flatten: {
    break;
  }
  case attr::Format: {
    const auto *SA = cast<FormatAttr>(A);
    OS << " " << SA->getType()->getName();
    OS << " " << SA->getFormatIdx();
    OS << " " << SA->getFirstArg();
    break;
  }
  case attr::FormatArg: {
    const auto *SA = cast<FormatArgAttr>(A);
    OS << " " << SA->getFormatIdx();
    break;
  }
  case attr::GNUInline: {
    break;
  }
  case attr::GuardedBy: {
    const auto *SA = cast<GuardedByAttr>(A);
    OS << "?";
    break;
  }
  case attr::GuardedVar: {
    break;
  }
  case attr::Hot: {
    break;
  }
  case attr::IBAction: {
    break;
  }
  case attr::IBOutlet: {
    break;
  }
  case attr::IBOutletCollection: {
    const auto *SA = cast<IBOutletCollectionAttr>(A);
    OS << " " << SA->getInterface().getAsString();
    break;
  }
  case attr::IFunc: {
    const auto *SA = cast<IFuncAttr>(A);
    OS << " \"" << SA->getResolver() << "\"";
    break;
  }
  case attr::InitPriority: {
    const auto *SA = cast<InitPriorityAttr>(A);
    OS << " " << SA->getPriority();
    break;
  }
  case attr::InitSeg: {
    const auto *SA = cast<InitSegAttr>(A);
    OS << " \"" << SA->getSection() << "\"";
    break;
  }
  case attr::IntelOclBicc: {
    break;
  }
  case attr::InternalLinkage: {
    break;
  }
  case attr::LTOVisibilityPublic: {
    break;
  }
  case attr::LayoutVersion: {
    const auto *SA = cast<LayoutVersionAttr>(A);
    OS << " " << SA->getVersion();
    break;
  }
  case attr::LockReturned: {
    const auto *SA = cast<LockReturnedAttr>(A);
    OS << "?";
    break;
  }
  case attr::LocksExcluded: {
    const auto *SA = cast<LocksExcludedAttr>(A);
    for (LocksExcludedAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::LoopHint: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<LoopHintAttr>(A);
    switch(SA->getOption()) {
    case LoopHintAttr::Vectorize:
      OS << " Vectorize";
      break;
    case LoopHintAttr::VectorizeWidth:
      OS << " VectorizeWidth";
      break;
    case LoopHintAttr::Interleave:
      OS << " Interleave";
      break;
    case LoopHintAttr::InterleaveCount:
      OS << " InterleaveCount";
      break;
    case LoopHintAttr::Unroll:
      OS << " Unroll";
      break;
    case LoopHintAttr::UnrollCount:
      OS << " UnrollCount";
      break;
    case LoopHintAttr::Distribute:
      OS << " Distribute";
      break;
    }
    switch(SA->getState()) {
    case LoopHintAttr::Enable:
      OS << " Enable";
      break;
    case LoopHintAttr::Disable:
      OS << " Disable";
      break;
    case LoopHintAttr::Numeric:
      OS << " Numeric";
      break;
    case LoopHintAttr::AssumeSafety:
      OS << " AssumeSafety";
      break;
    case LoopHintAttr::Full:
      OS << " Full";
      break;
    }
    OS << "?";
    break;
  }
  case attr::MSABI: {
    break;
  }
  case attr::MSInheritance: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<MSInheritanceAttr>(A);
    if (SA->getBestCase()) OS << " BestCase";
    break;
  }
  case attr::MSNoVTable: {
    break;
  }
  case attr::MSP430Interrupt: {
    const auto *SA = cast<MSP430InterruptAttr>(A);
    OS << " " << SA->getNumber();
    break;
  }
  case attr::MSStruct: {
    break;
  }
  case attr::MSVtorDisp: {
    const auto *SA = cast<MSVtorDispAttr>(A);
    OS << " " << SA->getVdm();
    break;
  }
  case attr::MaxFieldAlignment: {
    const auto *SA = cast<MaxFieldAlignmentAttr>(A);
    OS << " " << SA->getAlignment();
    break;
  }
  case attr::MayAlias: {
    break;
  }
  case attr::MicroMips: {
    break;
  }
  case attr::MinSize: {
    break;
  }
  case attr::Mips16: {
    break;
  }
  case attr::MipsInterrupt: {
    const auto *SA = cast<MipsInterruptAttr>(A);
    switch(SA->getInterrupt()) {
    case MipsInterruptAttr::sw0:
      OS << " sw0";
      break;
    case MipsInterruptAttr::sw1:
      OS << " sw1";
      break;
    case MipsInterruptAttr::hw0:
      OS << " hw0";
      break;
    case MipsInterruptAttr::hw1:
      OS << " hw1";
      break;
    case MipsInterruptAttr::hw2:
      OS << " hw2";
      break;
    case MipsInterruptAttr::hw3:
      OS << " hw3";
      break;
    case MipsInterruptAttr::hw4:
      OS << " hw4";
      break;
    case MipsInterruptAttr::hw5:
      OS << " hw5";
      break;
    case MipsInterruptAttr::eic:
      OS << " eic";
      break;
    }
    break;
  }
  case attr::Mode: {
    const auto *SA = cast<ModeAttr>(A);
    OS << " " << SA->getMode()->getName();
    break;
  }
  case attr::NSConsumed: {
    break;
  }
  case attr::NSConsumesSelf: {
    break;
  }
  case attr::NSReturnsAutoreleased: {
    break;
  }
  case attr::NSReturnsNotRetained: {
    break;
  }
  case attr::NSReturnsRetained: {
    break;
  }
  case attr::Naked: {
    break;
  }
  case attr::NoAlias: {
    break;
  }
  case attr::NoCommon: {
    break;
  }
  case attr::NoDebug: {
    break;
  }
  case attr::NoDuplicate: {
    break;
  }
  case attr::NoInline: {
    break;
  }
  case attr::NoInstrumentFunction: {
    break;
  }
  case attr::NoMicroMips: {
    break;
  }
  case attr::NoMips16: {
    break;
  }
  case attr::NoReturn: {
    break;
  }
  case attr::NoSanitize: {
    const auto *SA = cast<NoSanitizeAttr>(A);
    for (const auto &Val : SA->sanitizers())
      OS << " " << Val;
    break;
  }
  case attr::NoSplitStack: {
    break;
  }
  case attr::NoThreadSafetyAnalysis: {
    break;
  }
  case attr::NoThrow: {
    break;
  }
  case attr::NonNull: {
    const auto *SA = cast<NonNullAttr>(A);
    for (const auto &Val : SA->args())
      OS << " " << Val;
    break;
  }
  case attr::NotTailCalled: {
    break;
  }
  case attr::OMPCaptureNoInit: {
    break;
  }
  case attr::OMPDeclareSimdDecl: {
    const auto *SA = cast<OMPDeclareSimdDeclAttr>(A);
    switch(SA->getBranchState()) {
    case OMPDeclareSimdDeclAttr::BS_Undefined:
      OS << " BS_Undefined";
      break;
    case OMPDeclareSimdDeclAttr::BS_Inbranch:
      OS << " BS_Inbranch";
      break;
    case OMPDeclareSimdDeclAttr::BS_Notinbranch:
      OS << " BS_Notinbranch";
      break;
    }
    for (const auto &Val : SA->modifiers())
      OS << " " << Val;
    OS << "?";
    for (OMPDeclareSimdDeclAttr::uniforms_iterator I = SA->uniforms_begin(), E = SA->uniforms_end(); I != E; ++I)
      OS << "?";
    for (OMPDeclareSimdDeclAttr::aligneds_iterator I = SA->aligneds_begin(), E = SA->aligneds_end(); I != E; ++I)
      OS << "?";
    for (OMPDeclareSimdDeclAttr::alignments_iterator I = SA->alignments_begin(), E = SA->alignments_end(); I != E; ++I)
      OS << "?";
    for (OMPDeclareSimdDeclAttr::linears_iterator I = SA->linears_begin(), E = SA->linears_end(); I != E; ++I)
      OS << "?";
    for (OMPDeclareSimdDeclAttr::steps_iterator I = SA->steps_begin(), E = SA->steps_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::OMPDeclareTargetDecl: {
    const auto *SA = cast<OMPDeclareTargetDeclAttr>(A);
    switch(SA->getMapType()) {
    case OMPDeclareTargetDeclAttr::MT_To:
      OS << " MT_To";
      break;
    case OMPDeclareTargetDeclAttr::MT_Link:
      OS << " MT_Link";
      break;
    }
    break;
  }
  case attr::OMPThreadPrivateDecl: {
    break;
  }
  case attr::ObjCBoxable: {
    break;
  }
  case attr::ObjCBridge: {
    const auto *SA = cast<ObjCBridgeAttr>(A);
    OS << " " << SA->getBridgedType()->getName();
    break;
  }
  case attr::ObjCBridgeMutable: {
    const auto *SA = cast<ObjCBridgeMutableAttr>(A);
    OS << " " << SA->getBridgedType()->getName();
    break;
  }
  case attr::ObjCBridgeRelated: {
    const auto *SA = cast<ObjCBridgeRelatedAttr>(A);
    OS << " " << SA->getRelatedClass()->getName();
    if (SA->getClassMethod())
      OS << " " << SA->getClassMethod()->getName();
    if (SA->getInstanceMethod())
      OS << " " << SA->getInstanceMethod()->getName();
    break;
  }
  case attr::ObjCDesignatedInitializer: {
    break;
  }
  case attr::ObjCException: {
    break;
  }
  case attr::ObjCExplicitProtocolImpl: {
    break;
  }
  case attr::ObjCIndependentClass: {
    break;
  }
  case attr::ObjCMethodFamily: {
    const auto *SA = cast<ObjCMethodFamilyAttr>(A);
    switch(SA->getFamily()) {
    case ObjCMethodFamilyAttr::OMF_None:
      OS << " OMF_None";
      break;
    case ObjCMethodFamilyAttr::OMF_alloc:
      OS << " OMF_alloc";
      break;
    case ObjCMethodFamilyAttr::OMF_copy:
      OS << " OMF_copy";
      break;
    case ObjCMethodFamilyAttr::OMF_init:
      OS << " OMF_init";
      break;
    case ObjCMethodFamilyAttr::OMF_mutableCopy:
      OS << " OMF_mutableCopy";
      break;
    case ObjCMethodFamilyAttr::OMF_new:
      OS << " OMF_new";
      break;
    }
    break;
  }
  case attr::ObjCNSObject: {
    break;
  }
  case attr::ObjCPreciseLifetime: {
    break;
  }
  case attr::ObjCRequiresPropertyDefs: {
    break;
  }
  case attr::ObjCRequiresSuper: {
    break;
  }
  case attr::ObjCReturnsInnerPointer: {
    break;
  }
  case attr::ObjCRootClass: {
    break;
  }
  case attr::ObjCRuntimeName: {
    const auto *SA = cast<ObjCRuntimeNameAttr>(A);
    OS << " \"" << SA->getMetadataName() << "\"";
    break;
  }
  case attr::ObjCRuntimeVisible: {
    break;
  }
  case attr::ObjCSubclassingRestricted: {
    break;
  }
  case attr::OpenCLAccess: {
    OS << " " << A->getSpelling();
    break;
  }
  case attr::OpenCLIntelReqdSubGroupSize: {
    const auto *SA = cast<OpenCLIntelReqdSubGroupSizeAttr>(A);
    OS << " " << SA->getSubGroupSize();
    break;
  }
  case attr::OpenCLKernel: {
    break;
  }
  case attr::OpenCLUnrollHint: {
    const auto *SA = cast<OpenCLUnrollHintAttr>(A);
    OS << " " << SA->getUnrollHint();
    break;
  }
  case attr::OptimizeNone: {
    break;
  }
  case attr::Overloadable: {
    break;
  }
  case attr::Override: {
    break;
  }
  case attr::Ownership: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<OwnershipAttr>(A);
    OS << " " << SA->getModule()->getName();
    for (const auto &Val : SA->args())
      OS << " " << Val;
    break;
  }
  case attr::Packed: {
    break;
  }
  case attr::ParamTypestate: {
    const auto *SA = cast<ParamTypestateAttr>(A);
    switch(SA->getParamState()) {
    case ParamTypestateAttr::Unknown:
      OS << " Unknown";
      break;
    case ParamTypestateAttr::Consumed:
      OS << " Consumed";
      break;
    case ParamTypestateAttr::Unconsumed:
      OS << " Unconsumed";
      break;
    }
    break;
  }
  case attr::Pascal: {
    break;
  }
  case attr::PassObjectSize: {
    const auto *SA = cast<PassObjectSizeAttr>(A);
    OS << " " << SA->getType();
    break;
  }
  case attr::Pcs: {
    const auto *SA = cast<PcsAttr>(A);
    switch(SA->getPCS()) {
    case PcsAttr::AAPCS:
      OS << " AAPCS";
      break;
    case PcsAttr::AAPCS_VFP:
      OS << " AAPCS_VFP";
      break;
    }
    break;
  }
  case attr::PragmaClangBSSSection: {
    const auto *SA = cast<PragmaClangBSSSectionAttr>(A);
    OS << " \"" << SA->getName() << "\"";
    break;
  }
  case attr::PragmaClangDataSection: {
    const auto *SA = cast<PragmaClangDataSectionAttr>(A);
    OS << " \"" << SA->getName() << "\"";
    break;
  }
  case attr::PragmaClangRodataSection: {
    const auto *SA = cast<PragmaClangRodataSectionAttr>(A);
    OS << " \"" << SA->getName() << "\"";
    break;
  }
  case attr::PragmaClangTextSection: {
    const auto *SA = cast<PragmaClangTextSectionAttr>(A);
    OS << " \"" << SA->getName() << "\"";
    break;
  }
  case attr::PreserveAll: {
    break;
  }
  case attr::PreserveMost: {
    break;
  }
  case attr::PtGuardedBy: {
    const auto *SA = cast<PtGuardedByAttr>(A);
    OS << "?";
    break;
  }
  case attr::PtGuardedVar: {
    break;
  }
  case attr::Pure: {
    break;
  }
  case attr::RegCall: {
    break;
  }
  case attr::ReleaseCapability: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<ReleaseCapabilityAttr>(A);
    for (ReleaseCapabilityAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::RenderScriptKernel: {
    break;
  }
  case attr::ReqdWorkGroupSize: {
    const auto *SA = cast<ReqdWorkGroupSizeAttr>(A);
    OS << " " << SA->getXDim();
    OS << " " << SA->getYDim();
    OS << " " << SA->getZDim();
    break;
  }
  case attr::RequireConstantInit: {
    break;
  }
  case attr::RequiresCapability: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<RequiresCapabilityAttr>(A);
    for (RequiresCapabilityAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::Restrict: {
    OS << " " << A->getSpelling();
    break;
  }
  case attr::ReturnTypestate: {
    const auto *SA = cast<ReturnTypestateAttr>(A);
    switch(SA->getState()) {
    case ReturnTypestateAttr::Unknown:
      OS << " Unknown";
      break;
    case ReturnTypestateAttr::Consumed:
      OS << " Consumed";
      break;
    case ReturnTypestateAttr::Unconsumed:
      OS << " Unconsumed";
      break;
    }
    break;
  }
  case attr::ReturnsNonNull: {
    break;
  }
  case attr::ReturnsTwice: {
    break;
  }
  case attr::ScopedLockable: {
    break;
  }
  case attr::Section: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<SectionAttr>(A);
    OS << " \"" << SA->getName() << "\"";
    break;
  }
  case attr::SelectAny: {
    break;
  }
  case attr::Sentinel: {
    const auto *SA = cast<SentinelAttr>(A);
    OS << " " << SA->getSentinel();
    OS << " " << SA->getNullPos();
    break;
  }
  case attr::SetTypestate: {
    const auto *SA = cast<SetTypestateAttr>(A);
    switch(SA->getNewState()) {
    case SetTypestateAttr::Unknown:
      OS << " Unknown";
      break;
    case SetTypestateAttr::Consumed:
      OS << " Consumed";
      break;
    case SetTypestateAttr::Unconsumed:
      OS << " Unconsumed";
      break;
    }
    break;
  }
  case attr::SharedTrylockFunction: {
    const auto *SA = cast<SharedTrylockFunctionAttr>(A);
    OS << "?";
    for (SharedTrylockFunctionAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::StdCall: {
    break;
  }
  case attr::Suppress: {
    const auto *SA = cast<SuppressAttr>(A);
    for (const auto &Val : SA->diagnosticIdentifiers())
      OS << " " << Val;
    break;
  }
  case attr::SwiftCall: {
    break;
  }
  case attr::SwiftContext: {
    break;
  }
  case attr::SwiftErrorResult: {
    break;
  }
  case attr::SwiftIndirectResult: {
    break;
  }
  case attr::SysVABI: {
    break;
  }
  case attr::TLSModel: {
    const auto *SA = cast<TLSModelAttr>(A);
    OS << " \"" << SA->getModel() << "\"";
    break;
  }
  case attr::Target: {
    const auto *SA = cast<TargetAttr>(A);
    OS << " \"" << SA->getFeaturesStr() << "\"";
    break;
  }
  case attr::TestTypestate: {
    const auto *SA = cast<TestTypestateAttr>(A);
    switch(SA->getTestState()) {
    case TestTypestateAttr::Consumed:
      OS << " Consumed";
      break;
    case TestTypestateAttr::Unconsumed:
      OS << " Unconsumed";
      break;
    }
    break;
  }
  case attr::ThisCall: {
    break;
  }
  case attr::Thread: {
    break;
  }
  case attr::TransparentUnion: {
    break;
  }
  case attr::TryAcquireCapability: {
    OS << " " << A->getSpelling();
    const auto *SA = cast<TryAcquireCapabilityAttr>(A);
    OS << "?";
    for (TryAcquireCapabilityAttr::args_iterator I = SA->args_begin(), E = SA->args_end(); I != E; ++I)
      OS << "?";
    break;
  }
  case attr::TypeTagForDatatype: {
    const auto *SA = cast<TypeTagForDatatypeAttr>(A);
    OS << " " << SA->getArgumentKind()->getName();
    OS << " " << SA->getMatchingCType().getAsString();
    if (SA->getLayoutCompatible()) OS << " LayoutCompatible";
    if (SA->getMustBeNull()) OS << " MustBeNull";
    break;
  }
  case attr::TypeVisibility: {
    const auto *SA = cast<TypeVisibilityAttr>(A);
    switch(SA->getVisibility()) {
    case TypeVisibilityAttr::Default:
      OS << " Default";
      break;
    case TypeVisibilityAttr::Hidden:
      OS << " Hidden";
      break;
    case TypeVisibilityAttr::Protected:
      OS << " Protected";
      break;
    }
    break;
  }
  case attr::Unavailable: {
    const auto *SA = cast<UnavailableAttr>(A);
    OS << " \"" << SA->getMessage() << "\"";
    switch(SA->getImplicitReason()) {
    case UnavailableAttr::IR_None:
      OS << " IR_None";
      break;
    case UnavailableAttr::IR_ARCForbiddenType:
      OS << " IR_ARCForbiddenType";
      break;
    case UnavailableAttr::IR_ForbiddenWeak:
      OS << " IR_ForbiddenWeak";
      break;
    case UnavailableAttr::IR_ARCForbiddenConversion:
      OS << " IR_ARCForbiddenConversion";
      break;
    case UnavailableAttr::IR_ARCInitReturnsUnrelated:
      OS << " IR_ARCInitReturnsUnrelated";
      break;
    case UnavailableAttr::IR_ARCFieldWithOwnership:
      OS << " IR_ARCFieldWithOwnership";
      break;
    }
    break;
  }
  case attr::Unused: {
    OS << " " << A->getSpelling();
    break;
  }
  case attr::Used: {
    break;
  }
  case attr::Uuid: {
    const auto *SA = cast<UuidAttr>(A);
    OS << " \"" << SA->getGuid() << "\"";
    break;
  }
  case attr::VecReturn: {
    break;
  }
  case attr::VecTypeHint: {
    const auto *SA = cast<VecTypeHintAttr>(A);
    OS << " " << SA->getTypeHint().getAsString();
    break;
  }
  case attr::VectorCall: {
    break;
  }
  case attr::Visibility: {
    const auto *SA = cast<VisibilityAttr>(A);
    switch(SA->getVisibility()) {
    case VisibilityAttr::Default:
      OS << " Default";
      break;
    case VisibilityAttr::Hidden:
      OS << " Hidden";
      break;
    case VisibilityAttr::Protected:
      OS << " Protected";
      break;
    }
    break;
  }
  case attr::WarnUnused: {
    break;
  }
  case attr::WarnUnusedResult: {
    OS << " " << A->getSpelling();
    break;
  }
  case attr::Weak: {
    break;
  }
  case attr::WeakImport: {
    break;
  }
  case attr::WeakRef: {
    const auto *SA = cast<WeakRefAttr>(A);
    OS << " \"" << SA->getAliasee() << "\"";
    break;
  }
  case attr::WorkGroupSizeHint: {
    const auto *SA = cast<WorkGroupSizeHintAttr>(A);
    OS << " " << SA->getXDim();
    OS << " " << SA->getYDim();
    OS << " " << SA->getZDim();
    break;
  }
  case attr::X86ForceAlignArgPointer: {
    break;
  }
  case attr::XRayInstrument: {
    OS << " " << A->getSpelling();
    break;
  }
  case attr::XRayLogArgs: {
    const auto *SA = cast<XRayLogArgsAttr>(A);
    OS << " " << SA->getArgumentCount();
    break;
  }
  }




#pragma clang diagnostic pop

      {
        ArrayScope Scope(OF, OS.getContent().size());
        for (const std::string &item : OS.getContent()) {
          OF.emitString(item);
        }
      }
    }

    OF.emitFlag("is_inherited", IsInherited);
    OF.emitFlag("is_implicit", IsImplicit);
  }
}

//===----------------------------------------------------------------------===//
//  C++ Utilities
//===----------------------------------------------------------------------===//

//@atd type access_specifier = [ None | Public | Protected | Private ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpAccessSpecifier(AccessSpecifier AS) {
  switch (AS) {
  case AS_public:
    OF.emitSimpleVariant("Public");
    break;
  case AS_protected:
    OF.emitSimpleVariant("Protected");
    break;
  case AS_private:
    OF.emitSimpleVariant("Private");
    break;
  case AS_none:
    OF.emitSimpleVariant("None");
    break;
  }
}

//@atd type cxx_ctor_initializer = {
//@atd   subject : cxx_ctor_initializer_subject;
//@atd   source_range : source_range;
//@atd   ?init_expr : stmt option;
//@atd } <ocaml field_prefix="xci_">
//@atd type cxx_ctor_initializer_subject = [
//@atd   Member of decl_ref
//@atd | Delegating of type_ptr
//@atd | BaseClass of (type_ptr * bool)
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpCXXCtorInitializer(
    const CXXCtorInitializer &Init) {
  const Expr *E = Init.getInit();
  ObjectScope Scope(OF, 2 + (bool)E);

  OF.emitTag("subject");
  const FieldDecl *FD = Init.getAnyMember();
  if (FD) {
    VariantScope Scope(OF, "Member");
    dumpDeclRef(*FD);
  } else if (Init.isDelegatingInitializer()) {
    VariantScope Scope(OF, "Delegating");
    dumpQualTypeNoQuals(Init.getTypeSourceInfo()->getType());
  } else {
    VariantScope Scope(OF, "BaseClass");
    {
      TupleScope Scope(OF, 2);
      dumpQualTypeNoQuals(Init.getTypeSourceInfo()->getType());
      OF.emitBoolean(Init.isBaseVirtual());
    }
  }
  OF.emitTag("source_range");
  dumpSourceRange(Init.getSourceRange());
  if (E) {
    OF.emitTag("init_expr");
    dumpStmt(E);
  }
}

//@atd type declaration_name = {
//@atd   kind : declaration_name_kind;
//@atd   name : string;
//@atd }  <ocaml field_prefix="dn_">
//@atd type declaration_name_kind = [
//@atd   Identifier
//@atd | ObjCZeroArgSelector
//@atd | ObjCOneArgSelector
//@atd | ObjCMultiArgSelector
//@atd | CXXConstructorName
//@atd | CXXDestructorName
//@atd | CXXConversionFunctionName
//@atd | CXXOperatorName
//@atd | CXXLiteralOperatorName
//@atd | CXXUsingDirective
//@atd | CXXDeductionGuideName
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpDeclarationName(const DeclarationName &Name) {
  ObjectScope Scope(OF, 2); // not covered by tests
  OF.emitTag("kind");
  switch (Name.getNameKind()) {
  case DeclarationName::Identifier:
    OF.emitSimpleVariant("Identifier");
    break;
  case DeclarationName::ObjCZeroArgSelector:
    OF.emitSimpleVariant("ObjCZeroArgSelector");
    break;
  case DeclarationName::ObjCOneArgSelector:
    OF.emitSimpleVariant("ObjCOneArgSelector");
    break;
  case DeclarationName::ObjCMultiArgSelector:
    OF.emitSimpleVariant("ObjCMultiArgSelector");
    break;
  case DeclarationName::CXXConstructorName:
    OF.emitSimpleVariant("CXXConstructorName");
    break;
  case DeclarationName::CXXDestructorName:
    OF.emitSimpleVariant("CXXDestructorName");
    break;
  case DeclarationName::CXXConversionFunctionName:
    OF.emitSimpleVariant("CXXConversionFunctionName");
    break;
  case DeclarationName::CXXOperatorName:
    OF.emitSimpleVariant("CXXOperatorName");
    break;
  case DeclarationName::CXXLiteralOperatorName:
    OF.emitSimpleVariant("CXXLiteralOperatorName");
    break;
  case DeclarationName::CXXUsingDirective:
    OF.emitSimpleVariant("CXXUsingDirective");
    break;
  case DeclarationName::CXXDeductionGuideName:
    OF.emitSimpleVariant("CXXDeductionGuideName");
    break;
  }
  OF.emitTag("name");
  OF.emitString(Name.getAsString());
}
//@atd type nested_name_specifier_loc = {
//@atd   kind : specifier_kind;
//@atd   ?ref : decl_ref option;
//@atd } <ocaml field_prefix="nnsl_">
//@atd type specifier_kind = [
//@atd    Identifier
//@atd  | Namespace
//@atd  | NamespaceAlias
//@atd  | TypeSpec
//@atd  | TypeSpecWithTemplate
//@atd  | Global
//@atd  | Super
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpNestedNameSpecifierLoc(
    NestedNameSpecifierLoc NNS) {
  SmallVector<NestedNameSpecifierLoc, 8> NestedNames;
  while (NNS) {
    NestedNames.push_back(NNS);
    NNS = NNS.getPrefix();
  }
  ArrayScope Scope(OF, NestedNames.size());
  while (!NestedNames.empty()) {
    NNS = NestedNames.pop_back_val();
    NestedNameSpecifier::SpecifierKind Kind =
        NNS.getNestedNameSpecifier()->getKind();
    ObjectScope Scope(OF, 2);
    OF.emitTag("kind");
    switch (Kind) {
    case NestedNameSpecifier::Identifier:
      OF.emitSimpleVariant("Identifier");
      break;
    case NestedNameSpecifier::Namespace:
      OF.emitSimpleVariant("Namespace");
      OF.emitTag("ref");
      dumpDeclRef(*NNS.getNestedNameSpecifier()->getAsNamespace());
      break;
    case NestedNameSpecifier::NamespaceAlias:
      OF.emitSimpleVariant("NamespaceAlias");
      OF.emitTag("ref");
      dumpDeclRef(*NNS.getNestedNameSpecifier()->getAsNamespaceAlias());
      break;
    case NestedNameSpecifier::TypeSpec:
      OF.emitSimpleVariant("TypeSpec");
      break;
    case NestedNameSpecifier::TypeSpecWithTemplate:
      OF.emitSimpleVariant("TypeSpecWithTemplate");
      break;
    case NestedNameSpecifier::Global:
      OF.emitSimpleVariant("Global");
      break;
    case NestedNameSpecifier::Super:
      OF.emitSimpleVariant("Super");
      break;
    }
  }
}

// template <class ATDWriter>
// void ASTExporter<ATDWriter>::dumpTemplateParameters(const
// TemplateParameterList *TPL) {
//  if (!TPL)
//    return;
//
//  for (TemplateParameterList::const_iterator I = TPL->begin(), E = TPL->end();
//       I != E; ++I)
//    dumpDecl(*I);
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::dumpTemplateArgumentListInfo(
//    const TemplateArgumentListInfo &TALI) {
//  for (unsigned i = 0, e = TALI.size(); i < e; ++i) {
//    dumpTemplateArgumentLoc(TALI[i]);
//  }
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::dumpTemplateArgumentLoc(const
// TemplateArgumentLoc &A) {
//  dumpTemplateArgument(A.getArgument(), A.getSourceRange());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::dumpTemplateArgumentList(const
// TemplateArgumentList &TAL) {
//  for (unsigned i = 0, e = TAL.size(); i < e; ++i)
//    dumpTemplateArgument(TAL[i]);
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::dumpTemplateArgument(const TemplateArgument &A,
// SourceRange R) {
//  ObjectScope Scope(OF);
//  OS << "TemplateArgument";
//  if (R.isValid())
//    dumpSourceRange(R);
//
//  switch (A.getKind()) {
//  case TemplateArgument::Null:
//    OS << " null";
//    break;
//  case TemplateArgument::Type:
//    OS << " type";
//    dumpQualType(A.getAsType());
//    break;
//  case TemplateArgument::Declaration:
//    OS << " decl";
//    dumpDeclRef(A.getAsDecl());
//    break;
//  case TemplateArgument::NullPtr:
//    OS << " nullptr";
//    break;
//  case TemplateArgument::Integral:
//    OS << " integral " << A.getAsIntegral();
//    break;
//  case TemplateArgument::Template:
//    OS << " template ";
//    // FIXME: do not use the local dump method
//    A.getAsTemplate().dump(OS);
//    break;
//  case TemplateArgument::TemplateExpansion:
//    OS << " template expansion";
//    // FIXME: do not use the local dump method
//    A.getAsTemplateOrTemplatePattern().dump(OS);
//    break;
//  case TemplateArgument::Expression:
//    OS << " expr";
//    dumpStmt(A.getAsExpr());
//    break;
//  case TemplateArgument::Pack:
//    OS << " pack";
//    for (TemplateArgument::pack_iterator I = A.pack_begin(), E = A.pack_end();
//         I != E; ++I) {
//      dumpTemplateArgument(*I);
//    }
//    break;
//  }
//}

template <class ATDWriter>
bool ASTExporter<ATDWriter>::alwaysEmitParent(const Decl *D) {
  if (isa<ObjCMethodDecl>(D) || isa<CXXMethodDecl>(D) || isa<FieldDecl>(D) ||
      isa<ObjCIvarDecl>(D)) {
    return true;
  }
  return false;
}
//===----------------------------------------------------------------------===//
//  Decl dumping methods.
//===----------------------------------------------------------------------===//


























//@atd #define @AccessSpec@_decl_tuple @ Decl@_tuple





//@atd #define @Block@_decl_tuple @ Decl@_tuple





//@atd #define @Captured@_decl_tuple @ Decl@_tuple





//@atd #define @ClassScopeFunctionSpecialization@_decl_tuple @ Decl@_tuple





//@atd #define @Empty@_decl_tuple @ Decl@_tuple





//@atd #define @Export@_decl_tuple @ Decl@_tuple





//@atd #define @ExternCContext@_decl_tuple @ Decl@_tuple





//@atd #define @FileScopeAsm@_decl_tuple @ Decl@_tuple





//@atd #define @Friend@_decl_tuple @ Decl@_tuple





//@atd #define @FriendTemplate@_decl_tuple @ Decl@_tuple





//@atd #define @Import@_decl_tuple @ Decl@_tuple





//@atd #define @LinkageSpec@_decl_tuple @ Decl@_tuple





//@atd #define @Named@_decl_tuple @ Decl@_tuple



//@atd #define @Label@_decl_tuple @ NamedDecl@_tuple





//@atd #define @Namespace@_decl_tuple @ NamedDecl@_tuple





//@atd #define @NamespaceAlias@_decl_tuple @ NamedDecl@_tuple





//@atd #define @ObjCCompatibleAlias@_decl_tuple @ NamedDecl@_tuple





//@atd #define @ObjCContainer@_decl_tuple @ NamedDecl@_tuple



//@atd #define @ObjCCategory@_decl_tuple @ ObjCContainerDecl@_tuple





//@atd #define @ObjCImpl@_decl_tuple @ ObjCContainerDecl@_tuple



//@atd #define @ObjCCategoryImpl@_decl_tuple @ ObjCImplDecl@_tuple





//@atd #define @ObjCImplementation@_decl_tuple @ ObjCImplDecl@_tuple









//@atd #define @ObjCInterface@_decl_tuple @ ObjCContainerDecl@_tuple





//@atd #define @ObjCProtocol@_decl_tuple @ ObjCContainerDecl@_tuple









//@atd #define @ObjCMethod@_decl_tuple @ NamedDecl@_tuple





//@atd #define @ObjCProperty@_decl_tuple @ NamedDecl@_tuple





//@atd #define @Template@_decl_tuple @ NamedDecl@_tuple



//@atd #define @BuiltinTemplate@_decl_tuple @ TemplateDecl@_tuple





//@atd #define @RedeclarableTemplate@_decl_tuple @ TemplateDecl@_tuple



//@atd #define @ClassTemplate@_decl_tuple @ RedeclarableTemplateDecl@_tuple





//@atd #define @FunctionTemplate@_decl_tuple @ RedeclarableTemplateDecl@_tuple





//@atd #define @TypeAliasTemplate@_decl_tuple @ RedeclarableTemplateDecl@_tuple





//@atd #define @VarTemplate@_decl_tuple @ RedeclarableTemplateDecl@_tuple









//@atd #define @TemplateTemplateParm@_decl_tuple @ TemplateDecl@_tuple









//@atd #define @Type@_decl_tuple @ NamedDecl@_tuple



//@atd #define @Tag@_decl_tuple @ TypeDecl@_tuple



//@atd #define @Enum@_decl_tuple @ TagDecl@_tuple





//@atd #define @Record@_decl_tuple @ TagDecl@_tuple



//@atd #define @CXXRecord@_decl_tuple @ RecordDecl@_tuple



//@atd #define @ClassTemplateSpecialization@_decl_tuple @ CXXRecordDecl@_tuple



//@atd #define @ClassTemplatePartialSpecialization@_decl_tuple @ ClassTemplateSpecializationDecl@_tuple





















//@atd #define @TemplateTypeParm@_decl_tuple @ TypeDecl@_tuple





//@atd #define @TypedefName@_decl_tuple @ TypeDecl@_tuple



//@atd #define @ObjCTypeParam@_decl_tuple @ TypedefNameDecl@_tuple





//@atd #define @TypeAlias@_decl_tuple @ TypedefNameDecl@_tuple





//@atd #define @Typedef@_decl_tuple @ TypedefNameDecl@_tuple









//@atd #define @UnresolvedUsingTypename@_decl_tuple @ TypeDecl@_tuple









//@atd #define @Using@_decl_tuple @ NamedDecl@_tuple





//@atd #define @UsingDirective@_decl_tuple @ NamedDecl@_tuple





//@atd #define @UsingPack@_decl_tuple @ NamedDecl@_tuple





//@atd #define @UsingShadow@_decl_tuple @ NamedDecl@_tuple



//@atd #define @ConstructorUsingShadow@_decl_tuple @ UsingShadowDecl@_tuple









//@atd #define @Value@_decl_tuple @ NamedDecl@_tuple



//@atd #define @Binding@_decl_tuple @ ValueDecl@_tuple





//@atd #define @Declarator@_decl_tuple @ ValueDecl@_tuple



//@atd #define @Field@_decl_tuple @ DeclaratorDecl@_tuple



//@atd #define @ObjCAtDefsField@_decl_tuple @ FieldDecl@_tuple





//@atd #define @ObjCIvar@_decl_tuple @ FieldDecl@_tuple









//@atd #define @Function@_decl_tuple @ DeclaratorDecl@_tuple



//@atd #define @CXXDeductionGuide@_decl_tuple @ FunctionDecl@_tuple





//@atd #define @CXXMethod@_decl_tuple @ FunctionDecl@_tuple



//@atd #define @CXXConstructor@_decl_tuple @ CXXMethodDecl@_tuple





//@atd #define @CXXConversion@_decl_tuple @ CXXMethodDecl@_tuple





//@atd #define @CXXDestructor@_decl_tuple @ CXXMethodDecl@_tuple













//@atd #define @MSProperty@_decl_tuple @ DeclaratorDecl@_tuple





//@atd #define @NonTypeTemplateParm@_decl_tuple @ DeclaratorDecl@_tuple





//@atd #define @Var@_decl_tuple @ DeclaratorDecl@_tuple



//@atd #define @Decomposition@_decl_tuple @ VarDecl@_tuple





//@atd #define @ImplicitParam@_decl_tuple @ VarDecl@_tuple





//@atd #define @OMPCapturedExpr@_decl_tuple @ VarDecl@_tuple





//@atd #define @ParmVar@_decl_tuple @ VarDecl@_tuple





//@atd #define @VarTemplateSpecialization@_decl_tuple @ VarDecl@_tuple



//@atd #define @VarTemplatePartialSpecialization@_decl_tuple @ VarTemplateSpecializationDecl@_tuple

















//@atd #define @EnumConstant@_decl_tuple @ ValueDecl@_tuple





//@atd #define @IndirectField@_decl_tuple @ ValueDecl@_tuple





//@atd #define @OMPDeclareReduction@_decl_tuple @ ValueDecl@_tuple





//@atd #define @UnresolvedUsingValue@_decl_tuple @ ValueDecl@_tuple













//@atd #define @OMPThreadPrivate@_decl_tuple @ Decl@_tuple





//@atd #define @ObjCPropertyImpl@_decl_tuple @ Decl@_tuple





//@atd #define @PragmaComment@_decl_tuple @ Decl@_tuple





//@atd #define @PragmaDetectMismatch@_decl_tuple @ Decl@_tuple





//@atd #define @StaticAssert@_decl_tuple @ Decl@_tuple





//@atd #define @TranslationUnit@_decl_tuple @ Decl@_tuple






















                           












template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpDecl(const Decl *D) {
  if (!D) {
    // We use a fixed EmptyDecl node to represent null pointers
    D = NullPtrDecl;
  }
  VariantScope Scope(OF, std::string(D->getDeclKindName()) + "Decl");
  {
    TupleScope Scope(OF, ASTExporter::tupleSizeOfDeclKind(D->getKind()));
    ConstDeclVisitor<ASTExporter<ATDWriter>>::Visit(D);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::DeclTupleSize() {
  return 1;
}

//@atd #define decl_tuple decl_info
//@atd type decl_info = {
//@atd   pointer : pointer;
//@atd   ?parent_pointer : pointer option;
//@atd   source_range : source_range;
//@atd   ?owning_module : string option;
//@atd   ~is_hidden : bool;
//@atd   ~is_implicit : bool;
//@atd   ~is_used : bool;
//@atd   ~is_this_declaration_referenced : bool;
//@atd   ~is_invalid_decl : bool;
//@atd   ~attributes : attribute list;
//@atd   ?full_comment : comment option;
//@atd   ~access <ocaml default="`None"> : access_specifier
//@atd } <ocaml field_prefix="di_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitDecl(const Decl *D) {
  {
    bool ShouldEmitParentPointer =
        alwaysEmitParent(D) ||
        D->getLexicalDeclContext() != D->getDeclContext();
    Module *M = D->getImportedOwningModule();
    if (!M) {
      M = D->getLocalOwningModule();
    }
    const NamedDecl *ND = dyn_cast<NamedDecl>(D);
    bool IsNDHidden = ND && ND->isHidden();
    bool IsDImplicit = D->isImplicit();
    bool IsDUsed = D->isUsed();
    bool IsDReferenced = D->isThisDeclarationReferenced();
    bool IsDInvalid = D->isInvalidDecl();
    bool HasAttributes = D->hasAttrs();
    const FullComment *Comment =
        D->getASTContext().getLocalCommentForDeclUncached(D);
    AccessSpecifier Access = D->getAccess();
    bool HasAccess = Access != AccessSpecifier::AS_none;
    int maxSize = 3 + ShouldEmitParentPointer + (bool)M + IsNDHidden +
                  IsDImplicit + IsDUsed + IsDReferenced + IsDInvalid +
                  HasAttributes + (bool)Comment + HasAccess;
    ObjectScope Scope(OF, maxSize);

    OF.emitTag("pointer");
    dumpPointer(D);
    if (ShouldEmitParentPointer) {
      OF.emitTag("parent_pointer");
      dumpPointer(cast<Decl>(D->getDeclContext()));
    }

    OF.emitTag("source_range");
    dumpSourceRange(D->getSourceRange());
    if (M) {
      OF.emitTag("owning_module");
      OF.emitString(M->getFullModuleName());
    }
    OF.emitFlag("is_hidden", IsNDHidden);
    OF.emitFlag("is_implicit", IsDImplicit);
    OF.emitFlag("is_used", IsDUsed);
    OF.emitFlag("is_this_declaration_referenced", IsDReferenced);
    OF.emitFlag("is_invalid_decl", IsDInvalid);

    if (HasAttributes) {
      OF.emitTag("attributes");
      ArrayScope ArrayAttr(OF, D->getAttrs().size());
      for (auto I : D->attrs()) {
        dumpAttr(*I);
      }
    }

    if (Comment && Options.dumpComments) {
      OF.emitTag("full_comment");
      dumpFullComment(Comment);
    }

    if (HasAccess) {
      OF.emitTag("access");
      dumpAccessSpecifier(Access);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CapturedDeclTupleSize() {
  return DeclTupleSize() + DeclContextTupleSize();
}
//@atd #define captured_decl_tuple decl_tuple * decl_context_tuple
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCapturedDecl(const CapturedDecl *D) {
  VisitDecl(D);
  VisitDeclContext(D);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::LinkageSpecDeclTupleSize() {
  return DeclTupleSize() + DeclContextTupleSize();
}
//@atd #define linkage_spec_decl_tuple decl_tuple * decl_context_tuple
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitLinkageSpecDecl(const LinkageSpecDecl *D) {
  VisitDecl(D);
  VisitDeclContext(D);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::NamespaceDeclTupleSize() {
  return NamedDeclTupleSize() + DeclContextTupleSize() + 1;
}
//@atd #define namespace_decl_tuple named_decl_tuple * decl_context_tuple * namespace_decl_info
//@atd type namespace_decl_info = {
//@atd   ~is_inline : bool;
//@atd   ?original_namespace : decl_ref option;
//@atd } <ocaml field_prefix="ndi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitNamespaceDecl(const NamespaceDecl *D) {
  VisitNamedDecl(D);
  VisitDeclContext(D);

  bool IsInline = D->isInline();
  bool IsOriginalNamespace = D->isOriginalNamespace();
  ObjectScope Scope(OF, 0 + IsInline + !IsOriginalNamespace);

  OF.emitFlag("is_inline", IsInline);
  if (!IsOriginalNamespace) {
    OF.emitTag("original_namespace");
    dumpDeclRef(*D->getOriginalNamespace());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCContainerDeclTupleSize() {
  return NamedDeclTupleSize() + DeclContextTupleSize();
}
//@atd #define obj_c_container_decl_tuple named_decl_tuple * decl_context_tuple
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCContainerDecl(
    const ObjCContainerDecl *D) {
  VisitNamedDecl(D);
  VisitDeclContext(D);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TagDeclTupleSize() {
  return TypeDeclTupleSize() + DeclContextTupleSize() + 1;
}
//@atd type tag_kind = [
//@atd   TTK_Struct
//@atd | TTK_Interface
//@atd | TTK_Union
//@atd | TTK_Class
//@atd | TTK_Enum
//@atd ]
//@atd #define tag_decl_tuple type_decl_tuple * decl_context_tuple * tag_kind
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitTagDecl(const TagDecl *D) {
  VisitTypeDecl(D);
  VisitDeclContext(D);
  switch (D->getTagKind()) {
  case TagTypeKind::TTK_Struct:
    OF.emitSimpleVariant("TTK_Struct");
    break;
  case TagTypeKind::TTK_Interface:
    OF.emitSimpleVariant("TTK_Interface");
    break;
  case TagTypeKind::TTK_Union:
    OF.emitSimpleVariant("TTK_Union");
    break;
  case TagTypeKind::TTK_Class:
    OF.emitSimpleVariant("TTK_Class");
    break;
  case TagTypeKind::TTK_Enum:
    OF.emitSimpleVariant("TTK_Enum");
    break;
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TypeDeclTupleSize() {
  return NamedDeclTupleSize() + 1;
}
//@atd #define type_decl_tuple named_decl_tuple * type_ptr
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitTypeDecl(const TypeDecl *D) {
  VisitNamedDecl(D);
  const Type *T = D->getTypeForDecl();
  dumpPointerToType(T);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ValueDeclTupleSize() {
  return NamedDeclTupleSize() + 1;
}
//@atd #define value_decl_tuple named_decl_tuple * qual_type
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitValueDecl(const ValueDecl *D) {
  VisitNamedDecl(D);
  dumpQualType(D->getType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TranslationUnitDeclTupleSize() {
  return DeclTupleSize() + DeclContextTupleSize() + 1;
}
//@atd type input_kind = [
//@atd   IK_None
//@atd | IK_Asm
//@atd | IK_C
//@atd | IK_CXX
//@atd | IK_ObjC
//@atd | IK_ObjCXX
//@atd | IK_OpenCL
//@atd | IK_CUDA
//@atd | IK_RenderScript
//@atd | IK_LLVM_IR
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpInputKind(InputKind kind) {
  // Despite here we deal only with the language field of InputKind, there are
  // new info in InputKind that can still be used, e.g. whether the source is
  // preprocessed (PP), or precompiled.
  switch (kind.getLanguage()) {
  case InputKind::Unknown:
    OF.emitSimpleVariant("IK_None");
    break;
  case InputKind::Asm:
    OF.emitSimpleVariant("IK_Asm");
    break;
  case InputKind::C:
    OF.emitSimpleVariant("IK_C");
    break;
  case InputKind::CXX:
    OF.emitSimpleVariant("IK_CXX");
    break;
  case InputKind::ObjC:
    OF.emitSimpleVariant("IK_ObjC");
    break;
  case InputKind::ObjCXX:
    OF.emitSimpleVariant("IK_ObjCXX");
    break;
  case InputKind::OpenCL:
    OF.emitSimpleVariant("IK_OpenCL");
    break;
  case InputKind::CUDA:
    OF.emitSimpleVariant("IK_CUDA");
    break;
  case InputKind::RenderScript:
    OF.emitSimpleVariant("IK_RenderScript");
    break;
  case InputKind::LLVM_IR:
    OF.emitSimpleVariant("IK_LLVM_IR");
    break;
  }
}
//@atd #define translation_unit_decl_tuple decl_tuple * decl_context_tuple * translation_unit_decl_info
//@atd type  translation_unit_decl_info = {
//@atd   input_path : source_file;
//@atd   input_kind : input_kind;
//@atd   ~arc_enabled : bool;
//@atd   types : c_type list;
//@atd } <ocaml field_prefix="tudi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitTranslationUnitDecl(
    const TranslationUnitDecl *D) {
  VisitDecl(D);
  VisitDeclContext(D);
  bool IsARCEnabled = Context.getLangOpts().ObjCAutoRefCount;
  ObjectScope Scope(OF, 3 + IsARCEnabled);
  OF.emitTag("input_path");
  OF.emitString(
      Options.normalizeSourcePath(Options.inputFile.getFile().str().c_str()));
  OF.emitTag("input_kind");
  dumpInputKind(Options.inputFile.getKind());
  OF.emitFlag("arc_enabled", IsARCEnabled);
  OF.emitTag("types");
  const auto &types = Context.getTypes();
  ArrayScope aScope(OF, types.size() + 1); // + 1 for nullptr
  for (const Type *type : types) {
    dumpType(type);
  }
  // Just in case, add NoneType to dumped types
  dumpType(nullptr);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::NamedDeclTupleSize() {
  return DeclTupleSize() + 1;
}
//@atd #define named_decl_tuple decl_tuple * named_decl_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitNamedDecl(const NamedDecl *D) {
  VisitDecl(D);
  dumpName(*D);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TypedefDeclTupleSize() {
  return ASTExporter::TypedefNameDeclTupleSize() + 1;
}
//@atd #define typedef_decl_tuple typedef_name_decl_tuple * typedef_decl_info
//@atd type typedef_decl_info = {
//@atd   ~is_module_private : bool
//@atd } <ocaml field_prefix="tdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitTypedefDecl(const TypedefDecl *D) {
  ASTExporter<ATDWriter>::VisitTypedefNameDecl(D);

  bool IsModulePrivate = D->isModulePrivate();
  ObjectScope Scope(OF, 0 + IsModulePrivate);

  OF.emitFlag("is_module_private", IsModulePrivate);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::EnumDeclTupleSize() {
  return TagDeclTupleSize() + 1;
}
//@atd #define enum_decl_tuple tag_decl_tuple * enum_decl_info
//@atd type enum_decl_info = {
//@atd   ?scope : enum_decl_scope option;
//@atd   ~is_module_private : bool
//@atd } <ocaml field_prefix="edi_">
//@atd type enum_decl_scope = [Class | Struct]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitEnumDecl(const EnumDecl *D) {
  VisitTagDecl(D);

  bool IsScoped = D->isScoped();
  bool IsModulePrivate = D->isModulePrivate();
  ObjectScope Scope(OF, 0 + IsScoped + IsModulePrivate); // not covered by tests

  if (IsScoped) {
    OF.emitTag("scope");
    if (D->isScopedUsingClassTag())
      OF.emitSimpleVariant("Class");
    else
      OF.emitSimpleVariant("Struct");
  }
  OF.emitFlag("is_module_private", IsModulePrivate);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::RecordDeclTupleSize() {
  return TagDeclTupleSize() + 1;
}
//@atd #define record_decl_tuple tag_decl_tuple * record_decl_info
//@atd type record_decl_info = {
//@atd   definition_ptr : pointer;
//@atd   ~is_module_private : bool;
//@atd   ~is_complete_definition : bool;
//@atd   ~is_dependent_type : bool;
//@atd } <ocaml field_prefix="rdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitRecordDecl(const RecordDecl *D) {
  VisitTagDecl(D);

  bool IsModulePrivate = D->isModulePrivate();
  bool IsCompleteDefinition = D->isCompleteDefinition();
  bool IsDependentType = D->isDependentType();
  ObjectScope Scope(OF, 1 + IsModulePrivate + IsCompleteDefinition + IsDependentType);
  OF.emitTag("definition_ptr");
  dumpPointer(D->getDefinition());
  OF.emitFlag("is_module_private", IsModulePrivate);
  OF.emitFlag("is_complete_definition", IsCompleteDefinition);
  OF.emitFlag("is_dependent_type", IsDependentType);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::EnumConstantDeclTupleSize() {
  return ValueDeclTupleSize() + 1;
}
//@atd #define enum_constant_decl_tuple value_decl_tuple * enum_constant_decl_info
//@atd type enum_constant_decl_info = {
//@atd   ?init_expr : stmt option
//@atd } <ocaml field_prefix="ecdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitEnumConstantDecl(const EnumConstantDecl *D) {
  VisitValueDecl(D);

  const Expr *Init = D->getInitExpr();
  ObjectScope Scope(OF, 0 + (bool)Init); // not covered by tests

  if (Init) {
    OF.emitTag("init_expr");
    dumpStmt(Init);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::IndirectFieldDeclTupleSize() {
  return ValueDeclTupleSize() + 1;
}
//@atd #define indirect_field_decl_tuple value_decl_tuple * decl_ref list
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitIndirectFieldDecl(
    const IndirectFieldDecl *D) {
  VisitValueDecl(D);
  ArrayScope Scope(
      OF,
      std::distance(D->chain_begin(), D->chain_end())); // not covered by tests
  for (auto I : D->chain()) {
    dumpDeclRef(*I);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FunctionDeclTupleSize() {
  return ASTExporter::DeclaratorDeclTupleSize() + 1;
}
//@atd #define function_decl_tuple declarator_decl_tuple * function_decl_info
//@atd type function_decl_info = {
//@atd   ?mangled_name : string option;
//@atd   ?storage_class : string option;
//@atd   ~is_inline : bool;
//@atd   ~is_module_private : bool;
//@atd   ~is_pure : bool;
//@atd   ~is_delete_as_written : bool;
//@atd   ~is_no_throw : bool;
//@atd   ~parameters : decl list;
//@atd   ?decl_ptr_with_body : pointer option;
//@atd   ?body : stmt option;
//@atd   ?template_specialization : template_specialization_info option
//@atd } <ocaml field_prefix="fdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFunctionDecl(const FunctionDecl *D) {
  ASTExporter<ATDWriter>::VisitDeclaratorDecl(D);
  // We purposedly do not call VisitDeclContext(D).

  bool ShouldMangleName = Mangler->shouldMangleDeclName(D);
  StorageClass SC = D->getStorageClass();
  bool HasStorageClass = SC != SC_None;
  bool IsInlineSpecified = D->isInlineSpecified();
  bool IsModulePrivate = D->isModulePrivate();
  bool IsPure = D->isPure();
  bool IsDeletedAsWritten = D->isDeletedAsWritten();

  const FunctionProtoType *FPT = D->getType()->getAs<FunctionProtoType>();
  // FunctionProtoType::canThrow is more informative, consider using
  // CanThrowResult type instead
  // https://github.com/llvm-mirror/clang/commit/ce58cd720b070c4481f32911d5d9c66411963ca6
  auto IsNoThrow = FPT ? FPT->isNothrow(Context) : false;
  const FunctionDecl *DeclWithBody = D;
  // FunctionDecl::hasBody() will set DeclWithBody pointer to decl that
  // has body. If there is no body in all decls of that function,
  // then we need to set DeclWithBody to nullptr manually
  if (!D->hasBody(DeclWithBody)) {
    DeclWithBody = nullptr;
  }
  bool HasDeclarationBody = D->doesThisDeclarationHaveABody();
  FunctionTemplateDecl *TemplateDecl = D->getPrimaryTemplate();
  // suboptimal: decls_in_prototype_scope and parameters not taken into account
  // accurately
  int size = 2 + ShouldMangleName + HasStorageClass + IsInlineSpecified +
             IsModulePrivate + IsPure + IsDeletedAsWritten + IsNoThrow +
             HasDeclarationBody + (bool)DeclWithBody + (bool)TemplateDecl;
  ObjectScope Scope(OF, size);

  if (ShouldMangleName) {
    OF.emitTag("mangled_name");
    SmallString<64> Buf;
    llvm::raw_svector_ostream StrOS(Buf);
    if (const auto *CD = dyn_cast<CXXConstructorDecl>(D)) {
      Mangler->mangleCXXCtor(CD, Ctor_Complete, StrOS);
    } else if (const auto *DD = dyn_cast<CXXDestructorDecl>(D)) {
      Mangler->mangleCXXDtor(DD, Dtor_Deleting, StrOS);
    } else {
      Mangler->mangleName(D, StrOS);
    }
    // mangled names can get ridiculously long, so hash them to a fixed size
    OF.emitString(std::to_string(fnv64Hash(StrOS)));
  }

  if (HasStorageClass) {
    OF.emitTag("storage_class");
    OF.emitString(VarDecl::getStorageClassSpecifierString(SC));
  }

  OF.emitFlag("is_inline", IsInlineSpecified);
  OF.emitFlag("is_module_private", IsModulePrivate);
  OF.emitFlag("is_pure", IsPure);
  OF.emitFlag("is_delete_as_written", IsDeletedAsWritten);
  OF.emitFlag("is_no_throw", IsNoThrow);

  //  if (const FunctionProtoType *FPT =
  //  D->getType()->getAs<FunctionProtoType>()) {
  //    FunctionProtoType::ExtProtoInfo EPI = FPT->getExtProtoInfo();
  //    switch (EPI.ExceptionSpec.Type) {
  //    default: break;
  //    case EST_Unevaluated:
  //      OS << " noexcept-unevaluated " << EPI.ExceptionSpec.SourceDecl;
  //      break;
  //    case EST_Uninstantiated:
  //      OS << " noexcept-uninstantiated " << EPI.ExceptionSpec.SourceTemplate;
  //      break;
  //    }
  //  }
  //
  //  const FunctionTemplateSpecializationInfo *FTSI =
  //      D->getTemplateSpecializationInfo();
  //  bool HasTemplateSpecialization = FTSI;
  //
  //
  //  if (HasTemplateSpecialization) {
  //    dumpTemplateArgumentList(*FTSI->TemplateArguments);
  //  }

  {
    FunctionDecl::param_const_iterator I = D->param_begin(), E = D->param_end();
    if (I != E) {
      OF.emitTag("parameters");
      ArrayScope Scope(OF, std::distance(I, E));
      for (; I != E; ++I) {
        dumpDecl(*I);
      }
    }
  }

  if (DeclWithBody) {
    OF.emitTag("decl_ptr_with_body");
    dumpPointer(DeclWithBody);
  }

  if (HasDeclarationBody) {
    const Stmt *Body = D->getBody();
    if (Body) {
      OF.emitTag("body");
      dumpStmt(Body);
    }
  }
  if (TemplateDecl) {
    OF.emitTag("template_specialization");
    dumpTemplateSpecialization(TemplateDecl,
                               *D->getTemplateSpecializationArgs());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FieldDeclTupleSize() {
  return ASTExporter::DeclaratorDeclTupleSize() + 1;
}
//@atd #define field_decl_tuple declarator_decl_tuple * field_decl_info
//@atd type field_decl_info = {
//@atd   ~is_mutable : bool;
//@atd   ~is_module_private : bool;
//@atd   ?init_expr : stmt option;
//@atd   ?bit_width_expr : stmt option
//@atd } <ocaml field_prefix="fldi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFieldDecl(const FieldDecl *D) {
  ASTExporter<ATDWriter>::VisitDeclaratorDecl(D);

  bool IsMutable = D->isMutable();
  bool IsModulePrivate = D->isModulePrivate();
  bool HasBitWidth = D->isBitField() && D->getBitWidth();
  Expr *Init = D->getInClassInitializer();
  ObjectScope Scope(OF,
                    0 + IsMutable + IsModulePrivate + HasBitWidth +
                        (bool)Init); // not covered by tests

  OF.emitFlag("is_mutable", IsMutable);
  OF.emitFlag("is_module_private", IsModulePrivate);

  if (HasBitWidth) {
    OF.emitTag("bit_width_expr");
    dumpStmt(D->getBitWidth());
  }

  if (Init) {
    OF.emitTag("init_expr");
    dumpStmt(Init);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::VarDeclTupleSize() {
  return ASTExporter::DeclaratorDeclTupleSize() + 1;
}
//@atd #define var_decl_tuple declarator_decl_tuple * var_decl_info
//@atd type var_decl_info = {
//@atd   ?storage_class : string option;
//@atd   ~tls_kind <ocaml default="`Tls_none">: tls_kind;
//@atd   ~is_global : bool;
//@atd   ~is_static_local : bool;
//@atd   ~is_module_private : bool;
//@atd   ~is_nrvo_variable : bool;
//@atd   ~is_const_expr : bool;
//@atd   ?init_expr : stmt option;
//@atd   ?parm_index_in_function : int option;
//@atd } <ocaml field_prefix="vdi_">
//@atd type tls_kind = [ Tls_none | Tls_static | Tls_dynamic ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitVarDecl(const VarDecl *D) {
  ASTExporter<ATDWriter>::VisitDeclaratorDecl(D);

  StorageClass SC = D->getStorageClass();
  bool HasStorageClass = SC != SC_None;
  bool IsGlobal = D->hasGlobalStorage(); // including static function variables
  bool IsStaticLocal = D->isStaticLocal(); // static function variables
  bool IsModulePrivate = D->isModulePrivate();
  bool IsNRVOVariable = D->isNRVOVariable();
  bool IsConstExpr = D->isConstexpr();
  bool HasInit = D->hasInit();
  const ParmVarDecl *ParmDecl = dyn_cast<ParmVarDecl>(D);
  bool HasParmIndex = (bool)ParmDecl;
  // suboptimal: tls_kind is not taken into account accurately
  ObjectScope Scope(OF,
                    1 + HasStorageClass + IsGlobal + IsStaticLocal +
                        IsModulePrivate + IsNRVOVariable + IsConstExpr +
                        HasInit + HasParmIndex);

  if (HasStorageClass) {
    OF.emitTag("storage_class");
    OF.emitString(VarDecl::getStorageClassSpecifierString(SC));
  }

  switch (D->getTLSKind()) {
  case VarDecl::TLS_None:
    break;
  case VarDecl::TLS_Static:
    OF.emitTag("tls_kind");
    OF.emitSimpleVariant("Tls_static");
    break;
  case VarDecl::TLS_Dynamic:
    OF.emitTag("tls_kind");
    OF.emitSimpleVariant("Tls_dynamic");
    break;
  }

  OF.emitFlag("is_global", IsGlobal);
  OF.emitFlag("is_static_local", IsStaticLocal);
  OF.emitFlag("is_module_private", IsModulePrivate);
  OF.emitFlag("is_nrvo_variable", IsNRVOVariable);
  OF.emitFlag("is_const_expr", IsConstExpr);
  if (HasInit) {
    OF.emitTag("init_expr");
    dumpStmt(D->getInit());
  }
  if (HasParmIndex) {
    OF.emitTag("parm_index_in_function");
    OF.emitInteger(ParmDecl->getFunctionScopeIndex());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FileScopeAsmDeclTupleSize() {
  return DeclTupleSize() + 1;
}
//@atd #define file_scope_asm_decl_tuple decl_tuple * string
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFileScopeAsmDecl(const FileScopeAsmDecl *D) {
  VisitDecl(D);
  OF.emitString(D->getAsmString()->getBytes());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ImportDeclTupleSize() {
  return DeclTupleSize() + 1;
}
//@atd #define import_decl_tuple decl_tuple * string
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitImportDecl(const ImportDecl *D) {
  VisitDecl(D);
  OF.emitString(D->getImportedModule()->getFullModuleName());
}

//===----------------------------------------------------------------------===//
// C++ Declarations
//===----------------------------------------------------------------------===//

template <class ATDWriter>
int ASTExporter<ATDWriter>::UsingDirectiveDeclTupleSize() {
  return NamedDeclTupleSize() + 1;
}
//@atd #define using_directive_decl_tuple named_decl_tuple * using_directive_decl_info
//@atd type using_directive_decl_info = {
//@atd   using_location : source_location;
//@atd   namespace_key_location : source_location;
//@atd   nested_name_specifier_locs : nested_name_specifier_loc list;
//@atd   ?nominated_namespace : decl_ref option;
//@atd } <ocaml field_prefix="uddi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitUsingDirectiveDecl(
    const UsingDirectiveDecl *D) {
  VisitNamedDecl(D);

  bool HasNominatedNamespace = D->getNominatedNamespace();
  ObjectScope Scope(OF, 3 + HasNominatedNamespace);

  OF.emitTag("using_location");
  dumpSourceLocation(D->getUsingLoc());
  OF.emitTag("namespace_key_location");
  dumpSourceLocation(D->getNamespaceKeyLocation());
  OF.emitTag("nested_name_specifier_locs");
  dumpNestedNameSpecifierLoc(D->getQualifierLoc());
  if (HasNominatedNamespace) {
    OF.emitTag("nominated_namespace");
    dumpDeclRef(*D->getNominatedNamespace());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::NamespaceAliasDeclTupleSize() {
  return NamedDeclTupleSize() + 1;
}
//@atd #define namespace_alias_decl_tuple named_decl_tuple * namespace_alias_decl_info
//@atd type namespace_alias_decl_info = {
//@atd   namespace_loc : source_location;
//@atd   target_name_loc : source_location;
//@atd   nested_name_specifier_locs : nested_name_specifier_loc list;
//@atd   namespace : decl_ref;
//@atd } <ocaml field_prefix="nadi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitNamespaceAliasDecl(
    const NamespaceAliasDecl *D) {
  VisitNamedDecl(D);
  ObjectScope Scope(OF, 4);
  OF.emitTag("namespace_loc");
  dumpSourceLocation(D->getNamespaceLoc());
  OF.emitTag("target_name_loc");
  dumpSourceLocation(D->getTargetNameLoc());
  OF.emitTag("nested_name_specifier_locs");
  dumpNestedNameSpecifierLoc(D->getQualifierLoc());
  OF.emitTag("namespace");
  dumpDeclRef(*D->getNamespace());
}

//@atd type lambda_capture_info = {
//@atd   capture_kind : lambda_capture_kind;
//@atd   ~capture_this : bool;
//@atd   ~capture_variable : bool;
//@atd   ~capture_VLAtype : bool;
//@atd   ?init_captured_vardecl : decl option;
//@atd   ?captured_var : decl_ref option;
//@atd   ~is_implicit : bool;
//@atd   location : source_range;
//@atd   ~is_pack_expansion: bool;
//@atd } <ocaml field_prefix="lci_">
//@atd type lambda_capture_kind = [
//@atd         | LCK_This
//@atd         | LCK_ByCopy
//@atd         | LCK_ByRef
//@atd         | LCK_VLAType
//@atd         | LCK_StarThis]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpClassLambdaCapture(const LambdaCapture *C) {

  LambdaCaptureKind CK = C->getCaptureKind();
  bool CapturesThis = C->capturesThis();
  bool CapturesVariable = C->capturesVariable();
  bool CapturesVLAType = C->capturesVLAType();
  VarDecl *decl = C->capturesVariable() ? C->getCapturedVar() : nullptr;
  bool IsInitCapture = decl && decl->isInitCapture();
  bool IsImplicit = C->isImplicit();
  SourceRange source_range = C->getLocation();
  bool IsPackExpansion = C->isPackExpansion();
  ObjectScope Scope(OF,
                    2 + CapturesThis + CapturesVariable + CapturesVLAType +
                        IsInitCapture + (bool)decl + IsImplicit +
                        IsPackExpansion);
  OF.emitTag("capture_kind");
  switch (CK) {
  case LCK_This:
    OF.emitSimpleVariant("LCK_This");
    break;
  case LCK_ByCopy:
    OF.emitSimpleVariant("LCK_ByCopy");
    break;
  case LCK_ByRef:
    OF.emitSimpleVariant("LCK_ByRef");
    break;
  case LCK_VLAType:
    OF.emitSimpleVariant("LCK_VLAType");
    break;
  case LCK_StarThis:
    OF.emitSimpleVariant("LCK_StarThis");
    break;
  };
  OF.emitFlag("capture_this", CapturesThis);
  OF.emitFlag("capture_variable", CapturesVariable);
  OF.emitFlag("capture_VLAtype", CapturesVLAType);
  if (decl) {
    if (IsInitCapture) {
      OF.emitTag("init_captured_vardecl");
      dumpDecl(decl);
    }
    OF.emitTag("captured_var");
    dumpDeclRef(*decl);
  }
  OF.emitFlag("is_implicit", IsImplicit);
  OF.emitTag("location");
  dumpSourceRange(source_range);
  OF.emitFlag("is_pack_expansion", IsPackExpansion);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXRecordDeclTupleSize() {
  return RecordDeclTupleSize() + 1;
}
//@atd #define cxx_record_decl_tuple record_decl_tuple * cxx_record_decl_info
//@atd type cxx_record_decl_info = {
//@atd   ~bases : type_ptr list;
//@atd   ~vbases : type_ptr list;
//@atd   ~transitive_vbases : type_ptr list;
//@atd   ~is_pod : bool;
//@atd   ?destructor : decl_ref option;
//@atd   ?lambda_call_operator : decl_ref option;
//@atd   ~lambda_captures : lambda_capture_info list;
//@atd } <ocaml field_prefix="xrdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXRecordDecl(const CXXRecordDecl *D) {
  VisitRecordDecl(D);

  if (!D->isCompleteDefinition()) {
    // We need to return early here. Otherwise plugin will crash.
    // It looks like CXXRecordDecl may be initialized with garbage.
    // Not sure what to do when we'll have some non-optional data to generate??
    ObjectScope Scope(OF, 0);
    return;
  }

  // getNumBases and getNumVBases are not reliable, extract this info
  // directly from what is going to be dumped
  SmallVector<CXXBaseSpecifier, 2> nonVBases;
  SmallVector<CXXBaseSpecifier, 2> vBases;
  for (const auto base : D->bases()) {
    if (base.isVirtual()) {
      vBases.push_back(base);
    } else {
      nonVBases.push_back(base);
    }
  }

  bool HasVBases = vBases.size() > 0;
  bool HasNonVBases = nonVBases.size() > 0;
  unsigned numTransitiveVBases = D->getNumVBases();
  bool HasTransitiveVBases = numTransitiveVBases > 0;
  bool IsPOD = D->isPOD();
  const CXXDestructorDecl *DestructorDecl = D->getDestructor();
  const CXXMethodDecl *LambdaCallOperator = D->getLambdaCallOperator();

  auto I = D->captures_begin(), E = D->captures_end();
  ObjectScope Scope(OF,
                    0 + HasNonVBases + HasVBases + HasTransitiveVBases + IsPOD +
                        (bool)DestructorDecl + (bool)LambdaCallOperator +
                        (I != E));

  if (HasNonVBases) {
    OF.emitTag("bases");
    ArrayScope aScope(OF, nonVBases.size());
    for (const auto base : nonVBases) {
      dumpQualTypeNoQuals(base.getType());
    }
  }
  if (HasVBases) {
    OF.emitTag("vbases");
    ArrayScope aScope(OF, vBases.size());
    for (const auto base : vBases) {
      dumpQualTypeNoQuals(base.getType());
    }
  }
  if (HasTransitiveVBases) {
    OF.emitTag("transitive_vbases");
    ArrayScope aScope(OF, numTransitiveVBases);
    for (const auto base : D->vbases()) {
      dumpQualTypeNoQuals(base.getType());
    }
  }
  OF.emitFlag("is_pod", IsPOD);

  if (DestructorDecl) {
    OF.emitTag("destructor");
    dumpDeclRef(*DestructorDecl);
  }

  if (LambdaCallOperator) {
    OF.emitTag("lambda_call_operator");
    dumpDeclRef(*LambdaCallOperator);
  }

  if (I != E) {
    OF.emitTag("lambda_captures");
    ArrayScope Scope(OF, std::distance(I, E));
    for (; I != E; ++I) {
      dumpClassLambdaCapture(I);
    }
  }
}

//@atd type template_instantiation_arg_info = [
//@atd   | Null
//@atd   | Type of qual_type
//@atd   | Declaration of pointer
//@atd   | NullPtr
//@atd   | Integral of string
//@atd   | Template
//@atd   | TemplateExpansion
//@atd   | Expression
//@atd   | Pack of template_instantiation_arg_info list
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpTemplateArgument(const TemplateArgument &Arg) {
  switch (Arg.getKind()) {
  case TemplateArgument::Null:
    OF.emitSimpleVariant("Null");
    break;
  case TemplateArgument::Type: {
    VariantScope Scope(OF, "Type");
    dumpQualType(Arg.getAsType());
    break;
  }
  case TemplateArgument::Declaration: {
    VariantScope Scope(OF, "Declaration");
    dumpPointer(Arg.getAsDecl());
    break;
  }
  case TemplateArgument::NullPtr:
    OF.emitSimpleVariant("NullPtr");
    break;
  case TemplateArgument::Integral: {
    VariantScope Scope(OF, "Integral");
    OF.emitString(Arg.getAsIntegral().toString(10));
    break;
  }
  case TemplateArgument::Template: {
    OF.emitSimpleVariant("Template");
    break;
  }
  case TemplateArgument::TemplateExpansion: {
    OF.emitSimpleVariant("TemplateExpansion");
    break;
  }
  case TemplateArgument::Expression: {
    OF.emitSimpleVariant("Expression");
    break;
  }
  case TemplateArgument::Pack: {
    VariantScope Scope(OF, "Pack");
    ArrayScope aScope(OF, Arg.pack_size());
    for (TemplateArgument::pack_iterator I = Arg.pack_begin(),
                                         E = Arg.pack_end();
         I != E;
         ++I) {
      dumpTemplateArgument(*I);
    }
    break;
  }
  }
}

//@atd type template_specialization_info = {
//@atd   template_decl : pointer;
//@atd   ~specialization_args : template_instantiation_arg_info list;
//@atd } <ocaml field_prefix="tsi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpTemplateSpecialization(
    const TemplateDecl *D, const TemplateArgumentList &Args) {
  bool HasTemplateArgs = Args.size() > 0;
  ObjectScope oScope(OF, 1 + HasTemplateArgs);
  OF.emitTag("template_decl");
  dumpPointer(D);
  if (HasTemplateArgs) {
    OF.emitTag("specialization_args");
    ArrayScope aScope(OF, Args.size());
    for (size_t i = 0; i < Args.size(); i++) {
      dumpTemplateArgument(Args[i]);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ClassTemplateSpecializationDeclTupleSize() {
  return CXXRecordDeclTupleSize() + 2;
}

//@atd #define class_template_specialization_decl_tuple cxx_record_decl_tuple * string * template_specialization_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitClassTemplateSpecializationDecl(
    const ClassTemplateSpecializationDecl *D) {
  VisitCXXRecordDecl(D);
  bool ShouldMangleName = Mangler->shouldMangleDeclName(D);
  if (ShouldMangleName) {
    SmallString<64> Buf;
    llvm::raw_svector_ostream StrOS(Buf);
    Mangler->mangleName(D, StrOS);
    // mangled names can get ridiculously long, so hash them to a fixed size
    OF.emitString(std::to_string(fnv64Hash(StrOS)));
  } else {
    OF.emitString("");
  }
  dumpTemplateSpecialization(D->getSpecializedTemplate(), D->getTemplateArgs());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXMethodDeclTupleSize() {
  return FunctionDeclTupleSize() + 1;
}
//@atd #define cxx_method_decl_tuple function_decl_tuple * cxx_method_decl_info
//@atd type cxx_method_decl_info = {
//@atd   ~is_virtual : bool;
//@atd   ~is_static : bool;
//@atd   ~is_constexpr : bool;
//@atd   ~cxx_ctor_initializers : cxx_ctor_initializer list;
//@atd   ~overriden_methods : decl_ref list;
//@atd } <ocaml field_prefix="xmdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXMethodDecl(const CXXMethodDecl *D) {
  VisitFunctionDecl(D);
  bool IsVirtual = D->isVirtual();
  bool IsStatic = D->isStatic();
  const CXXConstructorDecl *C = dyn_cast<CXXConstructorDecl>(D);
  bool HasCtorInitializers = C && C->init_begin() != C->init_end();
  bool IsConstexpr = D->isConstexpr();
  auto OB = D->begin_overridden_methods();
  auto OE = D->end_overridden_methods();
  ObjectScope Scope(
      OF,
      IsVirtual + IsStatic + IsConstexpr + HasCtorInitializers + (OB != OE));
  OF.emitFlag("is_virtual", IsVirtual);
  OF.emitFlag("is_static", IsStatic);
  OF.emitFlag("is_constexpr", IsConstexpr);
  if (HasCtorInitializers) {
    OF.emitTag("cxx_ctor_initializers");
    ArrayScope Scope(OF, std::distance(C->init_begin(), C->init_end()));
    for (auto I : C->inits()) {
      dumpCXXCtorInitializer(*I);
    }
  }
  if (OB != OE) {
    OF.emitTag("overriden_methods");
    ArrayScope Scope(OF, std::distance(OB, OE));
    for (; OB != OE; ++OB) {
      dumpDeclRef(**OB);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ClassTemplateDeclTupleSize() {
  return ASTExporter<ATDWriter>::RedeclarableTemplateDeclTupleSize() + 1;
}

//@atd #define class_template_decl_tuple redeclarable_template_decl_tuple * template_decl_info
//@atd type template_decl_info = {
//@atd   ~specializations : decl list;
//@atd } <ocaml field_prefix="tdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitClassTemplateDecl(
    const ClassTemplateDecl *D) {
  ASTExporter<ATDWriter>::VisitRedeclarableTemplateDecl(D);
  std::vector<const ClassTemplateSpecializationDecl *> DeclsToDump;
  if (D == D->getCanonicalDecl()) {
    // dump specializations once
    for (const auto *spec : D->specializations()) {
      switch (spec->getTemplateSpecializationKind()) {
      case TSK_Undeclared:
      case TSK_ImplicitInstantiation:
        DeclsToDump.push_back(spec);
        break;
      case TSK_ExplicitSpecialization:
      case TSK_ExplicitInstantiationDeclaration:
      case TSK_ExplicitInstantiationDefinition:
        // these specializations will be dumped elsewhere
        break;
      }
    }
  }
  bool ShouldDumpSpecializations = !DeclsToDump.empty();
  ObjectScope Scope(OF, 0 + ShouldDumpSpecializations);
  if (ShouldDumpSpecializations) {
    OF.emitTag("specializations");
    ArrayScope aScope(OF, DeclsToDump.size());
    for (const auto *spec : DeclsToDump) {
      dumpDecl(spec);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FunctionTemplateDeclTupleSize() {
  return ASTExporter<ATDWriter>::RedeclarableTemplateDeclTupleSize() + 1;
}
//@atd #define function_template_decl_tuple redeclarable_template_decl_tuple * template_decl_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFunctionTemplateDecl(
    const FunctionTemplateDecl *D) {
  ASTExporter<ATDWriter>::VisitRedeclarableTemplateDecl(D);
  std::vector<const FunctionDecl *> DeclsToDump;
  if (D == D->getCanonicalDecl()) {
    // dump specializations once
    for (const auto *spec : D->specializations()) {
      switch (spec->getTemplateSpecializationKind()) {
      case TSK_Undeclared:
      case TSK_ImplicitInstantiation:
      case TSK_ExplicitInstantiationDefinition:
      case TSK_ExplicitInstantiationDeclaration:
        DeclsToDump.push_back(spec);
        break;
      case TSK_ExplicitSpecialization:
        // these specializations will be dumped when they are defined
        break;
      }
    }
  }
  bool ShouldDumpSpecializations = !DeclsToDump.empty();
  ObjectScope Scope(OF, 0 + ShouldDumpSpecializations);
  if (ShouldDumpSpecializations) {
    OF.emitTag("specializations");
    ArrayScope aScope(OF, DeclsToDump.size());
    for (const auto *spec : DeclsToDump) {
      dumpDecl(spec);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FriendDeclTupleSize() {
  return DeclTupleSize() + 1;
}
//@atd #define friend_decl_tuple decl_tuple * friend_info
//@atd type friend_info = [ Type of type_ptr | Decl of decl ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFriendDecl(const FriendDecl *D) {
  VisitDecl(D);
  if (TypeSourceInfo *T = D->getFriendType()) {
    VariantScope Scope(OF, "Type");
    dumpQualTypeNoQuals(T->getType());
  } else {
    VariantScope Scope(OF, "Decl");
    dumpDecl(D->getFriendDecl());
  }
}

// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitTypeAliasDecl(const TypeAliasDecl *D) {
//  dumpName(D);
//  dumpQualType(D->getUnderlyingType());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitTypeAliasTemplateDecl(const
// TypeAliasTemplateDecl *D) {
//  dumpName(D);
//  dumpTemplateParameters(D->getTemplateParameters());
//  dumpDecl(D->getTemplatedDecl());
//}
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitStaticAssertDecl(const StaticAssertDecl *D)
// {
//  dumpStmt(D->getAssertExpr());
//  dumpStmt(D->getMessage());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitFunctionTemplateDecl(const
// FunctionTemplateDecl *D) {
//  dumpName(D);
//  dumpTemplateParameters(D->getTemplateParameters());
//  dumpDecl(D->getTemplatedDecl());
//  for (FunctionTemplateDecl::spec_iterator I = D->spec_begin(),
//                                           E = D->spec_end();
//       I != E; ++I) {
//    FunctionTemplateDecl::spec_iterator Next = I;
//    ++Next;
//    switch (I->getTemplateSpecializationKind()) {
//    case TSK_Undeclared:
//    case TSK_ImplicitInstantiation:
//    case TSK_ExplicitInstantiationDeclaration:
//    case TSK_ExplicitInstantiationDefinition:
//      if (D == D->getCanonicalDecl())
//        dumpDecl(*I);
//      else
//        dumpDeclRef(*I);
//      break;
//    case TSK_ExplicitSpecialization:
//      dumpDeclRef(*I);
//      break;
//    }
//  }
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitClassTemplateDecl(const ClassTemplateDecl
// *D) {
//  dumpName(D);
//  dumpTemplateParameters(D->getTemplateParameters());
//
//  ClassTemplateDecl::spec_iterator I = D->spec_begin();
//  ClassTemplateDecl::spec_iterator E = D->spec_end();
//  dumpDecl(D->getTemplatedDecl());
//  for (; I != E; ++I) {
//    ClassTemplateDecl::spec_iterator Next = I;
//    ++Next;
//    switch (I->getTemplateSpecializationKind()) {
//    case TSK_Undeclared:
//    case TSK_ImplicitInstantiation:
//      if (D == D->getCanonicalDecl())
//        dumpDecl(*I);
//      else
//        dumpDeclRef(*I);
//      break;
//    case TSK_ExplicitSpecialization:
//    case TSK_ExplicitInstantiationDeclaration:
//    case TSK_ExplicitInstantiationDefinition:
//      dumpDeclRef(*I);
//      break;
//    }
//  }
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitClassTemplateSpecializationDecl(
//    const ClassTemplateSpecializationDecl *D) {
//  VisitCXXRecordDecl(D);
//  dumpTemplateArgumentList(D->getTemplateArgs());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitClassTemplatePartialSpecializationDecl(
//    const ClassTemplatePartialSpecializationDecl *D) {
//  VisitClassTemplateSpecializationDecl(D);
//  dumpTemplateParameters(D->getTemplateParameters());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitClassScopeFunctionSpecializationDecl(
//    const ClassScopeFunctionSpecializationDecl *D) {
//  dumpDeclRef(D->getSpecialization());
//  if (D->hasExplicitTemplateArgs())
//    dumpTemplateArgumentListInfo(D->templateArgs());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitVarTemplateDecl(const VarTemplateDecl *D) {
//  dumpName(D);
//  dumpTemplateParameters(D->getTemplateParameters());
//
//  VarTemplateDecl::spec_iterator I = D->spec_begin();
//  VarTemplateDecl::spec_iterator E = D->spec_end();
//  dumpDecl(D->getTemplatedDecl());
//  for (; I != E; ++I) {
//    VarTemplateDecl::spec_iterator Next = I;
//    ++Next;
//    switch (I->getTemplateSpecializationKind()) {
//    case TSK_Undeclared:
//    case TSK_ImplicitInstantiation:
//      if (D == D->getCanonicalDecl())
//        dumpDecl(*I);
//      else
//        dumpDeclRef(*I);
//      break;
//    case TSK_ExplicitSpecialization:
//    case TSK_ExplicitInstantiationDeclaration:
//    case TSK_ExplicitInstantiationDefinition:
//      dumpDeclRef(*I);
//      break;
//    }
//  }
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitVarTemplateSpecializationDecl(
//    const VarTemplateSpecializationDecl *D) {
//  dumpTemplateArgumentList(D->getTemplateArgs());
//  VisitVarDecl(D);
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitVarTemplatePartialSpecializationDecl(
//    const VarTemplatePartialSpecializationDecl *D) {
//  dumpTemplateParameters(D->getTemplateParameters());
//  VisitVarTemplateSpecializationDecl(D);
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitTemplateTypeParmDecl(const
// TemplateTypeParmDecl *D) {
//  if (D->wasDeclaredWithTypename())
//    OS << " typename";
//  else
//    OS << " class";
//  if (D->isParameterPack())
//    OS << " ...";
//  dumpName(D);
//  if (D->hasDefaultArgument())
//    dumpQualType(D->getDefaultArgument());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitNonTypeTemplateParmDecl(const
// NonTypeTemplateParmDecl *D) {
//  dumpQualType(D->getType());
//  if (D->isParameterPack())
//    OS << " ...";
//  dumpName(D);
//  if (D->hasDefaultArgument())
//    dumpStmt(D->getDefaultArgument());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitTemplateTemplateParmDecl(
//    const TemplateTemplateParmDecl *D) {
//  if (D->isParameterPack())
//    OS << " ...";
//  dumpName(D);
//  dumpTemplateParameters(D->getTemplateParameters());
//  if (D->hasDefaultArgument())
//    dumpTemplateArgumentLoc(D->getDefaultArgument());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitUsingDecl(const UsingDecl *D) {
//  OS << ' ';
//  D->getQualifier()->print(OS, D->getASTContext().getPrintingPolicy());
//  OS << D->getNameAsString();
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitUnresolvedUsingTypenameDecl(
//    const UnresolvedUsingTypenameDecl *D) {
//  OS << ' ';
//  D->getQualifier()->print(OS, D->getASTContext().getPrintingPolicy());
//  OS << D->getNameAsString();
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitUnresolvedUsingValueDecl(const
// UnresolvedUsingValueDecl *D) {
//  OS << ' ';
//  D->getQualifier()->print(OS, D->getASTContext().getPrintingPolicy());
//  OS << D->getNameAsString();
//  dumpQualType(D->getType());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitUsingShadowDecl(const UsingShadowDecl *D) {
//  OS << ' ';
//  dumpDeclRef(D->getTargetDecl());
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitLinkageSpecDecl(const LinkageSpecDecl *D) {
//  switch (D->getLanguage()) {
//  case LinkageSpecDecl::lang_c: OS << " C"; break;
//  case LinkageSpecDecl::lang_cxx: OS << " C++"; break;
//  }
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::VisitAccessSpecDecl(const AccessSpecDecl *D) {
//  OS << ' ';
//  dumpAccessSpecifier(D->getAccess());
//}
//

//
////===----------------------------------------------------------------------===//
//// Obj-C Declarations
////===----------------------------------------------------------------------===//

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCIvarDeclTupleSize() {
  return FieldDeclTupleSize() + 1;
}
//@atd #define obj_c_ivar_decl_tuple field_decl_tuple * obj_c_ivar_decl_info
//@atd type obj_c_ivar_decl_info = {
//@atd   ~is_synthesize : bool;
//@atd   ~access_control <ocaml default="`None"> : obj_c_access_control;
//@atd } <ocaml field_prefix="ovdi_">
//@atd type obj_c_access_control = [ None | Private | Protected | Public | Package
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCIvarDecl(const ObjCIvarDecl *D) {
  VisitFieldDecl(D);

  bool IsSynthesize = D->getSynthesize();
  // suboptimal: access_control not taken into account accurately
  ObjectScope Scope(OF, 1 + IsSynthesize); // not covered by tests

  OF.emitFlag("is_synthesize", IsSynthesize);

  ObjCIvarDecl::AccessControl AC = D->getAccessControl();
  if (AC != ObjCIvarDecl::None) {
    OF.emitTag("access_control");
    switch (AC) {
    case ObjCIvarDecl::Private:
      OF.emitSimpleVariant("Private");
      break;
    case ObjCIvarDecl::Protected:
      OF.emitSimpleVariant("Protected");
      break;
    case ObjCIvarDecl::Public:
      OF.emitSimpleVariant("Public");
      break;
    case ObjCIvarDecl::Package:
      OF.emitSimpleVariant("Package");
      break;
    case ObjCIvarDecl::None:
      llvm_unreachable("unreachable");
      break;
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCMethodDeclTupleSize() {
  return NamedDeclTupleSize() + 1;
}
//@atd #define obj_c_method_decl_tuple named_decl_tuple * obj_c_method_decl_info
//@atd type obj_c_method_decl_info = {
//@atd   ~is_instance_method : bool;
//@atd   result_type : qual_type;
//@atd   ~is_property_accessor : bool;
//@atd   ?property_decl : decl_ref option;
//@atd   ~parameters : decl list;
//@atd   ~implicit_parameters : decl list;
//@atd   ~is_variadic : bool;
//@atd   ?body : stmt option;
//@atd } <ocaml field_prefix="omdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCMethodDecl(const ObjCMethodDecl *D) {
  VisitNamedDecl(D);
  // We purposedly do not call VisitDeclContext(D).
  bool IsInstanceMethod = D->isInstanceMethod();
  bool IsPropertyAccessor = D->isPropertyAccessor();
  const ObjCPropertyDecl *PropertyDecl = nullptr;
  std::string selectorName = D->getSelector().getAsString();
  // work around bug in clang
  if (selectorName != ".cxx_construct" && selectorName != ".cxx_destruct") {
    PropertyDecl = D->findPropertyDecl();
  }
  ObjCMethodDecl::param_const_iterator I = D->param_begin(), E = D->param_end();
  bool HasParameters = I != E;
  std::vector<ImplicitParamDecl *> ImplicitParams;
  if (D->getSelfDecl()) {
    ImplicitParams.push_back(D->getSelfDecl());
  }
  if (D->getCmdDecl()) {
    ImplicitParams.push_back(D->getCmdDecl());
  }
  bool HasImplicitParameters = !ImplicitParams.empty();
  bool IsVariadic = D->isVariadic();
  const Stmt *Body = D->getBody();
  ObjectScope Scope(OF,
                    1 + IsInstanceMethod + IsPropertyAccessor +
                        (bool)PropertyDecl + HasParameters +
                        HasImplicitParameters + IsVariadic + (bool)Body);

  OF.emitFlag("is_instance_method", IsInstanceMethod);
  OF.emitTag("result_type");
  dumpQualType(D->getReturnType());
  OF.emitFlag("is_property_accessor", IsPropertyAccessor);
  if (PropertyDecl) {
    OF.emitTag("property_decl");
    dumpDeclRef(*PropertyDecl);
  }
  if (HasParameters) {
    OF.emitTag("parameters");
    ArrayScope Scope(OF, std::distance(I, E));
    for (; I != E; ++I) {
      dumpDecl(*I);
    }
  }

  if (HasImplicitParameters) {
    OF.emitTag("implicit_parameters");
    ArrayScope Scope(OF, ImplicitParams.size());
    for (const ImplicitParamDecl *P : ImplicitParams) {
      dumpDecl(P);
    }
  }

  OF.emitFlag("is_variadic", IsVariadic);

  if (Body) {
    OF.emitTag("body");
    dumpStmt(Body);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCCategoryDeclTupleSize() {
  return ObjCContainerDeclTupleSize() + 1;
}
//@atd #define obj_c_category_decl_tuple obj_c_container_decl_tuple * obj_c_category_decl_info
//@atd type obj_c_category_decl_info = {
//@atd   ?class_interface : decl_ref option;
//@atd   ?implementation : decl_ref option;
//@atd   ~protocols : decl_ref list;
//@atd } <ocaml field_prefix="odi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCCategoryDecl(const ObjCCategoryDecl *D) {
  VisitObjCContainerDecl(D);

  const ObjCInterfaceDecl *CI = D->getClassInterface();
  const ObjCCategoryImplDecl *Impl = D->getImplementation();
  ObjCCategoryDecl::protocol_iterator I = D->protocol_begin(),
                                      E = D->protocol_end();
  bool HasProtocols = I != E;
  ObjectScope Scope(
      OF, 0 + (bool)CI + (bool)Impl + HasProtocols); // not covered by tests

  if (CI) {
    OF.emitTag("class_interface");
    dumpDeclRef(*CI);
  }
  if (Impl) {
    OF.emitTag("implementation");
    dumpDeclRef(*Impl);
  }
  if (HasProtocols) {
    OF.emitTag("protocols");
    ArrayScope Scope(OF, std::distance(I, E)); // not covered by tests
    for (; I != E; ++I) {
      assert(*I);
      dumpDeclRef(**I);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCCategoryImplDeclTupleSize() {
  return ASTExporter::ObjCImplDeclTupleSize() + 1;
}
//@atd #define obj_c_category_impl_decl_tuple obj_c_impl_decl_tuple * obj_c_category_impl_decl_info
//@atd type obj_c_category_impl_decl_info = {
//@atd   ?class_interface : decl_ref option;
//@atd   ?category_decl : decl_ref option;
//@atd } <ocaml field_prefix="ocidi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCCategoryImplDecl(
    const ObjCCategoryImplDecl *D) {
  ASTExporter<ATDWriter>::VisitObjCImplDecl(D);

  const ObjCInterfaceDecl *CI = D->getClassInterface();
  const ObjCCategoryDecl *CD = D->getCategoryDecl();
  ObjectScope Scope(OF, 0 + (bool)CI + (bool)CD); // not covered by tests

  if (CI) {
    OF.emitTag("class_interface");
    dumpDeclRef(*CI);
  }
  if (CD) {
    OF.emitTag("category_decl");
    dumpDeclRef(*CD);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCProtocolDeclTupleSize() {
  return ObjCContainerDeclTupleSize() + 1;
}
//@atd #define obj_c_protocol_decl_tuple obj_c_container_decl_tuple * obj_c_protocol_decl_info
//@atd type obj_c_protocol_decl_info = {
//@atd   ~protocols : decl_ref list;
//@atd } <ocaml field_prefix="opcdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCProtocolDecl(const ObjCProtocolDecl *D) {
  ASTExporter<ATDWriter>::VisitObjCContainerDecl(D);

  ObjCCategoryDecl::protocol_iterator I = D->protocol_begin(),
                                      E = D->protocol_end();
  bool HasProtocols = I != E;
  ObjectScope Scope(OF, 0 + HasProtocols); // not covered by tests

  if (HasProtocols) {
    OF.emitTag("protocols");
    ArrayScope Scope(OF, std::distance(I, E)); // not covered by tests
    for (; I != E; ++I) {
      assert(*I);
      dumpDeclRef(**I);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCInterfaceDeclTupleSize() {
  return ObjCContainerDeclTupleSize() + 1;
}
//@atd #define obj_c_interface_decl_tuple obj_c_container_decl_tuple * obj_c_interface_decl_info
//@atd type obj_c_interface_decl_info = {
//@atd   ?super : decl_ref option;
//@atd   ?implementation : decl_ref option;
//@atd   ~protocols : decl_ref list;
//@atd   ~known_categories : decl_ref list;
//@atd } <ocaml field_prefix="otdi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCInterfaceDecl(
    const ObjCInterfaceDecl *D) {
  VisitObjCContainerDecl(D);

  const ObjCInterfaceDecl *SC = D->getSuperClass();
  const ObjCImplementationDecl *Impl = D->getImplementation();
  ObjCInterfaceDecl::protocol_iterator IP = D->protocol_begin(),
                                       EP = D->protocol_end();
  bool HasProtocols = IP != EP;

  ObjCInterfaceDecl::known_categories_iterator IC = D->known_categories_begin(),
                                               EC = D->known_categories_end();

  bool HasKnownCategories = IC != EC;
  ObjectScope Scope(
      OF, 0 + (bool)SC + (bool)Impl + HasProtocols + HasKnownCategories);

  if (SC) {
    OF.emitTag("super");
    dumpDeclRef(*SC);
  }
  if (Impl) {
    OF.emitTag("implementation");
    dumpDeclRef(*Impl);
  }
  if (HasProtocols) {
    OF.emitTag("protocols");
    ArrayScope Scope(OF, std::distance(IP, EP));
    for (; IP != EP; ++IP) {
      assert(*IP);
      dumpDeclRef(**IP);
    }
  }
  if (HasKnownCategories) {
    OF.emitTag("known_categories");
    ArrayScope Scope(OF, std::distance(IC, EC));
    for (; IC != EC; ++IC) {
      assert(*IC);
      dumpDeclRef(**IC);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCImplementationDeclTupleSize() {
  return ASTExporter::ObjCImplDeclTupleSize() + 1;
}
//@atd #define obj_c_implementation_decl_tuple obj_c_impl_decl_tuple * obj_c_implementation_decl_info
//@atd type obj_c_implementation_decl_info = {
//@atd   ?super : decl_ref option;
//@atd   ?class_interface : decl_ref option;
//@atd   ~ivar_initializers : cxx_ctor_initializer list;
//@atd } <ocaml field_prefix="oidi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCImplementationDecl(
    const ObjCImplementationDecl *D) {
  ASTExporter<ATDWriter>::VisitObjCImplDecl(D);

  const ObjCInterfaceDecl *SC = D->getSuperClass();
  const ObjCInterfaceDecl *CI = D->getClassInterface();
  ObjCImplementationDecl::init_const_iterator I = D->init_begin(),
                                              E = D->init_end();
  bool HasInitializers = I != E;
  ObjectScope Scope(OF, 0 + (bool)SC + (bool)CI + HasInitializers);

  if (SC) {
    OF.emitTag("super");
    dumpDeclRef(*SC);
  }
  if (CI) {
    OF.emitTag("class_interface");
    dumpDeclRef(*CI);
  }
  if (HasInitializers) {
    OF.emitTag("ivar_initializers");
    ArrayScope Scope(OF, std::distance(I, E)); // not covered by tests
    for (; I != E; ++I) {
      assert(*I);
      dumpCXXCtorInitializer(**I);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCCompatibleAliasDeclTupleSize() {
  return NamedDeclTupleSize() + 1;
}
//@atd #define obj_c_compatible_alias_decl_tuple named_decl_tuple * obj_c_compatible_alias_decl_info
//@atd type obj_c_compatible_alias_decl_info = {
//@atd   ?class_interface : decl_ref option;
//@atd } <ocaml field_prefix="ocadi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCCompatibleAliasDecl(
    const ObjCCompatibleAliasDecl *D) {
  VisitNamedDecl(D);

  const ObjCInterfaceDecl *CI = D->getClassInterface();
  ObjectScope Scope(OF, 0 + (bool)CI); // not covered by tests

  if (CI) {
    OF.emitTag("class_interface");
    dumpDeclRef(*CI);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCPropertyDeclTupleSize() {
  return NamedDeclTupleSize() + 1;
}
//@atd #define obj_c_property_decl_tuple named_decl_tuple * obj_c_property_decl_info
//@atd type obj_c_property_decl_info = {
//@atd   qual_type : qual_type;
//@atd   ?getter_method : decl_ref option;
//@atd   ?setter_method : decl_ref option;
//@atd   ?ivar_decl : decl_ref option;
//@atd   ~property_control <ocaml default="`None"> : obj_c_property_control;
//@atd   ~property_attributes : property_attribute list
//@atd } <ocaml field_prefix="opdi_">
//@atd type obj_c_property_control = [ None | Required | Optional ]
//@atd type property_attribute = [
//@atd   Readonly
//@atd | Assign
//@atd | Readwrite
//@atd | Retain
//@atd | Copy
//@atd | Nonatomic
//@atd | Atomic
//@atd | Weak
//@atd | Strong
//@atd | Unsafe_unretained
//@atd | ExplicitGetter
//@atd | ExplicitSetter
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCPropertyDecl(const ObjCPropertyDecl *D) {
  VisitNamedDecl(D);

  ObjCPropertyDecl::PropertyControl PC = D->getPropertyImplementation();
  bool HasPropertyControl = PC != ObjCPropertyDecl::None;
  ObjCPropertyDecl::PropertyAttributeKind Attrs = D->getPropertyAttributes();
  bool HasPropertyAttributes = Attrs != ObjCPropertyDecl::OBJC_PR_noattr;

  ObjCMethodDecl *Getter = D->getGetterMethodDecl();
  ObjCMethodDecl *Setter = D->getSetterMethodDecl();
  ObjCIvarDecl *Ivar = D->getPropertyIvarDecl();
  ObjectScope Scope(OF,
                    1 + (bool)Getter + (bool)Setter + (bool)Ivar +
                        HasPropertyControl +
                        HasPropertyAttributes); // not covered by tests

  OF.emitTag("qual_type");
  dumpQualType(D->getType());

  if (Getter) {
    OF.emitTag("getter_method");
    dumpDeclRef(*Getter);
  }
  if (Setter) {
    OF.emitTag("setter_method");
    dumpDeclRef(*Setter);
  }
  if (Ivar) {
    OF.emitTag("ivar_decl");
    dumpDeclRef(*Ivar);
  }

  if (HasPropertyControl) {
    OF.emitTag("property_control");
    switch (PC) {
    case ObjCPropertyDecl::Required:
      OF.emitSimpleVariant("Required");
      break;
    case ObjCPropertyDecl::Optional:
      OF.emitSimpleVariant("Optional");
      break;
    case ObjCPropertyDecl::None:
      llvm_unreachable("unreachable");
      break;
    }
  }

  if (HasPropertyAttributes) {
    OF.emitTag("property_attributes");
    bool readonly = Attrs & ObjCPropertyDecl::OBJC_PR_readonly;
    bool assign = Attrs & ObjCPropertyDecl::OBJC_PR_assign;
    bool readwrite = Attrs & ObjCPropertyDecl::OBJC_PR_readwrite;
    bool retain = Attrs & ObjCPropertyDecl::OBJC_PR_retain;
    bool copy = Attrs & ObjCPropertyDecl::OBJC_PR_copy;
    bool nonatomic = Attrs & ObjCPropertyDecl::OBJC_PR_nonatomic;
    bool atomic = Attrs & ObjCPropertyDecl::OBJC_PR_atomic;
    bool weak = Attrs & ObjCPropertyDecl::OBJC_PR_weak;
    bool strong = Attrs & ObjCPropertyDecl::OBJC_PR_strong;
    bool unsafeUnretained = Attrs & ObjCPropertyDecl::OBJC_PR_unsafe_unretained;
    bool getter = Attrs & ObjCPropertyDecl::OBJC_PR_getter;
    bool setter = Attrs & ObjCPropertyDecl::OBJC_PR_setter;
    int toEmit = readonly + assign + readwrite + retain + copy + nonatomic +
                 atomic + weak + strong + unsafeUnretained + getter + setter;
    ArrayScope Scope(OF, toEmit);
    if (readonly)
      OF.emitSimpleVariant("Readonly");
    if (assign)
      OF.emitSimpleVariant("Assign");
    if (readwrite)
      OF.emitSimpleVariant("Readwrite");
    if (retain)
      OF.emitSimpleVariant("Retain");
    if (copy)
      OF.emitSimpleVariant("Copy");
    if (nonatomic)
      OF.emitSimpleVariant("Nonatomic");
    if (atomic)
      OF.emitSimpleVariant("Atomic");
    if (weak)
      OF.emitSimpleVariant("Weak");
    if (strong)
      OF.emitSimpleVariant("Strong");
    if (unsafeUnretained)
      OF.emitSimpleVariant("Unsafe_unretained");
    if (getter) {
      OF.emitSimpleVariant("ExplicitGetter");
    }
    if (setter) {
      OF.emitSimpleVariant("ExplicitSetter");
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCPropertyImplDeclTupleSize() {
  return DeclTupleSize() + 1;
}
//@atd #define obj_c_property_impl_decl_tuple decl_tuple * obj_c_property_impl_decl_info
//@atd type obj_c_property_impl_decl_info = {
//@atd   implementation : property_implementation;
//@atd   ?property_decl : decl_ref option;
//@atd   ?ivar_decl : decl_ref option;
//@atd } <ocaml field_prefix="opidi_">
//@atd type property_implementation = [ Synthesize | Dynamic ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCPropertyImplDecl(
    const ObjCPropertyImplDecl *D) {
  VisitDecl(D);

  const ObjCPropertyDecl *PD = D->getPropertyDecl();
  const ObjCIvarDecl *ID = D->getPropertyIvarDecl();
  ObjectScope Scope(OF, 1 + (bool)PD + (bool)ID); // not covered by tests

  OF.emitTag("implementation");
  switch (D->getPropertyImplementation()) {
  case ObjCPropertyImplDecl::Synthesize:
    OF.emitSimpleVariant("Synthesize");
    break;
  case ObjCPropertyImplDecl::Dynamic:
    OF.emitSimpleVariant("Dynamic");
    break;
  }
  if (PD) {
    OF.emitTag("property_decl");
    dumpDeclRef(*PD);
  }
  if (ID) {
    OF.emitTag("ivar_decl");
    dumpDeclRef(*ID);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::BlockDeclTupleSize() {
  return DeclTupleSize() + 1;
}
//@atd #define block_decl_tuple decl_tuple * block_decl_info
//@atd type block_decl_info = {
//@atd   ~parameters : decl list;
//@atd   ~is_variadic : bool;
//@atd   ~captures_cxx_this : bool;
//@atd   ~captured_variables : block_captured_variable list;
//@atd   ?body : stmt option;
//@atd } <ocaml field_prefix="bdi_">
//@atd type block_captured_variable = {
//@atd    ~is_by_ref : bool;
//@atd    ~is_nested : bool;
//@atd    ?variable : decl_ref option;
//@atd    ?copy_expr : stmt option
//@atd } <ocaml field_prefix="bcv_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitBlockDecl(const BlockDecl *D) {
  VisitDecl(D);
  // We purposedly do not call VisitDeclContext(D).

  ObjCMethodDecl::param_const_iterator PCII = D->param_begin(),
                                       PCIE = D->param_end();
  bool HasParameters = PCII != PCIE;
  bool IsVariadic = D->isVariadic();
  bool CapturesCXXThis = D->capturesCXXThis();
  BlockDecl::capture_const_iterator CII = D->capture_begin(),
                                    CIE = D->capture_end();
  bool HasCapturedVariables = CII != CIE;
  const Stmt *Body = D->getBody();
  int size = 0 + HasParameters + IsVariadic + CapturesCXXThis +
             HasCapturedVariables + (bool)Body;
  ObjectScope Scope(OF, size); // not covered by tests

  if (HasParameters) {
    OF.emitTag("parameters");
    ArrayScope Scope(OF, std::distance(PCII, PCIE));
    for (; PCII != PCIE; ++PCII) {
      dumpDecl(*PCII);
    }
  }

  OF.emitFlag("is_variadic", IsVariadic);
  OF.emitFlag("captures_cxx_this", CapturesCXXThis);

  if (HasCapturedVariables) {
    OF.emitTag("captured_variables");
    ArrayScope Scope(OF, std::distance(CII, CIE));
    for (; CII != CIE; ++CII) {
      bool IsByRef = CII->isByRef();
      bool IsNested = CII->isNested();
      bool HasVariable = CII->getVariable();
      bool HasCopyExpr = CII->hasCopyExpr();
      ObjectScope Scope(OF,
                        0 + IsByRef + IsNested + HasVariable +
                            HasCopyExpr); // not covered by tests

      OF.emitFlag("is_by_ref", IsByRef);
      OF.emitFlag("is_nested", IsNested);

      if (HasVariable) {
        OF.emitTag("variable");
        dumpDeclRef(*CII->getVariable());
      }

      if (HasCopyExpr) {
        OF.emitTag("copy_expr");
        dumpStmt(CII->getCopyExpr());
      }
    }
  }

  if (Body) {
    OF.emitTag("body");
    dumpStmt(Body);
  }
}

// main variant for declarations
//@atd type decl = [

























//@atd | AccessSpec@@Decl of (@AccessSpec@_decl_tuple)





//@atd | Block@@Decl of (@Block@_decl_tuple)





//@atd | Captured@@Decl of (@Captured@_decl_tuple)





//@atd | ClassScopeFunctionSpecialization@@Decl of (@ClassScopeFunctionSpecialization@_decl_tuple)





//@atd | Empty@@Decl of (@Empty@_decl_tuple)





//@atd | Export@@Decl of (@Export@_decl_tuple)





//@atd | ExternCContext@@Decl of (@ExternCContext@_decl_tuple)





//@atd | FileScopeAsm@@Decl of (@FileScopeAsm@_decl_tuple)





//@atd | Friend@@Decl of (@Friend@_decl_tuple)





//@atd | FriendTemplate@@Decl of (@FriendTemplate@_decl_tuple)





//@atd | Import@@Decl of (@Import@_decl_tuple)





//@atd | LinkageSpec@@Decl of (@LinkageSpec@_decl_tuple)





                                 



//@atd | Label@@Decl of (@Label@_decl_tuple)





//@atd | Namespace@@Decl of (@Namespace@_decl_tuple)





//@atd | NamespaceAlias@@Decl of (@NamespaceAlias@_decl_tuple)





//@atd | ObjCCompatibleAlias@@Decl of (@ObjCCompatibleAlias@_decl_tuple)





                                                      



//@atd | ObjCCategory@@Decl of (@ObjCCategory@_decl_tuple)





                                                    



//@atd | ObjCCategoryImpl@@Decl of (@ObjCCategoryImpl@_decl_tuple)





//@atd | ObjCImplementation@@Decl of (@ObjCImplementation@_decl_tuple)









//@atd | ObjCInterface@@Decl of (@ObjCInterface@_decl_tuple)





//@atd | ObjCProtocol@@Decl of (@ObjCProtocol@_decl_tuple)









//@atd | ObjCMethod@@Decl of (@ObjCMethod@_decl_tuple)





//@atd | ObjCProperty@@Decl of (@ObjCProperty@_decl_tuple)





                                            



//@atd | BuiltinTemplate@@Decl of (@BuiltinTemplate@_decl_tuple)





                                                                       



//@atd | ClassTemplate@@Decl of (@ClassTemplate@_decl_tuple)





//@atd | FunctionTemplate@@Decl of (@FunctionTemplate@_decl_tuple)





//@atd | TypeAliasTemplate@@Decl of (@TypeAliasTemplate@_decl_tuple)





//@atd | VarTemplate@@Decl of (@VarTemplate@_decl_tuple)









//@atd | TemplateTemplateParm@@Decl of (@TemplateTemplateParm@_decl_tuple)









                                    



                                 



//@atd | Enum@@Decl of (@Enum@_decl_tuple)





//@atd | Record@@Decl of (@Record@_decl_tuple)



//@atd | CXXRecord@@Decl of (@CXXRecord@_decl_tuple)



//@atd | ClassTemplateSpecialization@@Decl of (@ClassTemplateSpecialization@_decl_tuple)



//@atd | ClassTemplatePartialSpecialization@@Decl of (@ClassTemplatePartialSpecialization@_decl_tuple)





















//@atd | TemplateTypeParm@@Decl of (@TemplateTypeParm@_decl_tuple)





                                                 



//@atd | ObjCTypeParam@@Decl of (@ObjCTypeParam@_decl_tuple)





//@atd | TypeAlias@@Decl of (@TypeAlias@_decl_tuple)





//@atd | Typedef@@Decl of (@Typedef@_decl_tuple)









//@atd | UnresolvedUsingTypename@@Decl of (@UnresolvedUsingTypename@_decl_tuple)









//@atd | Using@@Decl of (@Using@_decl_tuple)





//@atd | UsingDirective@@Decl of (@UsingDirective@_decl_tuple)





//@atd | UsingPack@@Decl of (@UsingPack@_decl_tuple)





//@atd | UsingShadow@@Decl of (@UsingShadow@_decl_tuple)



//@atd | ConstructorUsingShadow@@Decl of (@ConstructorUsingShadow@_decl_tuple)









                                      



//@atd | Binding@@Decl of (@Binding@_decl_tuple)





                                                



//@atd | Field@@Decl of (@Field@_decl_tuple)



//@atd | ObjCAtDefsField@@Decl of (@ObjCAtDefsField@_decl_tuple)





//@atd | ObjCIvar@@Decl of (@ObjCIvar@_decl_tuple)









//@atd | Function@@Decl of (@Function@_decl_tuple)



//@atd | CXXDeductionGuide@@Decl of (@CXXDeductionGuide@_decl_tuple)





//@atd | CXXMethod@@Decl of (@CXXMethod@_decl_tuple)



//@atd | CXXConstructor@@Decl of (@CXXConstructor@_decl_tuple)





//@atd | CXXConversion@@Decl of (@CXXConversion@_decl_tuple)





//@atd | CXXDestructor@@Decl of (@CXXDestructor@_decl_tuple)













//@atd | MSProperty@@Decl of (@MSProperty@_decl_tuple)





//@atd | NonTypeTemplateParm@@Decl of (@NonTypeTemplateParm@_decl_tuple)





//@atd | Var@@Decl of (@Var@_decl_tuple)



//@atd | Decomposition@@Decl of (@Decomposition@_decl_tuple)





//@atd | ImplicitParam@@Decl of (@ImplicitParam@_decl_tuple)





//@atd | OMPCapturedExpr@@Decl of (@OMPCapturedExpr@_decl_tuple)





//@atd | ParmVar@@Decl of (@ParmVar@_decl_tuple)





//@atd | VarTemplateSpecialization@@Decl of (@VarTemplateSpecialization@_decl_tuple)



//@atd | VarTemplatePartialSpecialization@@Decl of (@VarTemplatePartialSpecialization@_decl_tuple)

















//@atd | EnumConstant@@Decl of (@EnumConstant@_decl_tuple)





//@atd | IndirectField@@Decl of (@IndirectField@_decl_tuple)





//@atd | OMPDeclareReduction@@Decl of (@OMPDeclareReduction@_decl_tuple)





//@atd | UnresolvedUsingValue@@Decl of (@UnresolvedUsingValue@_decl_tuple)













//@atd | OMPThreadPrivate@@Decl of (@OMPThreadPrivate@_decl_tuple)





//@atd | ObjCPropertyImpl@@Decl of (@ObjCPropertyImpl@_decl_tuple)





//@atd | PragmaComment@@Decl of (@PragmaComment@_decl_tuple)





//@atd | PragmaDetectMismatch@@Decl of (@PragmaDetectMismatch@_decl_tuple)





//@atd | StaticAssert@@Decl of (@StaticAssert@_decl_tuple)





//@atd | TranslationUnit@@Decl of (@TranslationUnit@_decl_tuple)






















                           












//@atd ] <ocaml repr="classic" validator="Clang_ast_visit.visit_decl">

//===----------------------------------------------------------------------===//
//  Stmt dumping methods.
//===----------------------------------------------------------------------===//

// Default aliases for generating variant components
// The main variant is defined at the end of section.

























//@atd #define @AsmStmt@_tuple @ Stmt@_tuple



//@atd #define @GCCAsmStmt@_tuple @ AsmStmt@_tuple





//@atd #define @MSAsmStmt@_tuple @ AsmStmt@_tuple









//@atd #define @AttributedStmt@_tuple @ Stmt@_tuple





//@atd #define @BreakStmt@_tuple @ Stmt@_tuple





//@atd #define @CXXCatchStmt@_tuple @ Stmt@_tuple





//@atd #define @CXXForRangeStmt@_tuple @ Stmt@_tuple





//@atd #define @CXXTryStmt@_tuple @ Stmt@_tuple





//@atd #define @CapturedStmt@_tuple @ Stmt@_tuple





//@atd #define @CompoundStmt@_tuple @ Stmt@_tuple





//@atd #define @ContinueStmt@_tuple @ Stmt@_tuple





//@atd #define @CoreturnStmt@_tuple @ Stmt@_tuple





//@atd #define @CoroutineBodyStmt@_tuple @ Stmt@_tuple





//@atd #define @DeclStmt@_tuple @ Stmt@_tuple





//@atd #define @DoStmt@_tuple @ Stmt@_tuple





//@atd #define @Expr@_tuple @ Stmt@_tuple



//@atd #define @AbstractConditionalOperator@_tuple @ Expr@_tuple



//@atd #define @BinaryConditionalOperator@_tuple @ AbstractConditionalOperator@_tuple





//@atd #define @ConditionalOperator@_tuple @ AbstractConditionalOperator@_tuple









//@atd #define @AddrLabelExpr@_tuple @ Expr@_tuple





//@atd #define @ArrayInitIndexExpr@_tuple @ Expr@_tuple





//@atd #define @ArrayInitLoopExpr@_tuple @ Expr@_tuple





//@atd #define @ArraySubscriptExpr@_tuple @ Expr@_tuple





//@atd #define @ArrayTypeTraitExpr@_tuple @ Expr@_tuple





//@atd #define @AsTypeExpr@_tuple @ Expr@_tuple





//@atd #define @AtomicExpr@_tuple @ Expr@_tuple





//@atd #define @BinaryOperator@_tuple @ Expr@_tuple



//@atd #define @CompoundAssignOperator@_tuple @ BinaryOperator@_tuple









//@atd #define @BlockExpr@_tuple @ Expr@_tuple





//@atd #define @CXXBindTemporaryExpr@_tuple @ Expr@_tuple





//@atd #define @CXXBoolLiteralExpr@_tuple @ Expr@_tuple





//@atd #define @CXXConstructExpr@_tuple @ Expr@_tuple



//@atd #define @CXXTemporaryObjectExpr@_tuple @ CXXConstructExpr@_tuple









//@atd #define @CXXDefaultArgExpr@_tuple @ Expr@_tuple





//@atd #define @CXXDefaultInitExpr@_tuple @ Expr@_tuple





//@atd #define @CXXDeleteExpr@_tuple @ Expr@_tuple





//@atd #define @CXXDependentScopeMemberExpr@_tuple @ Expr@_tuple





//@atd #define @CXXFoldExpr@_tuple @ Expr@_tuple





//@atd #define @CXXInheritedCtorInitExpr@_tuple @ Expr@_tuple





//@atd #define @CXXNewExpr@_tuple @ Expr@_tuple





//@atd #define @CXXNoexceptExpr@_tuple @ Expr@_tuple





//@atd #define @CXXNullPtrLiteralExpr@_tuple @ Expr@_tuple





//@atd #define @CXXPseudoDestructorExpr@_tuple @ Expr@_tuple





//@atd #define @CXXScalarValueInitExpr@_tuple @ Expr@_tuple





//@atd #define @CXXStdInitializerListExpr@_tuple @ Expr@_tuple





//@atd #define @CXXThisExpr@_tuple @ Expr@_tuple





//@atd #define @CXXThrowExpr@_tuple @ Expr@_tuple





//@atd #define @CXXTypeidExpr@_tuple @ Expr@_tuple





//@atd #define @CXXUnresolvedConstructExpr@_tuple @ Expr@_tuple





//@atd #define @CXXUuidofExpr@_tuple @ Expr@_tuple





//@atd #define @CallExpr@_tuple @ Expr@_tuple



//@atd #define @CUDAKernelCallExpr@_tuple @ CallExpr@_tuple





//@atd #define @CXXMemberCallExpr@_tuple @ CallExpr@_tuple





//@atd #define @CXXOperatorCallExpr@_tuple @ CallExpr@_tuple





//@atd #define @UserDefinedLiteral@_tuple @ CallExpr@_tuple









//@atd #define @CastExpr@_tuple @ Expr@_tuple



//@atd #define @ExplicitCastExpr@_tuple @ CastExpr@_tuple



//@atd #define @CStyleCastExpr@_tuple @ ExplicitCastExpr@_tuple





//@atd #define @CXXFunctionalCastExpr@_tuple @ ExplicitCastExpr@_tuple





//@atd #define @CXXNamedCastExpr@_tuple @ ExplicitCastExpr@_tuple



//@atd #define @CXXConstCastExpr@_tuple @ CXXNamedCastExpr@_tuple





//@atd #define @CXXDynamicCastExpr@_tuple @ CXXNamedCastExpr@_tuple





//@atd #define @CXXReinterpretCastExpr@_tuple @ CXXNamedCastExpr@_tuple





//@atd #define @CXXStaticCastExpr@_tuple @ CXXNamedCastExpr@_tuple









//@atd #define @ObjCBridgedCastExpr@_tuple @ ExplicitCastExpr@_tuple









//@atd #define @ImplicitCastExpr@_tuple @ CastExpr@_tuple









//@atd #define @CharacterLiteral@_tuple @ Expr@_tuple





//@atd #define @ChooseExpr@_tuple @ Expr@_tuple





//@atd #define @CompoundLiteralExpr@_tuple @ Expr@_tuple





//@atd #define @ConvertVectorExpr@_tuple @ Expr@_tuple





//@atd #define @CoroutineSuspendExpr@_tuple @ Expr@_tuple



//@atd #define @CoawaitExpr@_tuple @ CoroutineSuspendExpr@_tuple





//@atd #define @CoyieldExpr@_tuple @ CoroutineSuspendExpr@_tuple









//@atd #define @DeclRefExpr@_tuple @ Expr@_tuple





//@atd #define @DependentCoawaitExpr@_tuple @ Expr@_tuple





//@atd #define @DependentScopeDeclRefExpr@_tuple @ Expr@_tuple





//@atd #define @DesignatedInitExpr@_tuple @ Expr@_tuple





//@atd #define @DesignatedInitUpdateExpr@_tuple @ Expr@_tuple





//@atd #define @ExprWithCleanups@_tuple @ Expr@_tuple





//@atd #define @ExpressionTraitExpr@_tuple @ Expr@_tuple





//@atd #define @ExtVectorElementExpr@_tuple @ Expr@_tuple





//@atd #define @FloatingLiteral@_tuple @ Expr@_tuple





//@atd #define @FunctionParmPackExpr@_tuple @ Expr@_tuple





//@atd #define @GNUNullExpr@_tuple @ Expr@_tuple





//@atd #define @GenericSelectionExpr@_tuple @ Expr@_tuple





//@atd #define @ImaginaryLiteral@_tuple @ Expr@_tuple





//@atd #define @ImplicitValueInitExpr@_tuple @ Expr@_tuple





//@atd #define @InitListExpr@_tuple @ Expr@_tuple





//@atd #define @IntegerLiteral@_tuple @ Expr@_tuple





//@atd #define @LambdaExpr@_tuple @ Expr@_tuple





//@atd #define @MSPropertyRefExpr@_tuple @ Expr@_tuple





//@atd #define @MSPropertySubscriptExpr@_tuple @ Expr@_tuple





//@atd #define @MaterializeTemporaryExpr@_tuple @ Expr@_tuple





//@atd #define @MemberExpr@_tuple @ Expr@_tuple





//@atd #define @NoInitExpr@_tuple @ Expr@_tuple





//@atd #define @OMPArraySectionExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCArrayLiteral@_tuple @ Expr@_tuple





//@atd #define @ObjCAvailabilityCheckExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCBoolLiteralExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCBoxedExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCDictionaryLiteral@_tuple @ Expr@_tuple





//@atd #define @ObjCEncodeExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCIndirectCopyRestoreExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCIsaExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCIvarRefExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCMessageExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCPropertyRefExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCProtocolExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCSelectorExpr@_tuple @ Expr@_tuple





//@atd #define @ObjCStringLiteral@_tuple @ Expr@_tuple





//@atd #define @ObjCSubscriptRefExpr@_tuple @ Expr@_tuple





//@atd #define @OffsetOfExpr@_tuple @ Expr@_tuple





//@atd #define @OpaqueValueExpr@_tuple @ Expr@_tuple





//@atd #define @OverloadExpr@_tuple @ Expr@_tuple



//@atd #define @UnresolvedLookupExpr@_tuple @ OverloadExpr@_tuple





//@atd #define @UnresolvedMemberExpr@_tuple @ OverloadExpr@_tuple









//@atd #define @PackExpansionExpr@_tuple @ Expr@_tuple





//@atd #define @ParenExpr@_tuple @ Expr@_tuple





//@atd #define @ParenListExpr@_tuple @ Expr@_tuple





//@atd #define @PredefinedExpr@_tuple @ Expr@_tuple





//@atd #define @PseudoObjectExpr@_tuple @ Expr@_tuple





//@atd #define @ShuffleVectorExpr@_tuple @ Expr@_tuple





//@atd #define @SizeOfPackExpr@_tuple @ Expr@_tuple





//@atd #define @StmtExpr@_tuple @ Expr@_tuple





//@atd #define @StringLiteral@_tuple @ Expr@_tuple





//@atd #define @SubstNonTypeTemplateParmExpr@_tuple @ Expr@_tuple





//@atd #define @SubstNonTypeTemplateParmPackExpr@_tuple @ Expr@_tuple





//@atd #define @TypeTraitExpr@_tuple @ Expr@_tuple





//@atd #define @TypoExpr@_tuple @ Expr@_tuple





//@atd #define @UnaryExprOrTypeTraitExpr@_tuple @ Expr@_tuple





//@atd #define @UnaryOperator@_tuple @ Expr@_tuple





//@atd #define @VAArgExpr@_tuple @ Expr@_tuple









//@atd #define @ForStmt@_tuple @ Stmt@_tuple





//@atd #define @GotoStmt@_tuple @ Stmt@_tuple





//@atd #define @IfStmt@_tuple @ Stmt@_tuple





//@atd #define @IndirectGotoStmt@_tuple @ Stmt@_tuple





//@atd #define @LabelStmt@_tuple @ Stmt@_tuple





//@atd #define @MSDependentExistsStmt@_tuple @ Stmt@_tuple





//@atd #define @NullStmt@_tuple @ Stmt@_tuple





//@atd #define @OMPExecutableDirective@_tuple @ Stmt@_tuple



//@atd #define @OMPAtomicDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPBarrierDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPCancelDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPCancellationPointDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPCriticalDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPFlushDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPLoopDirective@_tuple @ OMPExecutableDirective@_tuple



//@atd #define @OMPDistributeDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPDistributeParallelForDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPDistributeParallelForSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPDistributeSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPForDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPForSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPParallelForDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPParallelForSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTargetParallelForSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTargetSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTargetTeamsDistributeDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTargetTeamsDistributeParallelForDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTargetTeamsDistributeParallelForSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTargetTeamsDistributeSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTaskLoopDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTaskLoopSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTeamsDistributeDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTeamsDistributeParallelForDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTeamsDistributeParallelForSimdDirective@_tuple @ OMPLoopDirective@_tuple





//@atd #define @OMPTeamsDistributeSimdDirective@_tuple @ OMPLoopDirective@_tuple









//@atd #define @OMPMasterDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPOrderedDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPParallelDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPParallelSectionsDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPSectionDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPSectionsDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPSingleDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetDataDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetEnterDataDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetExitDataDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetParallelDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetParallelForDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetTeamsDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTargetUpdateDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTaskDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTaskgroupDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTaskwaitDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTaskyieldDirective@_tuple @ OMPExecutableDirective@_tuple





//@atd #define @OMPTeamsDirective@_tuple @ OMPExecutableDirective@_tuple









//@atd #define @ObjCAtCatchStmt@_tuple @ Stmt@_tuple





//@atd #define @ObjCAtFinallyStmt@_tuple @ Stmt@_tuple





//@atd #define @ObjCAtSynchronizedStmt@_tuple @ Stmt@_tuple





//@atd #define @ObjCAtThrowStmt@_tuple @ Stmt@_tuple





//@atd #define @ObjCAtTryStmt@_tuple @ Stmt@_tuple





//@atd #define @ObjCAutoreleasePoolStmt@_tuple @ Stmt@_tuple





//@atd #define @ObjCForCollectionStmt@_tuple @ Stmt@_tuple





//@atd #define @ReturnStmt@_tuple @ Stmt@_tuple





//@atd #define @SEHExceptStmt@_tuple @ Stmt@_tuple





//@atd #define @SEHFinallyStmt@_tuple @ Stmt@_tuple





//@atd #define @SEHLeaveStmt@_tuple @ Stmt@_tuple





//@atd #define @SEHTryStmt@_tuple @ Stmt@_tuple





//@atd #define @SwitchCase@_tuple @ Stmt@_tuple



//@atd #define @CaseStmt@_tuple @ SwitchCase@_tuple





//@atd #define @DefaultStmt@_tuple @ SwitchCase@_tuple









//@atd #define @SwitchStmt@_tuple @ Stmt@_tuple





//@atd #define @WhileStmt@_tuple @ Stmt@_tuple





//
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpStmt(const Stmt *S) {
  if (!S) {
    // We use a fixed NullStmt node to represent null pointers
    S = NullPtrStmt;
  }
  VariantScope Scope(OF, S->getStmtClassName());
  {
    TupleScope Scope(OF, ASTExporter::tupleSizeOfStmtClass(S->getStmtClass()));
    ConstStmtVisitor<ASTExporter<ATDWriter>>::Visit(S);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::StmtTupleSize() {
  return 2;
}
//@atd #define stmt_tuple stmt_info * stmt list
//@atd type stmt_info = {
//@atd   pointer : pointer;
//@atd   source_range : source_range;
//@atd } <ocaml field_prefix="si_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitStmt(const Stmt *S) {
  {
    ObjectScope Scope(OF, 2);

    OF.emitTag("pointer");
    dumpPointer(S);
    OF.emitTag("source_range");
    dumpSourceRange(S->getSourceRange());
  }
  {
    ArrayScope Scope(OF, std::distance(S->child_begin(), S->child_end()));
    for (const Stmt *CI : S->children()) {
      dumpStmt(CI);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::DeclStmtTupleSize() {
  return StmtTupleSize() + 1;
}
//@atd #define decl_stmt_tuple stmt_tuple * decl list
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitDeclStmt(const DeclStmt *Node) {
  VisitStmt(Node);
  ArrayScope Scope(OF, std::distance(Node->decl_begin(), Node->decl_end()));
  for (auto I : Node->decls()) {
    dumpDecl(I);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::AttributedStmtTupleSize() {
  return StmtTupleSize() + 1;
}
//@atd #define attributed_stmt_tuple stmt_tuple * attribute list
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitAttributedStmt(const AttributedStmt *Node) {
  VisitStmt(Node);
  ArrayScope Scope(OF, Node->getAttrs().size()); // not covered by tests
  for (auto I : Node->getAttrs()) {
    dumpAttr(*I);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::LabelStmtTupleSize() {
  return StmtTupleSize() + 1;
}
//@atd #define label_stmt_tuple stmt_tuple * string
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitLabelStmt(const LabelStmt *Node) {
  VisitStmt(Node);
  OF.emitString(Node->getName());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::GotoStmtTupleSize() {
  return StmtTupleSize() + 1;
}
//@atd #define goto_stmt_tuple stmt_tuple * goto_stmt_info
//@atd type goto_stmt_info = {
//@atd   label : string;
//@atd   pointer : pointer
//@atd } <ocaml field_prefix="gsi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitGotoStmt(const GotoStmt *Node) {
  VisitStmt(Node);
  ObjectScope Scope(OF, 2); // not covered by tests
  OF.emitTag("label");
  OF.emitString(Node->getLabel()->getName());
  OF.emitTag("pointer");
  dumpPointer(Node->getLabel());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXCatchStmtTupleSize() {
  return StmtTupleSize() + 1;
}
//@atd #define cxx_catch_stmt_tuple stmt_tuple * cxx_catch_stmt_info
//@atd type cxx_catch_stmt_info = {
//@atd   ?variable : decl option
//@atd } <ocaml field_prefix="xcsi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXCatchStmt(const CXXCatchStmt *Node) {
  VisitStmt(Node);

  const VarDecl *decl = Node->getExceptionDecl();
  ObjectScope Scope(OF, 0 + (bool)decl); // not covered by tests

  if (decl) {
    OF.emitTag("variable");
    dumpDecl(decl);
  }
}

////===----------------------------------------------------------------------===//
////  Expr dumping methods.
////===----------------------------------------------------------------------===//
//

template <class ATDWriter>
int ASTExporter<ATDWriter>::ExprTupleSize() {
  return StmtTupleSize() + 1;
}
//@atd #define expr_tuple stmt_tuple * expr_info
//@atd type expr_info = {
//@atd   qual_type : qual_type;
//@atd   ~value_kind <ocaml default="`RValue"> : value_kind;
//@atd   ~object_kind <ocaml default="`Ordinary"> : object_kind;
//@atd } <ocaml field_prefix="ei_">
//@atd type value_kind = [ RValue | LValue | XValue ]
//@atd type object_kind = [ Ordinary | BitField | ObjCProperty | ObjCSubscript |
//@atd VectorComponent ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitExpr(const Expr *Node) {
  VisitStmt(Node);

  ExprValueKind VK = Node->getValueKind();
  bool HasNonDefaultValueKind = VK != VK_RValue;
  ExprObjectKind OK = Node->getObjectKind();
  bool HasNonDefaultObjectKind = OK != OK_Ordinary;
  ObjectScope Scope(OF, 1 + HasNonDefaultValueKind + HasNonDefaultObjectKind);

  OF.emitTag("qual_type");
  dumpQualType(Node->getType());

  if (HasNonDefaultValueKind) {
    OF.emitTag("value_kind");
    switch (VK) {
    case VK_LValue:
      OF.emitSimpleVariant("LValue");
      break;
    case VK_XValue:
      OF.emitSimpleVariant("XValue");
      break;
    case VK_RValue:
      llvm_unreachable("unreachable");
      break;
    }
  }
  if (HasNonDefaultObjectKind) {
    OF.emitTag("object_kind");
    switch (Node->getObjectKind()) {
    case OK_BitField:
      OF.emitSimpleVariant("BitField");
      break;
    case OK_ObjCProperty:
      OF.emitSimpleVariant("ObjCProperty");
      break;
    case OK_ObjCSubscript:
      OF.emitSimpleVariant("ObjCSubscript");
      break;
    case OK_VectorComponent:
      OF.emitSimpleVariant("VectorComponent");
      break;
    case OK_Ordinary:
      llvm_unreachable("unreachable");
      break;
    }
  }
}

//@atd type cxx_base_specifier = {
//@atd   name : string;
//@atd   ~virtual : bool;
//@atd } <ocaml field_prefix="xbs_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpCXXBaseSpecifier(
    const CXXBaseSpecifier &Base) {
  bool IsVirtual = Base.isVirtual();
  ObjectScope Scope(OF, 1 + IsVirtual);

  OF.emitTag("name");
  const CXXRecordDecl *RD =
      cast<CXXRecordDecl>(Base.getType()->getAs<RecordType>()->getDecl());
  OF.emitString(RD->getName());
  OF.emitFlag("virtual", IsVirtual);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CastExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd type cast_kind = [


//===--- OperationKinds.def - Operations Database ---------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file enumerates the different kinds of operations that can be
// performed by various expressions.
//
//===----------------------------------------------------------------------===//
//
/// @file OperationKinds.def
///
/// In this file, each of the C/C++ operations is enumerated CAST_OPERATION,
/// BINARY_OPERATION or UNARY_OPERATION macro, each of which can be specified by
/// the code including this file.
///
/// Macros had one or two arguments:
///
/// Name: The name of the operation. Name (prefixed with CK_, UO_ or BO_) will
/// be the name of the corresponding enumerator (see OperationsKinds.h).
///
/// Spelling: A string that provides a canonical spelling for the operation.













//===- Cast Operations  ---------------------------------------------------===//

/// CK_Dependent - A conversion which cannot yet be analyzed because
/// either the expression or target type is dependent.  These are
/// created only for explicit casts; dependent ASTs aren't required
/// to even approximately type-check.
///   (T*) malloc(sizeof(T))
///   reinterpret_cast<intptr_t>(A<T>::alloc());
//@atd | Dependent

/// CK_BitCast - A conversion which causes a bit pattern of one type
/// to be reinterpreted as a bit pattern of another type.  Generally
/// the operands must have equivalent size and unrelated types.
///
/// The pointer conversion char* -> int* is a bitcast.  A conversion
/// from any pointer type to a C pointer type is a bitcast unless
/// it's actually BaseToDerived or DerivedToBase.  A conversion to a
/// block pointer or ObjC pointer type is a bitcast only if the
/// operand has the same type kind; otherwise, it's one of the
/// specialized casts below.
///
/// Vector coercions are bitcasts.
//@atd | BitCast

/// CK_LValueBitCast - A conversion which reinterprets the address of
/// an l-value as an l-value of a different kind.  Used for
/// reinterpret_casts of l-value expressions to reference types.
///    bool b; reinterpret_cast<char&>(b) = 'a';
//@atd | LValueBitCast

/// CK_LValueToRValue - A conversion which causes the extraction of
/// an r-value from the operand gl-value.  The result of an r-value
/// conversion is always unqualified.
//@atd | LValueToRValue

/// CK_NoOp - A conversion which does not affect the type other than
/// (possibly) adding qualifiers.
///   int    -> int
///   char** -> const char * const *
//@atd | NoOp

/// CK_BaseToDerived - A conversion from a C++ class pointer/reference
/// to a derived class pointer/reference.
///   B *b = static_cast<B*>(a);
//@atd | BaseToDerived

/// CK_DerivedToBase - A conversion from a C++ class pointer
/// to a base class pointer.
///   A *a = new B();
//@atd | DerivedToBase

/// CK_UncheckedDerivedToBase - A conversion from a C++ class
/// pointer/reference to a base class that can assume that the
/// derived pointer is not null.
///   const A &a = B();
///   b->method_from_a();
//@atd | UncheckedDerivedToBase

/// CK_Dynamic - A C++ dynamic_cast.
//@atd | Dynamic

/// CK_ToUnion - The GCC cast-to-union extension.
///   int   -> union { int x; float y; }
///   float -> union { int x; float y; }
//@atd | ToUnion

/// CK_ArrayToPointerDecay - Array to pointer decay.
///   int[10] -> int*
///   char[5][6] -> char(*)[6]
//@atd | ArrayToPointerDecay

/// CK_FunctionToPointerDecay - Function to pointer decay.
///   void(int) -> void(*)(int)
//@atd | FunctionToPointerDecay

/// CK_NullToPointer - Null pointer constant to pointer, ObjC
/// pointer, or block pointer.
///   (void*) 0
///   void (^block)() = 0;
//@atd | NullToPointer

/// CK_NullToMemberPointer - Null pointer constant to member pointer.
///   int A::*mptr = 0;
///   int (A::*fptr)(int) = nullptr;
//@atd | NullToMemberPointer

/// CK_BaseToDerivedMemberPointer - Member pointer in base class to
/// member pointer in derived class.
///   int B::*mptr = &A::member;
//@atd | BaseToDerivedMemberPointer

/// CK_DerivedToBaseMemberPointer - Member pointer in derived class to
/// member pointer in base class.
///   int A::*mptr = static_cast<int A::*>(&B::member);
//@atd | DerivedToBaseMemberPointer

/// CK_MemberPointerToBoolean - Member pointer to boolean.  A check
/// against the null member pointer.
//@atd | MemberPointerToBoolean

/// CK_ReinterpretMemberPointer - Reinterpret a member pointer as a
/// different kind of member pointer.  C++ forbids this from
/// crossing between function and object types, but otherwise does
/// not restrict it.  However, the only operation that is permitted
/// on a "punned" member pointer is casting it back to the original
/// type, which is required to be a lossless operation (although
/// many ABIs do not guarantee this on all possible intermediate types).
//@atd | ReinterpretMemberPointer

/// CK_UserDefinedConversion - Conversion using a user defined type
/// conversion function.
///    struct A { operator int(); }; int i = int(A());
//@atd | UserDefinedConversion

/// CK_ConstructorConversion - Conversion by constructor.
///    struct A { A(int); }; A a = A(10);
//@atd | ConstructorConversion

/// CK_IntegralToPointer - Integral to pointer.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (char*) 0x1001aab0
///    reinterpret_cast<int*>(0)
//@atd | IntegralToPointer

/// CK_PointerToIntegral - Pointer to integral.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (intptr_t) "help!"
//@atd | PointerToIntegral

/// CK_PointerToBoolean - Pointer to boolean conversion.  A check
/// against null.  Applies to normal, ObjC, and block pointers.
//@atd | PointerToBoolean

/// CK_ToVoid - Cast to void, discarding the computed value.
///    (void) malloc(2048)
//@atd | ToVoid

/// CK_VectorSplat - A conversion from an arithmetic type to a
/// vector of that element type.  Fills all elements ("splats") with
/// the source value.
///    __attribute__((ext_vector_type(4))) int v = 5;
//@atd | VectorSplat

/// CK_IntegralCast - A cast between integral types (other than to
/// boolean).  Variously a bitcast, a truncation, a sign-extension,
/// or a zero-extension.
///    long l = 5;
///    (unsigned) i
//@atd | IntegralCast

/// CK_IntegralToBoolean - Integral to boolean.  A check against zero.
///    (bool) i
//@atd | IntegralToBoolean

/// CK_IntegralToFloating - Integral to floating point.
///    float f = i;
//@atd | IntegralToFloating

/// CK_FloatingToIntegral - Floating point to integral.  Rounds
/// towards zero, discarding any fractional component.
///    (int) f
//@atd | FloatingToIntegral

/// CK_FloatingToBoolean - Floating point to boolean.
///    (bool) f
//@atd | FloatingToBoolean

// CK_BooleanToSignedIntegral - Convert a boolean to -1 or 0 for true and
// false, respectively.
//@atd | BooleanToSignedIntegral

/// CK_FloatingCast - Casting between floating types of different size.
///    (double) f
///    (float) ld
//@atd | FloatingCast

/// CK_CPointerToObjCPointerCast - Casting a C pointer kind to an
/// Objective-C pointer.
//@atd | CPointerToObjCPointerCast

/// CK_BlockPointerToObjCPointerCast - Casting a block pointer to an
/// ObjC pointer.
//@atd | BlockPointerToObjCPointerCast

/// CK_AnyPointerToBlockPointerCast - Casting any non-block pointer
/// to a block pointer.  Block-to-block casts are bitcasts.
//@atd | AnyPointerToBlockPointerCast

/// \brief Converting between two Objective-C object types, which
/// can occur when performing reference binding to an Objective-C
/// object.
//@atd | ObjCObjectLValueCast

/// \brief A conversion of a floating point real to a floating point
/// complex of the original type.  Injects the value as the real
/// component with a zero imaginary component.
///   float -> _Complex float
//@atd | FloatingRealToComplex

/// \brief Converts a floating point complex to floating point real
/// of the source's element type.  Just discards the imaginary
/// component.
///   _Complex long double -> long double
//@atd | FloatingComplexToReal

/// \brief Converts a floating point complex to bool by comparing
/// against 0+0i.
//@atd | FloatingComplexToBoolean

/// \brief Converts between different floating point complex types.
///   _Complex float -> _Complex double
//@atd | FloatingComplexCast

/// \brief Converts from a floating complex to an integral complex.
///   _Complex float -> _Complex int
//@atd | FloatingComplexToIntegralComplex

/// \brief Converts from an integral real to an integral complex
/// whose element type matches the source.  Injects the value as
/// the real component with a zero imaginary component.
///   long -> _Complex long
//@atd | IntegralRealToComplex

/// \brief Converts an integral complex to an integral real of the
/// source's element type by discarding the imaginary component.
///   _Complex short -> short
//@atd | IntegralComplexToReal

/// \brief Converts an integral complex to bool by comparing against
/// 0+0i.
//@atd | IntegralComplexToBoolean

/// \brief Converts between different integral complex types.
///   _Complex char -> _Complex long long
///   _Complex unsigned int -> _Complex signed int
//@atd | IntegralComplexCast

/// \brief Converts from an integral complex to a floating complex.
///   _Complex unsigned -> _Complex float
//@atd | IntegralComplexToFloatingComplex

/// \brief [ARC] Produces a retainable object pointer so that it may
/// be consumed, e.g. by being passed to a consuming parameter.
/// Calls objc_retain.
//@atd | ARCProduceObject

/// \brief [ARC] Consumes a retainable object pointer that has just
/// been produced, e.g. as the return value of a retaining call.
/// Enters a cleanup to call objc_release at some indefinite time.
//@atd | ARCConsumeObject

/// \brief [ARC] Reclaim a retainable object pointer object that may
/// have been produced and autoreleased as part of a function return
/// sequence.
//@atd | ARCReclaimReturnedObject

/// \brief [ARC] Causes a value of block type to be copied to the
/// heap, if it is not already there.  A number of other operations
/// in ARC cause blocks to be copied; this is for cases where that
/// would not otherwise be guaranteed, such as when casting to a
/// non-block pointer type.
//@atd | ARCExtendBlockObject

/// \brief Converts from _Atomic(T) to T.
//@atd | AtomicToNonAtomic
/// \brief Converts from T to _Atomic(T).
//@atd | NonAtomicToAtomic

/// \brief Causes a block literal to by copied to the heap and then 
/// autoreleased.
///
/// This particular cast kind is used for the conversion from a C++11
/// lambda expression to a block pointer.
//@atd | CopyAndAutoreleaseBlockObject

// Convert a builtin function to a function pointer; only allowed in the
// callee of a call expression.
//@atd | BuiltinFnToFnPtr

// Convert a zero value for OpenCL event_t initialization.
//@atd | ZeroToOCLEvent

// Convert a zero value for OpenCL queue_t initialization.
//@atd | ZeroToOCLQueue

// Convert a pointer to a different address space.
//@atd | AddressSpaceConversion

// Convert an integer initializer to an OpenCL sampler.
//@atd | IntToOCLSampler

//===- Binary Operations  -------------------------------------------------===//
// Operators listed in order of precedence.
// Note that additions to this should also update the StmtVisitor class.

// [C++ 5.5] Pointer-to-member operators.


// [C99 6.5.5] Multiplicative operators.



// [C99 6.5.6] Additive operators.


// [C99 6.5.7] Bitwise shift operators.


// [C99 6.5.8] Relational operators.




// [C99 6.5.9] Equality operators.


// [C99 6.5.10] Bitwise AND operator.

// [C99 6.5.11] Bitwise XOR operator.

// [C99 6.5.12] Bitwise OR operator.

// [C99 6.5.13] Logical AND operator.

// [C99 6.5.14] Logical OR operator.

// [C99 6.5.16] Assignment operators.











// [C99 6.5.17] Comma operator.



//===- Unary Operations ---------------------------------------------------===//
// Note that additions to this should also update the StmtVisitor class.

// [C99 6.5.2.4] Postfix increment and decrement


// [C99 6.5.3.1] Prefix increment and decrement 


// [C99 6.5.3.2] Address and indirection


// [C99 6.5.3.3] Unary arithmetic 




// "__real expr"/"__imag expr" Extension.


// __extension__ marker.

// [C++ Coroutines] co_await operator



//@atd ]
//@atd #define cast_expr_tuple expr_tuple * cast_expr_info
//@atd type cast_expr_info = {
//@atd   cast_kind : cast_kind;
//@atd   base_path : cxx_base_specifier list;
//@atd } <ocaml field_prefix="cei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCastExpr(const CastExpr *Node) {
  VisitExpr(Node);
  ObjectScope Scope(OF, 2);
  OF.emitTag("cast_kind");
  OF.emitSimpleVariant(Node->getCastKindName());
  OF.emitTag("base_path");
  {
    auto I = Node->path_begin(), E = Node->path_end();
    ArrayScope Scope(OF, std::distance(I, E));
    for (; I != E; ++I) {
      dumpCXXBaseSpecifier(**I);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ExplicitCastExprTupleSize() {
  return CastExprTupleSize() + 1;
}
//@atd #define explicit_cast_expr_tuple cast_expr_tuple * qual_type
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitExplicitCastExpr(
    const ExplicitCastExpr *Node) {
  VisitCastExpr(Node);
  dumpQualType(Node->getTypeAsWritten());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::DeclRefExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define decl_ref_expr_tuple expr_tuple * decl_ref_expr_info
//@atd type decl_ref_expr_info = {
//@atd   ?decl_ref : decl_ref option;
//@atd   ?found_decl_ref : decl_ref option
//@atd } <ocaml field_prefix="drti_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitDeclRefExpr(const DeclRefExpr *Node) {
  VisitExpr(Node);

  const ValueDecl *D = Node->getDecl();
  const NamedDecl *FD = Node->getFoundDecl();
  bool HasFoundDeclRef = FD && D != FD;
  ObjectScope Scope(OF, 0 + (bool)D + HasFoundDeclRef);

  if (D) {
    OF.emitTag("decl_ref");
    dumpDeclRef(*D);
  }
  if (HasFoundDeclRef) {
    OF.emitTag("found_decl_ref");
    dumpDeclRef(*FD);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::OverloadExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define overload_expr_tuple expr_tuple * overload_expr_info
//@atd type overload_expr_info = {
//@atd   ~decls : decl_ref list;
//@atd   name : declaration_name;
//@atd } <ocaml field_prefix="oei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitOverloadExpr(const OverloadExpr *Node) {
  VisitExpr(Node);

  // suboptimal
  ObjectScope Scope(OF, 2); // not covered by tests

  {
    if (Node->getNumDecls() > 0) {
      OF.emitTag("decls");
      ArrayScope Scope( // not covered by tests
          OF,
          std::distance(Node->decls_begin(), Node->decls_end()));
      for (auto I : Node->decls()) {
        dumpDeclRef(*I);
      }
    }
  }
  OF.emitTag("name");
  dumpDeclarationName(Node->getName());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::UnresolvedLookupExprTupleSize() {
  return OverloadExprTupleSize() + 1;
}
//@atd #define unresolved_lookup_expr_tuple overload_expr_tuple * unresolved_lookup_expr_info
//@atd type unresolved_lookup_expr_info = {
//@atd   ~requires_ADL : bool;
//@atd   ~is_overloaded : bool;
//@atd   ?naming_class : decl_ref option;
//@atd } <ocaml field_prefix="ulei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitUnresolvedLookupExpr(
    const UnresolvedLookupExpr *Node) {
  VisitOverloadExpr(Node);

  bool RequiresADL = Node->requiresADL();
  bool IsOverloaded = Node->isOverloaded();
  bool HasNamingClass = Node->getNamingClass();
  ObjectScope Scope(
      OF,
      0 + RequiresADL + IsOverloaded + HasNamingClass); // not covered by tests

  OF.emitFlag("requires_ADL", RequiresADL);
  OF.emitFlag("is_overloaded", IsOverloaded);
  if (HasNamingClass) {
    OF.emitTag("naming_class");
    dumpDeclRef(*Node->getNamingClass());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCIvarRefExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_ivar_ref_expr_tuple expr_tuple * obj_c_ivar_ref_expr_info
//@atd type obj_c_ivar_ref_expr_info = {
//@atd   decl_ref : decl_ref;
//@atd   pointer : pointer;
//@atd   ~is_free_ivar : bool
//@atd } <ocaml field_prefix="ovrei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCIvarRefExpr(const ObjCIvarRefExpr *Node) {
  VisitExpr(Node);

  bool IsFreeIvar = Node->isFreeIvar();
  ObjectScope Scope(OF, 2 + IsFreeIvar); // not covered by tests

  OF.emitTag("decl_ref");
  dumpDeclRef(*Node->getDecl());
  OF.emitTag("pointer");
  dumpPointer(Node->getDecl());
  OF.emitFlag("is_free_ivar", IsFreeIvar);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::PredefinedExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define predefined_expr_tuple expr_tuple * predefined_expr_type
//@atd type predefined_expr_type = [
//@atd | Func
//@atd | Function
//@atd | LFunction
//@atd | FuncDName
//@atd | FuncSig
//@atd | PrettyFunction
//@atd | PrettyFunctionNoVirtual
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitPredefinedExpr(const PredefinedExpr *Node) {
  VisitExpr(Node);
  switch (Node->getIdentType()) {
  case PredefinedExpr::Func:
    OF.emitSimpleVariant("Func");
    break;
  case PredefinedExpr::Function:
    OF.emitSimpleVariant("Function");
    break;
  case PredefinedExpr::LFunction:
    OF.emitSimpleVariant("LFunction");
    break;
  case PredefinedExpr::FuncDName:
    OF.emitSimpleVariant("FuncDName");
    break;
  case PredefinedExpr::FuncSig:
    OF.emitSimpleVariant("FuncSig");
    break;
  case PredefinedExpr::PrettyFunction:
    OF.emitSimpleVariant("PrettyFunction");
    break;
  case PredefinedExpr::PrettyFunctionNoVirtual:
    OF.emitSimpleVariant("PrettyFunctionNoVirtual");
    break;
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CharacterLiteralTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define character_literal_tuple expr_tuple * int
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCharacterLiteral(
    const CharacterLiteral *Node) {
  VisitExpr(Node);
  OF.emitInteger(Node->getValue());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::IntegerLiteralTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define integer_literal_tuple expr_tuple * integer_literal_info
//@atd type integer_literal_info = {
//@atd   ~is_signed : bool;
//@atd   bitwidth : int;
//@atd   value : string;
//@atd } <ocaml field_prefix="ili_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitIntegerLiteral(const IntegerLiteral *Node) {
  VisitExpr(Node);

  bool IsSigned = Node->getType()->isSignedIntegerType();
  ObjectScope Scope(OF, 2 + IsSigned);

  OF.emitFlag("is_signed", IsSigned);
  OF.emitTag("bitwidth");
  OF.emitInteger(Node->getValue().getBitWidth());
  OF.emitTag("value");
  OF.emitString(Node->getValue().toString(10, IsSigned));
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FloatingLiteralTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define floating_literal_tuple expr_tuple * string
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFloatingLiteral(const FloatingLiteral *Node) {
  VisitExpr(Node);
  llvm::SmallString<20> buf;
  Node->getValue().toString(buf);
  OF.emitString(buf.str());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::StringLiteralTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define string_literal_tuple expr_tuple * string list
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitStringLiteral(const StringLiteral *Str) {
  VisitExpr(Str);
  size_t n_chunks;
  if (Str->getByteLength() == 0) {
    n_chunks = 1;
  } else {
    n_chunks = 1 + ((Str->getByteLength() - 1) / Options.maxStringSize);
  }
  ArrayScope Scope(OF, n_chunks);
  for (size_t i = 0; i < n_chunks; ++i) {
    OF.emitString(Str->getBytes().substr(i * Options.maxStringSize,
                                         Options.maxStringSize));
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::UnaryOperatorTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define unary_operator_tuple expr_tuple * unary_operator_info
//@atd type unary_operator_info = {
//@atd   kind : unary_operator_kind;
//@atd   ~is_postfix : bool;
//@atd } <ocaml field_prefix="uoi_">
//@atd type unary_operator_kind = [


//===--- OperationKinds.def - Operations Database ---------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file enumerates the different kinds of operations that can be
// performed by various expressions.
//
//===----------------------------------------------------------------------===//
//
/// @file OperationKinds.def
///
/// In this file, each of the C/C++ operations is enumerated CAST_OPERATION,
/// BINARY_OPERATION or UNARY_OPERATION macro, each of which can be specified by
/// the code including this file.
///
/// Macros had one or two arguments:
///
/// Name: The name of the operation. Name (prefixed with CK_, UO_ or BO_) will
/// be the name of the corresponding enumerator (see OperationsKinds.h).
///
/// Spelling: A string that provides a canonical spelling for the operation.













//===- Cast Operations  ---------------------------------------------------===//

/// CK_Dependent - A conversion which cannot yet be analyzed because
/// either the expression or target type is dependent.  These are
/// created only for explicit casts; dependent ASTs aren't required
/// to even approximately type-check.
///   (T*) malloc(sizeof(T))
///   reinterpret_cast<intptr_t>(A<T>::alloc());


/// CK_BitCast - A conversion which causes a bit pattern of one type
/// to be reinterpreted as a bit pattern of another type.  Generally
/// the operands must have equivalent size and unrelated types.
///
/// The pointer conversion char* -> int* is a bitcast.  A conversion
/// from any pointer type to a C pointer type is a bitcast unless
/// it's actually BaseToDerived or DerivedToBase.  A conversion to a
/// block pointer or ObjC pointer type is a bitcast only if the
/// operand has the same type kind; otherwise, it's one of the
/// specialized casts below.
///
/// Vector coercions are bitcasts.


/// CK_LValueBitCast - A conversion which reinterprets the address of
/// an l-value as an l-value of a different kind.  Used for
/// reinterpret_casts of l-value expressions to reference types.
///    bool b; reinterpret_cast<char&>(b) = 'a';


/// CK_LValueToRValue - A conversion which causes the extraction of
/// an r-value from the operand gl-value.  The result of an r-value
/// conversion is always unqualified.


/// CK_NoOp - A conversion which does not affect the type other than
/// (possibly) adding qualifiers.
///   int    -> int
///   char** -> const char * const *


/// CK_BaseToDerived - A conversion from a C++ class pointer/reference
/// to a derived class pointer/reference.
///   B *b = static_cast<B*>(a);


/// CK_DerivedToBase - A conversion from a C++ class pointer
/// to a base class pointer.
///   A *a = new B();


/// CK_UncheckedDerivedToBase - A conversion from a C++ class
/// pointer/reference to a base class that can assume that the
/// derived pointer is not null.
///   const A &a = B();
///   b->method_from_a();


/// CK_Dynamic - A C++ dynamic_cast.


/// CK_ToUnion - The GCC cast-to-union extension.
///   int   -> union { int x; float y; }
///   float -> union { int x; float y; }


/// CK_ArrayToPointerDecay - Array to pointer decay.
///   int[10] -> int*
///   char[5][6] -> char(*)[6]


/// CK_FunctionToPointerDecay - Function to pointer decay.
///   void(int) -> void(*)(int)


/// CK_NullToPointer - Null pointer constant to pointer, ObjC
/// pointer, or block pointer.
///   (void*) 0
///   void (^block)() = 0;


/// CK_NullToMemberPointer - Null pointer constant to member pointer.
///   int A::*mptr = 0;
///   int (A::*fptr)(int) = nullptr;


/// CK_BaseToDerivedMemberPointer - Member pointer in base class to
/// member pointer in derived class.
///   int B::*mptr = &A::member;


/// CK_DerivedToBaseMemberPointer - Member pointer in derived class to
/// member pointer in base class.
///   int A::*mptr = static_cast<int A::*>(&B::member);


/// CK_MemberPointerToBoolean - Member pointer to boolean.  A check
/// against the null member pointer.


/// CK_ReinterpretMemberPointer - Reinterpret a member pointer as a
/// different kind of member pointer.  C++ forbids this from
/// crossing between function and object types, but otherwise does
/// not restrict it.  However, the only operation that is permitted
/// on a "punned" member pointer is casting it back to the original
/// type, which is required to be a lossless operation (although
/// many ABIs do not guarantee this on all possible intermediate types).


/// CK_UserDefinedConversion - Conversion using a user defined type
/// conversion function.
///    struct A { operator int(); }; int i = int(A());


/// CK_ConstructorConversion - Conversion by constructor.
///    struct A { A(int); }; A a = A(10);


/// CK_IntegralToPointer - Integral to pointer.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (char*) 0x1001aab0
///    reinterpret_cast<int*>(0)


/// CK_PointerToIntegral - Pointer to integral.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (intptr_t) "help!"


/// CK_PointerToBoolean - Pointer to boolean conversion.  A check
/// against null.  Applies to normal, ObjC, and block pointers.


/// CK_ToVoid - Cast to void, discarding the computed value.
///    (void) malloc(2048)


/// CK_VectorSplat - A conversion from an arithmetic type to a
/// vector of that element type.  Fills all elements ("splats") with
/// the source value.
///    __attribute__((ext_vector_type(4))) int v = 5;


/// CK_IntegralCast - A cast between integral types (other than to
/// boolean).  Variously a bitcast, a truncation, a sign-extension,
/// or a zero-extension.
///    long l = 5;
///    (unsigned) i


/// CK_IntegralToBoolean - Integral to boolean.  A check against zero.
///    (bool) i


/// CK_IntegralToFloating - Integral to floating point.
///    float f = i;


/// CK_FloatingToIntegral - Floating point to integral.  Rounds
/// towards zero, discarding any fractional component.
///    (int) f


/// CK_FloatingToBoolean - Floating point to boolean.
///    (bool) f


// CK_BooleanToSignedIntegral - Convert a boolean to -1 or 0 for true and
// false, respectively.


/// CK_FloatingCast - Casting between floating types of different size.
///    (double) f
///    (float) ld


/// CK_CPointerToObjCPointerCast - Casting a C pointer kind to an
/// Objective-C pointer.


/// CK_BlockPointerToObjCPointerCast - Casting a block pointer to an
/// ObjC pointer.


/// CK_AnyPointerToBlockPointerCast - Casting any non-block pointer
/// to a block pointer.  Block-to-block casts are bitcasts.


/// \brief Converting between two Objective-C object types, which
/// can occur when performing reference binding to an Objective-C
/// object.


/// \brief A conversion of a floating point real to a floating point
/// complex of the original type.  Injects the value as the real
/// component with a zero imaginary component.
///   float -> _Complex float


/// \brief Converts a floating point complex to floating point real
/// of the source's element type.  Just discards the imaginary
/// component.
///   _Complex long double -> long double


/// \brief Converts a floating point complex to bool by comparing
/// against 0+0i.


/// \brief Converts between different floating point complex types.
///   _Complex float -> _Complex double


/// \brief Converts from a floating complex to an integral complex.
///   _Complex float -> _Complex int


/// \brief Converts from an integral real to an integral complex
/// whose element type matches the source.  Injects the value as
/// the real component with a zero imaginary component.
///   long -> _Complex long


/// \brief Converts an integral complex to an integral real of the
/// source's element type by discarding the imaginary component.
///   _Complex short -> short


/// \brief Converts an integral complex to bool by comparing against
/// 0+0i.


/// \brief Converts between different integral complex types.
///   _Complex char -> _Complex long long
///   _Complex unsigned int -> _Complex signed int


/// \brief Converts from an integral complex to a floating complex.
///   _Complex unsigned -> _Complex float


/// \brief [ARC] Produces a retainable object pointer so that it may
/// be consumed, e.g. by being passed to a consuming parameter.
/// Calls objc_retain.


/// \brief [ARC] Consumes a retainable object pointer that has just
/// been produced, e.g. as the return value of a retaining call.
/// Enters a cleanup to call objc_release at some indefinite time.


/// \brief [ARC] Reclaim a retainable object pointer object that may
/// have been produced and autoreleased as part of a function return
/// sequence.


/// \brief [ARC] Causes a value of block type to be copied to the
/// heap, if it is not already there.  A number of other operations
/// in ARC cause blocks to be copied; this is for cases where that
/// would not otherwise be guaranteed, such as when casting to a
/// non-block pointer type.


/// \brief Converts from _Atomic(T) to T.

/// \brief Converts from T to _Atomic(T).


/// \brief Causes a block literal to by copied to the heap and then 
/// autoreleased.
///
/// This particular cast kind is used for the conversion from a C++11
/// lambda expression to a block pointer.


// Convert a builtin function to a function pointer; only allowed in the
// callee of a call expression.


// Convert a zero value for OpenCL event_t initialization.


// Convert a zero value for OpenCL queue_t initialization.


// Convert a pointer to a different address space.


// Convert an integer initializer to an OpenCL sampler.


//===- Binary Operations  -------------------------------------------------===//
// Operators listed in order of precedence.
// Note that additions to this should also update the StmtVisitor class.

// [C++ 5.5] Pointer-to-member operators.


// [C99 6.5.5] Multiplicative operators.



// [C99 6.5.6] Additive operators.


// [C99 6.5.7] Bitwise shift operators.


// [C99 6.5.8] Relational operators.




// [C99 6.5.9] Equality operators.


// [C99 6.5.10] Bitwise AND operator.

// [C99 6.5.11] Bitwise XOR operator.

// [C99 6.5.12] Bitwise OR operator.

// [C99 6.5.13] Logical AND operator.

// [C99 6.5.14] Logical OR operator.

// [C99 6.5.16] Assignment operators.











// [C99 6.5.17] Comma operator.



//===- Unary Operations ---------------------------------------------------===//
// Note that additions to this should also update the StmtVisitor class.

// [C99 6.5.2.4] Postfix increment and decrement
//@atd | PostInc
//@atd | PostDec
// [C99 6.5.3.1] Prefix increment and decrement 
//@atd | PreInc
//@atd | PreDec
// [C99 6.5.3.2] Address and indirection
//@atd | AddrOf
//@atd | Deref
// [C99 6.5.3.3] Unary arithmetic 
//@atd | Plus
//@atd | Minus
//@atd | Not
//@atd | LNot
// "__real expr"/"__imag expr" Extension.
//@atd | Real
//@atd | Imag
// __extension__ marker.
//@atd | Extension
// [C++ Coroutines] co_await operator
//@atd | Coawait


//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitUnaryOperator(const UnaryOperator *Node) {
  VisitExpr(Node);

  bool IsPostfix = Node->isPostfix();
  ObjectScope Scope(OF, 1 + IsPostfix);

  OF.emitTag("kind");
  switch (Node->getOpcode()) {





//===--- OperationKinds.def - Operations Database ---------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file enumerates the different kinds of operations that can be
// performed by various expressions.
//
//===----------------------------------------------------------------------===//
//
/// @file OperationKinds.def
///
/// In this file, each of the C/C++ operations is enumerated CAST_OPERATION,
/// BINARY_OPERATION or UNARY_OPERATION macro, each of which can be specified by
/// the code including this file.
///
/// Macros had one or two arguments:
///
/// Name: The name of the operation. Name (prefixed with CK_, UO_ or BO_) will
/// be the name of the corresponding enumerator (see OperationsKinds.h).
///
/// Spelling: A string that provides a canonical spelling for the operation.













//===- Cast Operations  ---------------------------------------------------===//

/// CK_Dependent - A conversion which cannot yet be analyzed because
/// either the expression or target type is dependent.  These are
/// created only for explicit casts; dependent ASTs aren't required
/// to even approximately type-check.
///   (T*) malloc(sizeof(T))
///   reinterpret_cast<intptr_t>(A<T>::alloc());


/// CK_BitCast - A conversion which causes a bit pattern of one type
/// to be reinterpreted as a bit pattern of another type.  Generally
/// the operands must have equivalent size and unrelated types.
///
/// The pointer conversion char* -> int* is a bitcast.  A conversion
/// from any pointer type to a C pointer type is a bitcast unless
/// it's actually BaseToDerived or DerivedToBase.  A conversion to a
/// block pointer or ObjC pointer type is a bitcast only if the
/// operand has the same type kind; otherwise, it's one of the
/// specialized casts below.
///
/// Vector coercions are bitcasts.


/// CK_LValueBitCast - A conversion which reinterprets the address of
/// an l-value as an l-value of a different kind.  Used for
/// reinterpret_casts of l-value expressions to reference types.
///    bool b; reinterpret_cast<char&>(b) = 'a';


/// CK_LValueToRValue - A conversion which causes the extraction of
/// an r-value from the operand gl-value.  The result of an r-value
/// conversion is always unqualified.


/// CK_NoOp - A conversion which does not affect the type other than
/// (possibly) adding qualifiers.
///   int    -> int
///   char** -> const char * const *


/// CK_BaseToDerived - A conversion from a C++ class pointer/reference
/// to a derived class pointer/reference.
///   B *b = static_cast<B*>(a);


/// CK_DerivedToBase - A conversion from a C++ class pointer
/// to a base class pointer.
///   A *a = new B();


/// CK_UncheckedDerivedToBase - A conversion from a C++ class
/// pointer/reference to a base class that can assume that the
/// derived pointer is not null.
///   const A &a = B();
///   b->method_from_a();


/// CK_Dynamic - A C++ dynamic_cast.


/// CK_ToUnion - The GCC cast-to-union extension.
///   int   -> union { int x; float y; }
///   float -> union { int x; float y; }


/// CK_ArrayToPointerDecay - Array to pointer decay.
///   int[10] -> int*
///   char[5][6] -> char(*)[6]


/// CK_FunctionToPointerDecay - Function to pointer decay.
///   void(int) -> void(*)(int)


/// CK_NullToPointer - Null pointer constant to pointer, ObjC
/// pointer, or block pointer.
///   (void*) 0
///   void (^block)() = 0;


/// CK_NullToMemberPointer - Null pointer constant to member pointer.
///   int A::*mptr = 0;
///   int (A::*fptr)(int) = nullptr;


/// CK_BaseToDerivedMemberPointer - Member pointer in base class to
/// member pointer in derived class.
///   int B::*mptr = &A::member;


/// CK_DerivedToBaseMemberPointer - Member pointer in derived class to
/// member pointer in base class.
///   int A::*mptr = static_cast<int A::*>(&B::member);


/// CK_MemberPointerToBoolean - Member pointer to boolean.  A check
/// against the null member pointer.


/// CK_ReinterpretMemberPointer - Reinterpret a member pointer as a
/// different kind of member pointer.  C++ forbids this from
/// crossing between function and object types, but otherwise does
/// not restrict it.  However, the only operation that is permitted
/// on a "punned" member pointer is casting it back to the original
/// type, which is required to be a lossless operation (although
/// many ABIs do not guarantee this on all possible intermediate types).


/// CK_UserDefinedConversion - Conversion using a user defined type
/// conversion function.
///    struct A { operator int(); }; int i = int(A());


/// CK_ConstructorConversion - Conversion by constructor.
///    struct A { A(int); }; A a = A(10);


/// CK_IntegralToPointer - Integral to pointer.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (char*) 0x1001aab0
///    reinterpret_cast<int*>(0)


/// CK_PointerToIntegral - Pointer to integral.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (intptr_t) "help!"


/// CK_PointerToBoolean - Pointer to boolean conversion.  A check
/// against null.  Applies to normal, ObjC, and block pointers.


/// CK_ToVoid - Cast to void, discarding the computed value.
///    (void) malloc(2048)


/// CK_VectorSplat - A conversion from an arithmetic type to a
/// vector of that element type.  Fills all elements ("splats") with
/// the source value.
///    __attribute__((ext_vector_type(4))) int v = 5;


/// CK_IntegralCast - A cast between integral types (other than to
/// boolean).  Variously a bitcast, a truncation, a sign-extension,
/// or a zero-extension.
///    long l = 5;
///    (unsigned) i


/// CK_IntegralToBoolean - Integral to boolean.  A check against zero.
///    (bool) i


/// CK_IntegralToFloating - Integral to floating point.
///    float f = i;


/// CK_FloatingToIntegral - Floating point to integral.  Rounds
/// towards zero, discarding any fractional component.
///    (int) f


/// CK_FloatingToBoolean - Floating point to boolean.
///    (bool) f


// CK_BooleanToSignedIntegral - Convert a boolean to -1 or 0 for true and
// false, respectively.


/// CK_FloatingCast - Casting between floating types of different size.
///    (double) f
///    (float) ld


/// CK_CPointerToObjCPointerCast - Casting a C pointer kind to an
/// Objective-C pointer.


/// CK_BlockPointerToObjCPointerCast - Casting a block pointer to an
/// ObjC pointer.


/// CK_AnyPointerToBlockPointerCast - Casting any non-block pointer
/// to a block pointer.  Block-to-block casts are bitcasts.


/// \brief Converting between two Objective-C object types, which
/// can occur when performing reference binding to an Objective-C
/// object.


/// \brief A conversion of a floating point real to a floating point
/// complex of the original type.  Injects the value as the real
/// component with a zero imaginary component.
///   float -> _Complex float


/// \brief Converts a floating point complex to floating point real
/// of the source's element type.  Just discards the imaginary
/// component.
///   _Complex long double -> long double


/// \brief Converts a floating point complex to bool by comparing
/// against 0+0i.


/// \brief Converts between different floating point complex types.
///   _Complex float -> _Complex double


/// \brief Converts from a floating complex to an integral complex.
///   _Complex float -> _Complex int


/// \brief Converts from an integral real to an integral complex
/// whose element type matches the source.  Injects the value as
/// the real component with a zero imaginary component.
///   long -> _Complex long


/// \brief Converts an integral complex to an integral real of the
/// source's element type by discarding the imaginary component.
///   _Complex short -> short


/// \brief Converts an integral complex to bool by comparing against
/// 0+0i.


/// \brief Converts between different integral complex types.
///   _Complex char -> _Complex long long
///   _Complex unsigned int -> _Complex signed int


/// \brief Converts from an integral complex to a floating complex.
///   _Complex unsigned -> _Complex float


/// \brief [ARC] Produces a retainable object pointer so that it may
/// be consumed, e.g. by being passed to a consuming parameter.
/// Calls objc_retain.


/// \brief [ARC] Consumes a retainable object pointer that has just
/// been produced, e.g. as the return value of a retaining call.
/// Enters a cleanup to call objc_release at some indefinite time.


/// \brief [ARC] Reclaim a retainable object pointer object that may
/// have been produced and autoreleased as part of a function return
/// sequence.


/// \brief [ARC] Causes a value of block type to be copied to the
/// heap, if it is not already there.  A number of other operations
/// in ARC cause blocks to be copied; this is for cases where that
/// would not otherwise be guaranteed, such as when casting to a
/// non-block pointer type.


/// \brief Converts from _Atomic(T) to T.

/// \brief Converts from T to _Atomic(T).


/// \brief Causes a block literal to by copied to the heap and then 
/// autoreleased.
///
/// This particular cast kind is used for the conversion from a C++11
/// lambda expression to a block pointer.


// Convert a builtin function to a function pointer; only allowed in the
// callee of a call expression.


// Convert a zero value for OpenCL event_t initialization.


// Convert a zero value for OpenCL queue_t initialization.


// Convert a pointer to a different address space.


// Convert an integer initializer to an OpenCL sampler.


//===- Binary Operations  -------------------------------------------------===//
// Operators listed in order of precedence.
// Note that additions to this should also update the StmtVisitor class.

// [C++ 5.5] Pointer-to-member operators.


// [C99 6.5.5] Multiplicative operators.



// [C99 6.5.6] Additive operators.


// [C99 6.5.7] Bitwise shift operators.


// [C99 6.5.8] Relational operators.




// [C99 6.5.9] Equality operators.


// [C99 6.5.10] Bitwise AND operator.

// [C99 6.5.11] Bitwise XOR operator.

// [C99 6.5.12] Bitwise OR operator.

// [C99 6.5.13] Logical AND operator.

// [C99 6.5.14] Logical OR operator.

// [C99 6.5.16] Assignment operators.











// [C99 6.5.17] Comma operator.



//===- Unary Operations ---------------------------------------------------===//
// Note that additions to this should also update the StmtVisitor class.

// [C99 6.5.2.4] Postfix increment and decrement
case UO_##PostInc: OF.emitSimpleVariant(#PostInc); break;
case UO_##PostDec: OF.emitSimpleVariant(#PostDec); break;
// [C99 6.5.3.1] Prefix increment and decrement 
case UO_##PreInc: OF.emitSimpleVariant(#PreInc); break;
case UO_##PreDec: OF.emitSimpleVariant(#PreDec); break;
// [C99 6.5.3.2] Address and indirection
case UO_##AddrOf: OF.emitSimpleVariant(#AddrOf); break;
case UO_##Deref: OF.emitSimpleVariant(#Deref); break;
// [C99 6.5.3.3] Unary arithmetic 
case UO_##Plus: OF.emitSimpleVariant(#Plus); break;
case UO_##Minus: OF.emitSimpleVariant(#Minus); break;
case UO_##Not: OF.emitSimpleVariant(#Not); break;
case UO_##LNot: OF.emitSimpleVariant(#LNot); break;
// "__real expr"/"__imag expr" Extension.
case UO_##Real: OF.emitSimpleVariant(#Real); break;
case UO_##Imag: OF.emitSimpleVariant(#Imag); break;
// __extension__ marker.
case UO_##Extension: OF.emitSimpleVariant(#Extension); break;
// [C++ Coroutines] co_await operator
case UO_##Coawait: OF.emitSimpleVariant(#Coawait); break;


  }
  OF.emitFlag("is_postfix", IsPostfix);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::UnaryExprOrTypeTraitExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define unary_expr_or_type_trait_expr_tuple expr_tuple * unary_expr_or_type_trait_expr_info
//@atd type unary_expr_or_type_trait_expr_info = {
//@atd   kind : unary_expr_or_type_trait_kind;
//@atd   ?qual_type : qual_type option
//@atd } <ocaml field_prefix="uttei_">
//@atd type unary_expr_or_type_trait_kind = [ SizeOfWithSize of int | SizeOf | AlignOf |
//@atd   VecStep | OpenMPRequiredSimdAlign ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitUnaryExprOrTypeTraitExpr(
    const UnaryExprOrTypeTraitExpr *Node) {
  VisitExpr(Node);

  bool HasType = Node->isArgumentType();
  ObjectScope Scope(OF, 1 + HasType); // not covered by tests

  OF.emitTag("kind");
  switch (Node->getKind()) {
  case UETT_SizeOf: {
    const Type *ArgType = Node->getTypeOfArgument().getTypePtr();
    if (hasMeaningfulTypeInfo(ArgType)) {
      VariantScope Scope(OF, "SizeOfWithSize");
      OF.emitInteger(Context.getTypeInfo(ArgType).Width / 8);
    } else {
      OF.emitSimpleVariant("SizeOf");
    }
    break;
  }
  case UETT_AlignOf:
    OF.emitSimpleVariant("AlignOf");
    break;
  case UETT_VecStep:
    OF.emitSimpleVariant("VecStep");
    break;
  case UETT_OpenMPRequiredSimdAlign:
    OF.emitSimpleVariant("OpenMPRequiredSimdAlign");
    break;
  }
  if (HasType) {
    OF.emitTag("qual_type");
    dumpQualType(Node->getArgumentType());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::MemberExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define member_expr_tuple expr_tuple * member_expr_info
//@atd type member_expr_info = {
//@atd   ~is_arrow : bool;
//@atd   ~performs_virtual_dispatch : bool;
//@atd   name : named_decl_info;
//@atd   decl_ref : decl_ref
//@atd } <ocaml field_prefix="mei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitMemberExpr(const MemberExpr *Node) {
  VisitExpr(Node);

  bool IsArrow = Node->isArrow();
  LangOptions LO;
  // ignore real lang options - it will get it wrong when compiling
  // with -fapple-kext flag
  bool PerformsVirtualDispatch = Node->performsVirtualDispatch(LO);
  ObjectScope Scope(OF, 2 + IsArrow + PerformsVirtualDispatch);

  OF.emitFlag("is_arrow", IsArrow);
  OF.emitFlag("performs_virtual_dispatch", PerformsVirtualDispatch);
  OF.emitTag("name");
  ValueDecl *memberDecl = Node->getMemberDecl();
  dumpName(*memberDecl);
  OF.emitTag("decl_ref");
  dumpDeclRef(*memberDecl);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ExtVectorElementExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define ext_vector_element_tuple expr_tuple * string
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitExtVectorElementExpr(
    const ExtVectorElementExpr *Node) {
  VisitExpr(Node);
  OF.emitString(Node->getAccessor().getNameStart());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::BinaryOperatorTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define binary_operator_tuple expr_tuple * binary_operator_info
//@atd type binary_operator_info = {
//@atd   kind : binary_operator_kind
//@atd } <ocaml field_prefix="boi_">
//@atd type binary_operator_kind = [


//===--- OperationKinds.def - Operations Database ---------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file enumerates the different kinds of operations that can be
// performed by various expressions.
//
//===----------------------------------------------------------------------===//
//
/// @file OperationKinds.def
///
/// In this file, each of the C/C++ operations is enumerated CAST_OPERATION,
/// BINARY_OPERATION or UNARY_OPERATION macro, each of which can be specified by
/// the code including this file.
///
/// Macros had one or two arguments:
///
/// Name: The name of the operation. Name (prefixed with CK_, UO_ or BO_) will
/// be the name of the corresponding enumerator (see OperationsKinds.h).
///
/// Spelling: A string that provides a canonical spelling for the operation.













//===- Cast Operations  ---------------------------------------------------===//

/// CK_Dependent - A conversion which cannot yet be analyzed because
/// either the expression or target type is dependent.  These are
/// created only for explicit casts; dependent ASTs aren't required
/// to even approximately type-check.
///   (T*) malloc(sizeof(T))
///   reinterpret_cast<intptr_t>(A<T>::alloc());


/// CK_BitCast - A conversion which causes a bit pattern of one type
/// to be reinterpreted as a bit pattern of another type.  Generally
/// the operands must have equivalent size and unrelated types.
///
/// The pointer conversion char* -> int* is a bitcast.  A conversion
/// from any pointer type to a C pointer type is a bitcast unless
/// it's actually BaseToDerived or DerivedToBase.  A conversion to a
/// block pointer or ObjC pointer type is a bitcast only if the
/// operand has the same type kind; otherwise, it's one of the
/// specialized casts below.
///
/// Vector coercions are bitcasts.


/// CK_LValueBitCast - A conversion which reinterprets the address of
/// an l-value as an l-value of a different kind.  Used for
/// reinterpret_casts of l-value expressions to reference types.
///    bool b; reinterpret_cast<char&>(b) = 'a';


/// CK_LValueToRValue - A conversion which causes the extraction of
/// an r-value from the operand gl-value.  The result of an r-value
/// conversion is always unqualified.


/// CK_NoOp - A conversion which does not affect the type other than
/// (possibly) adding qualifiers.
///   int    -> int
///   char** -> const char * const *


/// CK_BaseToDerived - A conversion from a C++ class pointer/reference
/// to a derived class pointer/reference.
///   B *b = static_cast<B*>(a);


/// CK_DerivedToBase - A conversion from a C++ class pointer
/// to a base class pointer.
///   A *a = new B();


/// CK_UncheckedDerivedToBase - A conversion from a C++ class
/// pointer/reference to a base class that can assume that the
/// derived pointer is not null.
///   const A &a = B();
///   b->method_from_a();


/// CK_Dynamic - A C++ dynamic_cast.


/// CK_ToUnion - The GCC cast-to-union extension.
///   int   -> union { int x; float y; }
///   float -> union { int x; float y; }


/// CK_ArrayToPointerDecay - Array to pointer decay.
///   int[10] -> int*
///   char[5][6] -> char(*)[6]


/// CK_FunctionToPointerDecay - Function to pointer decay.
///   void(int) -> void(*)(int)


/// CK_NullToPointer - Null pointer constant to pointer, ObjC
/// pointer, or block pointer.
///   (void*) 0
///   void (^block)() = 0;


/// CK_NullToMemberPointer - Null pointer constant to member pointer.
///   int A::*mptr = 0;
///   int (A::*fptr)(int) = nullptr;


/// CK_BaseToDerivedMemberPointer - Member pointer in base class to
/// member pointer in derived class.
///   int B::*mptr = &A::member;


/// CK_DerivedToBaseMemberPointer - Member pointer in derived class to
/// member pointer in base class.
///   int A::*mptr = static_cast<int A::*>(&B::member);


/// CK_MemberPointerToBoolean - Member pointer to boolean.  A check
/// against the null member pointer.


/// CK_ReinterpretMemberPointer - Reinterpret a member pointer as a
/// different kind of member pointer.  C++ forbids this from
/// crossing between function and object types, but otherwise does
/// not restrict it.  However, the only operation that is permitted
/// on a "punned" member pointer is casting it back to the original
/// type, which is required to be a lossless operation (although
/// many ABIs do not guarantee this on all possible intermediate types).


/// CK_UserDefinedConversion - Conversion using a user defined type
/// conversion function.
///    struct A { operator int(); }; int i = int(A());


/// CK_ConstructorConversion - Conversion by constructor.
///    struct A { A(int); }; A a = A(10);


/// CK_IntegralToPointer - Integral to pointer.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (char*) 0x1001aab0
///    reinterpret_cast<int*>(0)


/// CK_PointerToIntegral - Pointer to integral.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (intptr_t) "help!"


/// CK_PointerToBoolean - Pointer to boolean conversion.  A check
/// against null.  Applies to normal, ObjC, and block pointers.


/// CK_ToVoid - Cast to void, discarding the computed value.
///    (void) malloc(2048)


/// CK_VectorSplat - A conversion from an arithmetic type to a
/// vector of that element type.  Fills all elements ("splats") with
/// the source value.
///    __attribute__((ext_vector_type(4))) int v = 5;


/// CK_IntegralCast - A cast between integral types (other than to
/// boolean).  Variously a bitcast, a truncation, a sign-extension,
/// or a zero-extension.
///    long l = 5;
///    (unsigned) i


/// CK_IntegralToBoolean - Integral to boolean.  A check against zero.
///    (bool) i


/// CK_IntegralToFloating - Integral to floating point.
///    float f = i;


/// CK_FloatingToIntegral - Floating point to integral.  Rounds
/// towards zero, discarding any fractional component.
///    (int) f


/// CK_FloatingToBoolean - Floating point to boolean.
///    (bool) f


// CK_BooleanToSignedIntegral - Convert a boolean to -1 or 0 for true and
// false, respectively.


/// CK_FloatingCast - Casting between floating types of different size.
///    (double) f
///    (float) ld


/// CK_CPointerToObjCPointerCast - Casting a C pointer kind to an
/// Objective-C pointer.


/// CK_BlockPointerToObjCPointerCast - Casting a block pointer to an
/// ObjC pointer.


/// CK_AnyPointerToBlockPointerCast - Casting any non-block pointer
/// to a block pointer.  Block-to-block casts are bitcasts.


/// \brief Converting between two Objective-C object types, which
/// can occur when performing reference binding to an Objective-C
/// object.


/// \brief A conversion of a floating point real to a floating point
/// complex of the original type.  Injects the value as the real
/// component with a zero imaginary component.
///   float -> _Complex float


/// \brief Converts a floating point complex to floating point real
/// of the source's element type.  Just discards the imaginary
/// component.
///   _Complex long double -> long double


/// \brief Converts a floating point complex to bool by comparing
/// against 0+0i.


/// \brief Converts between different floating point complex types.
///   _Complex float -> _Complex double


/// \brief Converts from a floating complex to an integral complex.
///   _Complex float -> _Complex int


/// \brief Converts from an integral real to an integral complex
/// whose element type matches the source.  Injects the value as
/// the real component with a zero imaginary component.
///   long -> _Complex long


/// \brief Converts an integral complex to an integral real of the
/// source's element type by discarding the imaginary component.
///   _Complex short -> short


/// \brief Converts an integral complex to bool by comparing against
/// 0+0i.


/// \brief Converts between different integral complex types.
///   _Complex char -> _Complex long long
///   _Complex unsigned int -> _Complex signed int


/// \brief Converts from an integral complex to a floating complex.
///   _Complex unsigned -> _Complex float


/// \brief [ARC] Produces a retainable object pointer so that it may
/// be consumed, e.g. by being passed to a consuming parameter.
/// Calls objc_retain.


/// \brief [ARC] Consumes a retainable object pointer that has just
/// been produced, e.g. as the return value of a retaining call.
/// Enters a cleanup to call objc_release at some indefinite time.


/// \brief [ARC] Reclaim a retainable object pointer object that may
/// have been produced and autoreleased as part of a function return
/// sequence.


/// \brief [ARC] Causes a value of block type to be copied to the
/// heap, if it is not already there.  A number of other operations
/// in ARC cause blocks to be copied; this is for cases where that
/// would not otherwise be guaranteed, such as when casting to a
/// non-block pointer type.


/// \brief Converts from _Atomic(T) to T.

/// \brief Converts from T to _Atomic(T).


/// \brief Causes a block literal to by copied to the heap and then 
/// autoreleased.
///
/// This particular cast kind is used for the conversion from a C++11
/// lambda expression to a block pointer.


// Convert a builtin function to a function pointer; only allowed in the
// callee of a call expression.


// Convert a zero value for OpenCL event_t initialization.


// Convert a zero value for OpenCL queue_t initialization.


// Convert a pointer to a different address space.


// Convert an integer initializer to an OpenCL sampler.


//===- Binary Operations  -------------------------------------------------===//
// Operators listed in order of precedence.
// Note that additions to this should also update the StmtVisitor class.

// [C++ 5.5] Pointer-to-member operators.
//@atd | PtrMemD
//@atd | PtrMemI
// [C99 6.5.5] Multiplicative operators.
//@atd | Mul
//@atd | Div
//@atd | Rem
// [C99 6.5.6] Additive operators.
//@atd | Add
//@atd | Sub
// [C99 6.5.7] Bitwise shift operators.
//@atd | Shl
//@atd | Shr
// [C99 6.5.8] Relational operators.
//@atd | LT
//@atd | GT
//@atd | LE
//@atd | GE
// [C99 6.5.9] Equality operators.
//@atd | EQ
//@atd | NE
// [C99 6.5.10] Bitwise AND operator.
//@atd | And
// [C99 6.5.11] Bitwise XOR operator.
//@atd | Xor
// [C99 6.5.12] Bitwise OR operator.
//@atd | Or
// [C99 6.5.13] Logical AND operator.
//@atd | LAnd
// [C99 6.5.14] Logical OR operator.
//@atd | LOr
// [C99 6.5.16] Assignment operators.
//@atd | Assign
//@atd | MulAssign
//@atd | DivAssign
//@atd | RemAssign
//@atd | AddAssign
//@atd | SubAssign
//@atd | ShlAssign
//@atd | ShrAssign
//@atd | AndAssign
//@atd | XorAssign
//@atd | OrAssign
// [C99 6.5.17] Comma operator.
//@atd | Comma


//===- Unary Operations ---------------------------------------------------===//
// Note that additions to this should also update the StmtVisitor class.

// [C99 6.5.2.4] Postfix increment and decrement


// [C99 6.5.3.1] Prefix increment and decrement 


// [C99 6.5.3.2] Address and indirection


// [C99 6.5.3.3] Unary arithmetic 




// "__real expr"/"__imag expr" Extension.


// __extension__ marker.

// [C++ Coroutines] co_await operator



//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitBinaryOperator(const BinaryOperator *Node) {
  VisitExpr(Node);
  ObjectScope Scope(OF, 1);
  OF.emitTag("kind");
  switch (Node->getOpcode()) {





//===--- OperationKinds.def - Operations Database ---------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file enumerates the different kinds of operations that can be
// performed by various expressions.
//
//===----------------------------------------------------------------------===//
//
/// @file OperationKinds.def
///
/// In this file, each of the C/C++ operations is enumerated CAST_OPERATION,
/// BINARY_OPERATION or UNARY_OPERATION macro, each of which can be specified by
/// the code including this file.
///
/// Macros had one or two arguments:
///
/// Name: The name of the operation. Name (prefixed with CK_, UO_ or BO_) will
/// be the name of the corresponding enumerator (see OperationsKinds.h).
///
/// Spelling: A string that provides a canonical spelling for the operation.













//===- Cast Operations  ---------------------------------------------------===//

/// CK_Dependent - A conversion which cannot yet be analyzed because
/// either the expression or target type is dependent.  These are
/// created only for explicit casts; dependent ASTs aren't required
/// to even approximately type-check.
///   (T*) malloc(sizeof(T))
///   reinterpret_cast<intptr_t>(A<T>::alloc());


/// CK_BitCast - A conversion which causes a bit pattern of one type
/// to be reinterpreted as a bit pattern of another type.  Generally
/// the operands must have equivalent size and unrelated types.
///
/// The pointer conversion char* -> int* is a bitcast.  A conversion
/// from any pointer type to a C pointer type is a bitcast unless
/// it's actually BaseToDerived or DerivedToBase.  A conversion to a
/// block pointer or ObjC pointer type is a bitcast only if the
/// operand has the same type kind; otherwise, it's one of the
/// specialized casts below.
///
/// Vector coercions are bitcasts.


/// CK_LValueBitCast - A conversion which reinterprets the address of
/// an l-value as an l-value of a different kind.  Used for
/// reinterpret_casts of l-value expressions to reference types.
///    bool b; reinterpret_cast<char&>(b) = 'a';


/// CK_LValueToRValue - A conversion which causes the extraction of
/// an r-value from the operand gl-value.  The result of an r-value
/// conversion is always unqualified.


/// CK_NoOp - A conversion which does not affect the type other than
/// (possibly) adding qualifiers.
///   int    -> int
///   char** -> const char * const *


/// CK_BaseToDerived - A conversion from a C++ class pointer/reference
/// to a derived class pointer/reference.
///   B *b = static_cast<B*>(a);


/// CK_DerivedToBase - A conversion from a C++ class pointer
/// to a base class pointer.
///   A *a = new B();


/// CK_UncheckedDerivedToBase - A conversion from a C++ class
/// pointer/reference to a base class that can assume that the
/// derived pointer is not null.
///   const A &a = B();
///   b->method_from_a();


/// CK_Dynamic - A C++ dynamic_cast.


/// CK_ToUnion - The GCC cast-to-union extension.
///   int   -> union { int x; float y; }
///   float -> union { int x; float y; }


/// CK_ArrayToPointerDecay - Array to pointer decay.
///   int[10] -> int*
///   char[5][6] -> char(*)[6]


/// CK_FunctionToPointerDecay - Function to pointer decay.
///   void(int) -> void(*)(int)


/// CK_NullToPointer - Null pointer constant to pointer, ObjC
/// pointer, or block pointer.
///   (void*) 0
///   void (^block)() = 0;


/// CK_NullToMemberPointer - Null pointer constant to member pointer.
///   int A::*mptr = 0;
///   int (A::*fptr)(int) = nullptr;


/// CK_BaseToDerivedMemberPointer - Member pointer in base class to
/// member pointer in derived class.
///   int B::*mptr = &A::member;


/// CK_DerivedToBaseMemberPointer - Member pointer in derived class to
/// member pointer in base class.
///   int A::*mptr = static_cast<int A::*>(&B::member);


/// CK_MemberPointerToBoolean - Member pointer to boolean.  A check
/// against the null member pointer.


/// CK_ReinterpretMemberPointer - Reinterpret a member pointer as a
/// different kind of member pointer.  C++ forbids this from
/// crossing between function and object types, but otherwise does
/// not restrict it.  However, the only operation that is permitted
/// on a "punned" member pointer is casting it back to the original
/// type, which is required to be a lossless operation (although
/// many ABIs do not guarantee this on all possible intermediate types).


/// CK_UserDefinedConversion - Conversion using a user defined type
/// conversion function.
///    struct A { operator int(); }; int i = int(A());


/// CK_ConstructorConversion - Conversion by constructor.
///    struct A { A(int); }; A a = A(10);


/// CK_IntegralToPointer - Integral to pointer.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (char*) 0x1001aab0
///    reinterpret_cast<int*>(0)


/// CK_PointerToIntegral - Pointer to integral.  A special kind of
/// reinterpreting conversion.  Applies to normal, ObjC, and block
/// pointers.
///    (intptr_t) "help!"


/// CK_PointerToBoolean - Pointer to boolean conversion.  A check
/// against null.  Applies to normal, ObjC, and block pointers.


/// CK_ToVoid - Cast to void, discarding the computed value.
///    (void) malloc(2048)


/// CK_VectorSplat - A conversion from an arithmetic type to a
/// vector of that element type.  Fills all elements ("splats") with
/// the source value.
///    __attribute__((ext_vector_type(4))) int v = 5;


/// CK_IntegralCast - A cast between integral types (other than to
/// boolean).  Variously a bitcast, a truncation, a sign-extension,
/// or a zero-extension.
///    long l = 5;
///    (unsigned) i


/// CK_IntegralToBoolean - Integral to boolean.  A check against zero.
///    (bool) i


/// CK_IntegralToFloating - Integral to floating point.
///    float f = i;


/// CK_FloatingToIntegral - Floating point to integral.  Rounds
/// towards zero, discarding any fractional component.
///    (int) f


/// CK_FloatingToBoolean - Floating point to boolean.
///    (bool) f


// CK_BooleanToSignedIntegral - Convert a boolean to -1 or 0 for true and
// false, respectively.


/// CK_FloatingCast - Casting between floating types of different size.
///    (double) f
///    (float) ld


/// CK_CPointerToObjCPointerCast - Casting a C pointer kind to an
/// Objective-C pointer.


/// CK_BlockPointerToObjCPointerCast - Casting a block pointer to an
/// ObjC pointer.


/// CK_AnyPointerToBlockPointerCast - Casting any non-block pointer
/// to a block pointer.  Block-to-block casts are bitcasts.


/// \brief Converting between two Objective-C object types, which
/// can occur when performing reference binding to an Objective-C
/// object.


/// \brief A conversion of a floating point real to a floating point
/// complex of the original type.  Injects the value as the real
/// component with a zero imaginary component.
///   float -> _Complex float


/// \brief Converts a floating point complex to floating point real
/// of the source's element type.  Just discards the imaginary
/// component.
///   _Complex long double -> long double


/// \brief Converts a floating point complex to bool by comparing
/// against 0+0i.


/// \brief Converts between different floating point complex types.
///   _Complex float -> _Complex double


/// \brief Converts from a floating complex to an integral complex.
///   _Complex float -> _Complex int


/// \brief Converts from an integral real to an integral complex
/// whose element type matches the source.  Injects the value as
/// the real component with a zero imaginary component.
///   long -> _Complex long


/// \brief Converts an integral complex to an integral real of the
/// source's element type by discarding the imaginary component.
///   _Complex short -> short


/// \brief Converts an integral complex to bool by comparing against
/// 0+0i.


/// \brief Converts between different integral complex types.
///   _Complex char -> _Complex long long
///   _Complex unsigned int -> _Complex signed int


/// \brief Converts from an integral complex to a floating complex.
///   _Complex unsigned -> _Complex float


/// \brief [ARC] Produces a retainable object pointer so that it may
/// be consumed, e.g. by being passed to a consuming parameter.
/// Calls objc_retain.


/// \brief [ARC] Consumes a retainable object pointer that has just
/// been produced, e.g. as the return value of a retaining call.
/// Enters a cleanup to call objc_release at some indefinite time.


/// \brief [ARC] Reclaim a retainable object pointer object that may
/// have been produced and autoreleased as part of a function return
/// sequence.


/// \brief [ARC] Causes a value of block type to be copied to the
/// heap, if it is not already there.  A number of other operations
/// in ARC cause blocks to be copied; this is for cases where that
/// would not otherwise be guaranteed, such as when casting to a
/// non-block pointer type.


/// \brief Converts from _Atomic(T) to T.

/// \brief Converts from T to _Atomic(T).


/// \brief Causes a block literal to by copied to the heap and then 
/// autoreleased.
///
/// This particular cast kind is used for the conversion from a C++11
/// lambda expression to a block pointer.


// Convert a builtin function to a function pointer; only allowed in the
// callee of a call expression.


// Convert a zero value for OpenCL event_t initialization.


// Convert a zero value for OpenCL queue_t initialization.


// Convert a pointer to a different address space.


// Convert an integer initializer to an OpenCL sampler.


//===- Binary Operations  -------------------------------------------------===//
// Operators listed in order of precedence.
// Note that additions to this should also update the StmtVisitor class.

// [C++ 5.5] Pointer-to-member operators.
case BO_##PtrMemD: OF.emitSimpleVariant(#PtrMemD); break;
case BO_##PtrMemI: OF.emitSimpleVariant(#PtrMemI); break;
// [C99 6.5.5] Multiplicative operators.
case BO_##Mul: OF.emitSimpleVariant(#Mul); break;
case BO_##Div: OF.emitSimpleVariant(#Div); break;
case BO_##Rem: OF.emitSimpleVariant(#Rem); break;
// [C99 6.5.6] Additive operators.
case BO_##Add: OF.emitSimpleVariant(#Add); break;
case BO_##Sub: OF.emitSimpleVariant(#Sub); break;
// [C99 6.5.7] Bitwise shift operators.
case BO_##Shl: OF.emitSimpleVariant(#Shl); break;
case BO_##Shr: OF.emitSimpleVariant(#Shr); break;
// [C99 6.5.8] Relational operators.
case BO_##LT: OF.emitSimpleVariant(#LT); break;
case BO_##GT: OF.emitSimpleVariant(#GT); break;
case BO_##LE: OF.emitSimpleVariant(#LE); break;
case BO_##GE: OF.emitSimpleVariant(#GE); break;
// [C99 6.5.9] Equality operators.
case BO_##EQ: OF.emitSimpleVariant(#EQ); break;
case BO_##NE: OF.emitSimpleVariant(#NE); break;
// [C99 6.5.10] Bitwise AND operator.
case BO_##And: OF.emitSimpleVariant(#And); break;
// [C99 6.5.11] Bitwise XOR operator.
case BO_##Xor: OF.emitSimpleVariant(#Xor); break;
// [C99 6.5.12] Bitwise OR operator.
case BO_##Or: OF.emitSimpleVariant(#Or); break;
// [C99 6.5.13] Logical AND operator.
case BO_##LAnd: OF.emitSimpleVariant(#LAnd); break;
// [C99 6.5.14] Logical OR operator.
case BO_##LOr: OF.emitSimpleVariant(#LOr); break;
// [C99 6.5.16] Assignment operators.
case BO_##Assign: OF.emitSimpleVariant(#Assign); break;
case BO_##MulAssign: OF.emitSimpleVariant(#MulAssign); break;
case BO_##DivAssign: OF.emitSimpleVariant(#DivAssign); break;
case BO_##RemAssign: OF.emitSimpleVariant(#RemAssign); break;
case BO_##AddAssign: OF.emitSimpleVariant(#AddAssign); break;
case BO_##SubAssign: OF.emitSimpleVariant(#SubAssign); break;
case BO_##ShlAssign: OF.emitSimpleVariant(#ShlAssign); break;
case BO_##ShrAssign: OF.emitSimpleVariant(#ShrAssign); break;
case BO_##AndAssign: OF.emitSimpleVariant(#AndAssign); break;
case BO_##XorAssign: OF.emitSimpleVariant(#XorAssign); break;
case BO_##OrAssign: OF.emitSimpleVariant(#OrAssign); break;
// [C99 6.5.17] Comma operator.
case BO_##Comma: OF.emitSimpleVariant(#Comma); break;


//===- Unary Operations ---------------------------------------------------===//
// Note that additions to this should also update the StmtVisitor class.

// [C99 6.5.2.4] Postfix increment and decrement


// [C99 6.5.3.1] Prefix increment and decrement 


// [C99 6.5.3.2] Address and indirection


// [C99 6.5.3.3] Unary arithmetic 




// "__real expr"/"__imag expr" Extension.


// __extension__ marker.

// [C++ Coroutines] co_await operator



  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CompoundAssignOperatorTupleSize() {
  return BinaryOperatorTupleSize() + 1;
}
//@atd #define compound_assign_operator_tuple binary_operator_tuple * compound_assign_operator_info
//@atd type compound_assign_operator_info = {
//@atd   lhs_type : qual_type;
//@atd   result_type : qual_type;
//@atd } <ocaml field_prefix="caoi_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCompoundAssignOperator(
    const CompoundAssignOperator *Node) {
  VisitBinaryOperator(Node);
  ObjectScope Scope(OF, 2); // not covered by tests
  OF.emitTag("lhs_type");
  dumpQualType(Node->getComputationLHSType());
  OF.emitTag("result_type");
  dumpQualType(Node->getComputationResultType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::BlockExprTupleSize() {
  return ExprTupleSize() + DeclTupleSize();
}
//@atd #define block_expr_tuple expr_tuple * decl
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitBlockExpr(const BlockExpr *Node) {
  VisitExpr(Node);
  dumpDecl(Node->getBlockDecl());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::OpaqueValueExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define opaque_value_expr_tuple expr_tuple * opaque_value_expr_info
//@atd type  opaque_value_expr_info = {
//@atd   ?source_expr : stmt option;
//@atd } <ocaml field_prefix="ovei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitOpaqueValueExpr(const OpaqueValueExpr *Node) {
  VisitExpr(Node);

  const Expr *Source = Node->getSourceExpr();
  ObjectScope Scope(OF, 0 + (bool)Source); // not covered by tests

  if (Source) {
    OF.emitTag("source_expr");
    dumpStmt(Source);
  }
}

// GNU extensions.

template <class ATDWriter>
int ASTExporter<ATDWriter>::AddrLabelExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define addr_label_expr_tuple expr_tuple * addr_label_expr_info
//@atd type addr_label_expr_info = {
//@atd   label : string;
//@atd   pointer : pointer;
//@atd } <ocaml field_prefix="alei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitAddrLabelExpr(const AddrLabelExpr *Node) {
  VisitExpr(Node);
  ObjectScope Scope(OF, 2); // not covered by tests
  OF.emitTag("label");
  OF.emitString(Node->getLabel()->getName());
  OF.emitTag("pointer");
  dumpPointer(Node->getLabel());
}

////===----------------------------------------------------------------------===//
//// C++ Expressions
////===----------------------------------------------------------------------===//

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXNamedCastExprTupleSize() {
  return ExplicitCastExprTupleSize() + 1;
}
//@atd #define cxx_named_cast_expr_tuple explicit_cast_expr_tuple * string
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXNamedCastExpr(
    const CXXNamedCastExpr *Node) {
  VisitExplicitCastExpr(Node);
  OF.emitString(Node->getCastName());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXBoolLiteralExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_bool_literal_expr_tuple expr_tuple * int
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXBoolLiteralExpr(
    const CXXBoolLiteralExpr *Node) {
  VisitExpr(Node);
  OF.emitInteger(Node->getValue());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXConstructExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_construct_expr_tuple expr_tuple * cxx_construct_expr_info
//@atd type cxx_construct_expr_info = {
//@atd   decl_ref : decl_ref;
//@atd   ~is_elidable : bool;
//@atd   ~requires_zero_initialization : bool;
//@atd } <ocaml field_prefix="xcei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXConstructExpr(
    const CXXConstructExpr *Node) {
  VisitExpr(Node);

  bool IsElidable = Node->isElidable();
  bool RequiresZeroInitialization = Node->requiresZeroInitialization();
  ObjectScope Scope(OF, 1 + IsElidable + RequiresZeroInitialization);

  OF.emitTag("decl_ref");
  dumpDeclRef(*Node->getConstructor());
  OF.emitFlag("is_elidable", IsElidable);
  OF.emitFlag("requires_zero_initialization", RequiresZeroInitialization);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXBindTemporaryExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_bind_temporary_expr_tuple expr_tuple * cxx_bind_temporary_expr_info
//@atd type cxx_bind_temporary_expr_info = {
//@atd   cxx_temporary : cxx_temporary;
//@atd } <ocaml field_prefix="xbtei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXBindTemporaryExpr(
    const CXXBindTemporaryExpr *Node) {
  VisitExpr(Node);
  ObjectScope Scope(OF, 1);
  OF.emitTag("cxx_temporary");
  dumpCXXTemporary(Node->getTemporary());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::MaterializeTemporaryExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define materialize_temporary_expr_tuple expr_tuple * materialize_temporary_expr_info
//@atd type materialize_temporary_expr_info = {
//@atd   ?decl_ref : decl_ref option;
//@atd } <ocaml field_prefix="mtei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitMaterializeTemporaryExpr(
    const MaterializeTemporaryExpr *Node) {
  VisitExpr(Node);

  const ValueDecl *VD = Node->getExtendingDecl();
  ObjectScope Scope(OF, 0 + (bool)VD);
  if (VD) {
    OF.emitTag("decl_ref");
    dumpDeclRef(*VD);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ExprWithCleanupsTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define expr_with_cleanups_tuple expr_tuple * expr_with_cleanups_info
//@atd type expr_with_cleanups_info = {
//@atd  ~decl_refs : decl_ref list;
//@atd } <ocaml field_prefix="ewci_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitExprWithCleanups(
    const ExprWithCleanups *Node) {
  VisitExpr(Node);

  bool HasDeclRefs = Node->getNumObjects() > 0;
  ObjectScope Scope(OF, 0 + HasDeclRefs);

  if (HasDeclRefs) {
    OF.emitTag("decl_refs");
    ArrayScope Scope(OF, Node->getNumObjects());
    for (unsigned i = 0, e = Node->getNumObjects(); i != e; ++i)
      dumpDeclRef(*Node->getObject(i));
  }
}

//@atd type cxx_temporary = pointer
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpCXXTemporary(const CXXTemporary *Temporary) {
  dumpPointer(Temporary);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::LambdaExprTupleSize() {
  return ExprTupleSize() + DeclTupleSize();
}

//@atd #define lambda_expr_tuple expr_tuple * lambda_expr_info
//@atd type lambda_expr_info = {
//@atd   lambda_decl: decl;
//@atd } <ocaml field_prefix="lei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitLambdaExpr(const LambdaExpr *Node) {
  VisitExpr(Node);

  ObjectScope Scope(OF, 1);
  OF.emitTag("lambda_decl");
  dumpDecl(Node->getLambdaClass());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXNewExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_new_expr_tuple expr_tuple * cxx_new_expr_info
//@atd type cxx_new_expr_info = {
//@atd   ~is_array : bool;
//@atd   ?array_size_expr : pointer option;
//@atd   ?initializer_expr : pointer option;
//@atd } <ocaml field_prefix="xnei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXNewExpr(const CXXNewExpr *Node) {
  VisitExpr(Node);

  bool IsArray = Node->isArray();
  bool HasArraySize = Node->getArraySize();
  bool HasInitializer = Node->hasInitializer();
  ObjectScope Scope(OF, 0 + IsArray + HasArraySize + HasInitializer);

  //  ?should_null_check : bool;
  // OF.emitFlag("should_null_check", Node->shouldNullCheckAllocation());
  OF.emitFlag("is_array", IsArray);
  if (HasArraySize) {
    OF.emitTag("array_size_expr");
    dumpPointer(Node->getArraySize());
  }
  if (HasInitializer) {
    OF.emitTag("initializer_expr");
    dumpPointer(Node->getInitializer());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXDeleteExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_delete_expr_tuple expr_tuple * cxx_delete_expr_info
//@atd type cxx_delete_expr_info = {
//@atd   ~is_array : bool;
//@atd   destroyed_type : qual_type;
//@atd } <ocaml field_prefix="xdei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXDeleteExpr(const CXXDeleteExpr *Node) {
  VisitExpr(Node);

  bool IsArray = Node->isArrayForm();
  ObjectScope Scope(OF, 1 + IsArray);

  OF.emitFlag("is_array", IsArray);

  OF.emitTag("destroyed_type");
  dumpQualType(Node->getDestroyedType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXDefaultArgExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_default_arg_expr_tuple expr_tuple * cxx_default_expr_info
//@atd type cxx_default_expr_info = {
//@atd   ?init_expr : stmt option;
//@atd } <ocaml field_prefix="xdaei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXDefaultArgExpr(
    const CXXDefaultArgExpr *Node) {
  VisitExpr(Node);

  const Expr *InitExpr = Node->getExpr();
  ObjectScope Scope(OF, 0 + (bool)InitExpr);
  if (InitExpr) {
    OF.emitTag("init_expr");
    dumpStmt(InitExpr);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXDefaultInitExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_default_init_expr_tuple expr_tuple * cxx_default_expr_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXDefaultInitExpr(
    const CXXDefaultInitExpr *Node) {
  VisitExpr(Node);

  const Expr *InitExpr = Node->getExpr();
  ObjectScope Scope(OF, 0 + (bool)InitExpr);
  if (InitExpr) {
    OF.emitTag("init_expr");
    dumpStmt(InitExpr);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TypeTraitExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define type_trait_expr_tuple expr_tuple * type_trait_info
//@atd type type_trait_info = {
//@atd   ~value : bool;
//@atd } <ocaml field_prefix="xtti_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitTypeTraitExpr(const TypeTraitExpr *Node) {
  VisitExpr(Node);
  // FIXME: don't dump false when value is dependent
  bool value = Node->isValueDependent() ? false : Node->getValue();
  ObjectScope Scope(OF, 0 + value);
  OF.emitFlag("value", value);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CXXNoexceptExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define cxx_noexcept_expr_tuple expr_tuple * cxx_noexcept_expr_info
//@atd type cxx_noexcept_expr_info = {
//@atd   ~value : bool;
//@atd } <ocaml field_prefix="xnee_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitCXXNoexceptExpr(const CXXNoexceptExpr *Node) {
  VisitExpr(Node);
  bool value = Node->getValue();
  ObjectScope Scope(OF, 0 + value);
  OF.emitFlag("value", value);
}

////===----------------------------------------------------------------------===//
//// Obj-C Expressions
////===----------------------------------------------------------------------===//

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCMessageExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_message_expr_tuple expr_tuple * obj_c_message_expr_info
//@atd type obj_c_message_expr_info = {
//@atd   selector : string;
//@atd   ~is_definition_found : bool;
//@atd   ?decl_pointer : pointer option;
//@atd   ~receiver_kind <ocaml default="`Instance"> : receiver_kind
//@atd } <ocaml field_prefix="omei_">
//@atd type receiver_kind = [ Instance | Class of qual_type | SuperInstance |
//@atd SuperClass ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCMessageExpr(const ObjCMessageExpr *Node) {
  VisitExpr(Node);

  bool IsDefinitionFound = false;
  // Do not rely on Node->getMethodDecl() - it might be wrong if
  // selector doesn't type check (ie. method of subclass is called)
  const ObjCInterfaceDecl *receiver = Node->getReceiverInterface();
  const Selector selector = Node->getSelector();
  const ObjCMethodDecl *m_decl = NULL;
  if (receiver) {
    bool IsInst = Node->isInstanceMessage();
    m_decl = receiver->lookupPrivateMethod(selector, IsInst);
    // Look for definition first. It's possible that class redefines it without
    // redeclaring. It needs to be defined in same translation unit to work.
    if (m_decl) {
      IsDefinitionFound = true;
    } else {
      // As a fallback look through method declarations in the interface.
      // It's not very reliable (subclass might have redefined it)
      // but it's better than nothing
      IsDefinitionFound = false;
      m_decl = receiver->lookupMethod(selector, IsInst);
    }
  }
  ObjCMessageExpr::ReceiverKind RK = Node->getReceiverKind();
  bool HasNonDefaultReceiverKind = RK != ObjCMessageExpr::Instance;
  ObjectScope Scope(
      OF, 1 + IsDefinitionFound + (bool)m_decl + HasNonDefaultReceiverKind);

  OF.emitTag("selector");
  OF.emitString(selector.getAsString());

  if (m_decl) {
    OF.emitFlag("is_definition_found", IsDefinitionFound);
    OF.emitTag("decl_pointer");
    dumpPointer(m_decl);
  }

  if (HasNonDefaultReceiverKind) {
    OF.emitTag("receiver_kind");
    switch (RK) {
    case ObjCMessageExpr::Class: {
      VariantScope Scope(OF, "Class");
      dumpQualType(Node->getClassReceiver());
    } break;
    case ObjCMessageExpr::SuperInstance:
      OF.emitSimpleVariant("SuperInstance");
      break;
    case ObjCMessageExpr::SuperClass:
      OF.emitSimpleVariant("SuperClass");
      break;
    case ObjCMessageExpr::Instance:
      llvm_unreachable("unreachable");
      break;
    }
  }
}

//@atd type selector = string
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpSelector(const Selector sel) {
  OF.emitString(sel.getAsString());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCBoxedExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_boxed_expr_tuple expr_tuple * objc_boxed_expr_info
//@atd type objc_boxed_expr_info = {
//@atd   ?boxing_method : selector option;
//@atd }  <ocaml field_prefix="obei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCBoxedExpr(const ObjCBoxedExpr *Node) {
  VisitExpr(Node);
  ObjCMethodDecl *boxingMethod = Node->getBoxingMethod();
  ObjectScope Scope(OF, 0 + (bool)boxingMethod);
  if (boxingMethod) {
    OF.emitTag("boxing_method");
    dumpSelector(boxingMethod->getSelector());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCAtCatchStmtTupleSize() {
  return StmtTupleSize() + 1;
}
//@atd #define obj_c_at_catch_stmt_tuple stmt_tuple * obj_c_message_expr_kind
//@atd type obj_c_message_expr_kind = [
//@atd | CatchParam of decl
//@atd | CatchAll
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCAtCatchStmt(const ObjCAtCatchStmt *Node) {
  VisitStmt(Node);
  if (const VarDecl *CatchParam = Node->getCatchParamDecl()) {
    VariantScope Scope(OF, "CatchParam");
    dumpDecl(CatchParam);
  } else {
    OF.emitSimpleVariant("CatchAll");
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCEncodeExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_encode_expr_tuple expr_tuple * objc_encode_expr_info
//@atd type objc_encode_expr_info = {
//@atd   qual_type : qual_type;
//@atd   raw : string;
//@atd } <ocaml field_prefix="oeei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCEncodeExpr(const ObjCEncodeExpr *Node) {
  VisitExpr(Node);
  ObjectScope Scope(OF, 2);
  OF.emitTag("qual_type");
  dumpQualType(Node->getEncodedType());
  OF.emitTag("raw");
  OF.emitString(Node->getEncodedType().getAsString());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCSelectorExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_selector_expr_tuple expr_tuple * selector
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCSelectorExpr(
    const ObjCSelectorExpr *Node) {
  VisitExpr(Node);
  dumpSelector(Node->getSelector());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCProtocolExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_protocol_expr_tuple expr_tuple * decl_ref
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCProtocolExpr(
    const ObjCProtocolExpr *Node) {
  VisitExpr(Node);
  dumpDeclRef(*Node->getProtocol());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCPropertyRefExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_property_ref_expr_tuple expr_tuple * obj_c_property_ref_expr_info
//@atd type obj_c_property_ref_expr_info = {
//@atd   kind : property_ref_kind;
//@atd   ~is_super_receiver : bool;
//@atd   ~is_messaging_getter : bool;
//@atd   ~is_messaging_setter : bool;
//@atd } <ocaml field_prefix="oprei_">
//@atd type property_ref_kind = [
//@atd | MethodRef of obj_c_method_ref_info
//@atd | PropertyRef of decl_ref
//@atd ]
//@atd type obj_c_method_ref_info = {
//@atd   ?getter : selector option;
//@atd   ?setter : selector option
//@atd } <ocaml field_prefix="mri_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCPropertyRefExpr(
    const ObjCPropertyRefExpr *Node) {
  VisitExpr(Node);

  bool IsSuperReceiver = Node->isSuperReceiver();
  bool IsMessagingGetter = Node->isMessagingGetter();
  bool IsMessagingSetter = Node->isMessagingSetter();
  ObjectScope Scope(OF,
                    1 + IsSuperReceiver + IsMessagingGetter +
                        IsMessagingSetter); // not covered by tests

  OF.emitTag("kind");
  if (Node->isImplicitProperty()) {
    VariantScope Scope(OF, "MethodRef");
    {
      bool HasImplicitPropertyGetter = Node->getImplicitPropertyGetter();
      bool HasImplicitPropertySetter = Node->getImplicitPropertySetter();
      ObjectScope Scope(
          OF, 0 + HasImplicitPropertyGetter + HasImplicitPropertySetter);

      if (HasImplicitPropertyGetter) {
        OF.emitTag("getter");
        dumpSelector(Node->getImplicitPropertyGetter()->getSelector());
      }
      if (HasImplicitPropertySetter) {
        OF.emitTag("setter");
        dumpSelector(Node->getImplicitPropertySetter()->getSelector());
      }
    }
  } else {
    VariantScope Scope(OF, "PropertyRef");
    dumpDeclRef(*Node->getExplicitProperty());
  }
  OF.emitFlag("is_super_receiver", IsSuperReceiver);
  OF.emitFlag("is_messaging_getter", IsMessagingGetter);
  OF.emitFlag("is_messaging_setter", IsMessagingSetter);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCSubscriptRefExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_subscript_ref_expr_tuple expr_tuple * obj_c_subscript_ref_expr_info
//@atd type obj_c_subscript_ref_expr_info = {
//@atd   kind : obj_c_subscript_kind;
//@atd   ?getter : selector option;
//@atd   ?setter : selector option
//@atd } <ocaml field_prefix="osrei_">
//@atd type obj_c_subscript_kind = [ ArraySubscript | DictionarySubscript ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCSubscriptRefExpr(
    const ObjCSubscriptRefExpr *Node) {
  VisitExpr(Node);

  bool HasGetter = Node->getAtIndexMethodDecl();
  bool HasSetter = Node->setAtIndexMethodDecl();
  ObjectScope Scope(OF, 1 + HasGetter + HasSetter); // not covered by tests

  OF.emitTag("kind");
  if (Node->isArraySubscriptRefExpr()) {
    OF.emitSimpleVariant("ArraySubscript");
  } else {
    OF.emitSimpleVariant("DictionarySubscript");
  }
  if (HasGetter) {
    OF.emitTag("getter");
    dumpSelector(Node->getAtIndexMethodDecl()->getSelector());
  }
  if (HasSetter) {
    OF.emitTag("setter");
    dumpSelector(Node->setAtIndexMethodDecl()->getSelector());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCBoolLiteralExprTupleSize() {
  return ExprTupleSize() + 1;
}
//@atd #define obj_c_bool_literal_expr_tuple expr_tuple * int
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCBoolLiteralExpr(
    const ObjCBoolLiteralExpr *Node) {
  VisitExpr(Node);
  OF.emitInteger(Node->getValue());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCAvailabilityCheckExprTupleSize() {
  return ExprTupleSize() + 1;
}

//@atd #define obj_c_availability_check_expr_tuple expr_tuple * obj_c_availability_check_expr_info
//@atd type obj_c_availability_check_expr_info = {
//@atd   ?version : string option;
//@atd } <ocaml field_prefix="oacei_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCAvailabilityCheckExpr(
    const ObjCAvailabilityCheckExpr *Expr) {
  VisitExpr(Expr);
  bool HasVersion = Expr->hasVersion();
  ObjectScope Scope(OF, HasVersion);
  if (HasVersion) {
    OF.emitTag("version");
    ObjCAvailabilityCheckExpr *E = (ObjCAvailabilityCheckExpr *)Expr;
    OF.emitString(E->getVersion().getAsString());
  }
}

// Main variant for statements
//@atd type stmt = [

























                                     



//@atd | GCCAsmStmt of (@GCCAsmStmt@_tuple)





//@atd | MSAsmStmt of (@MSAsmStmt@_tuple)









//@atd | AttributedStmt of (@AttributedStmt@_tuple)





//@atd | BreakStmt of (@BreakStmt@_tuple)





//@atd | CXXCatchStmt of (@CXXCatchStmt@_tuple)





//@atd | CXXForRangeStmt of (@CXXForRangeStmt@_tuple)





//@atd | CXXTryStmt of (@CXXTryStmt@_tuple)





//@atd | CapturedStmt of (@CapturedStmt@_tuple)





//@atd | CompoundStmt of (@CompoundStmt@_tuple)





//@atd | ContinueStmt of (@ContinueStmt@_tuple)





//@atd | CoreturnStmt of (@CoreturnStmt@_tuple)





//@atd | CoroutineBodyStmt of (@CoroutineBodyStmt@_tuple)





//@atd | DeclStmt of (@DeclStmt@_tuple)





//@atd | DoStmt of (@DoStmt@_tuple)





                               



                                                                             



//@atd | BinaryConditionalOperator of (@BinaryConditionalOperator@_tuple)





//@atd | ConditionalOperator of (@ConditionalOperator@_tuple)









//@atd | AddrLabelExpr of (@AddrLabelExpr@_tuple)





//@atd | ArrayInitIndexExpr of (@ArrayInitIndexExpr@_tuple)





//@atd | ArrayInitLoopExpr of (@ArrayInitLoopExpr@_tuple)





//@atd | ArraySubscriptExpr of (@ArraySubscriptExpr@_tuple)





//@atd | ArrayTypeTraitExpr of (@ArrayTypeTraitExpr@_tuple)





//@atd | AsTypeExpr of (@AsTypeExpr@_tuple)





//@atd | AtomicExpr of (@AtomicExpr@_tuple)





//@atd | BinaryOperator of (@BinaryOperator@_tuple)



//@atd | CompoundAssignOperator of (@CompoundAssignOperator@_tuple)









//@atd | BlockExpr of (@BlockExpr@_tuple)





//@atd | CXXBindTemporaryExpr of (@CXXBindTemporaryExpr@_tuple)





//@atd | CXXBoolLiteralExpr of (@CXXBoolLiteralExpr@_tuple)





//@atd | CXXConstructExpr of (@CXXConstructExpr@_tuple)



//@atd | CXXTemporaryObjectExpr of (@CXXTemporaryObjectExpr@_tuple)









//@atd | CXXDefaultArgExpr of (@CXXDefaultArgExpr@_tuple)





//@atd | CXXDefaultInitExpr of (@CXXDefaultInitExpr@_tuple)





//@atd | CXXDeleteExpr of (@CXXDeleteExpr@_tuple)





//@atd | CXXDependentScopeMemberExpr of (@CXXDependentScopeMemberExpr@_tuple)





//@atd | CXXFoldExpr of (@CXXFoldExpr@_tuple)





//@atd | CXXInheritedCtorInitExpr of (@CXXInheritedCtorInitExpr@_tuple)





//@atd | CXXNewExpr of (@CXXNewExpr@_tuple)





//@atd | CXXNoexceptExpr of (@CXXNoexceptExpr@_tuple)





//@atd | CXXNullPtrLiteralExpr of (@CXXNullPtrLiteralExpr@_tuple)





//@atd | CXXPseudoDestructorExpr of (@CXXPseudoDestructorExpr@_tuple)





//@atd | CXXScalarValueInitExpr of (@CXXScalarValueInitExpr@_tuple)





//@atd | CXXStdInitializerListExpr of (@CXXStdInitializerListExpr@_tuple)





//@atd | CXXThisExpr of (@CXXThisExpr@_tuple)





//@atd | CXXThrowExpr of (@CXXThrowExpr@_tuple)





//@atd | CXXTypeidExpr of (@CXXTypeidExpr@_tuple)





//@atd | CXXUnresolvedConstructExpr of (@CXXUnresolvedConstructExpr@_tuple)





//@atd | CXXUuidofExpr of (@CXXUuidofExpr@_tuple)





//@atd | CallExpr of (@CallExpr@_tuple)



//@atd | CUDAKernelCallExpr of (@CUDAKernelCallExpr@_tuple)





//@atd | CXXMemberCallExpr of (@CXXMemberCallExpr@_tuple)





//@atd | CXXOperatorCallExpr of (@CXXOperatorCallExpr@_tuple)





//@atd | UserDefinedLiteral of (@UserDefinedLiteral@_tuple)









                                       



                                                           



//@atd | CStyleCastExpr of (@CStyleCastExpr@_tuple)





//@atd | CXXFunctionalCastExpr of (@CXXFunctionalCastExpr@_tuple)





                                                                   



//@atd | CXXConstCastExpr of (@CXXConstCastExpr@_tuple)





//@atd | CXXDynamicCastExpr of (@CXXDynamicCastExpr@_tuple)





//@atd | CXXReinterpretCastExpr of (@CXXReinterpretCastExpr@_tuple)





//@atd | CXXStaticCastExpr of (@CXXStaticCastExpr@_tuple)









//@atd | ObjCBridgedCastExpr of (@ObjCBridgedCastExpr@_tuple)









//@atd | ImplicitCastExpr of (@ImplicitCastExpr@_tuple)









//@atd | CharacterLiteral of (@CharacterLiteral@_tuple)





//@atd | ChooseExpr of (@ChooseExpr@_tuple)





//@atd | CompoundLiteralExpr of (@CompoundLiteralExpr@_tuple)





//@atd | ConvertVectorExpr of (@ConvertVectorExpr@_tuple)





                                                               



//@atd | CoawaitExpr of (@CoawaitExpr@_tuple)





//@atd | CoyieldExpr of (@CoyieldExpr@_tuple)









//@atd | DeclRefExpr of (@DeclRefExpr@_tuple)





//@atd | DependentCoawaitExpr of (@DependentCoawaitExpr@_tuple)





//@atd | DependentScopeDeclRefExpr of (@DependentScopeDeclRefExpr@_tuple)





//@atd | DesignatedInitExpr of (@DesignatedInitExpr@_tuple)





//@atd | DesignatedInitUpdateExpr of (@DesignatedInitUpdateExpr@_tuple)





//@atd | ExprWithCleanups of (@ExprWithCleanups@_tuple)





//@atd | ExpressionTraitExpr of (@ExpressionTraitExpr@_tuple)





//@atd | ExtVectorElementExpr of (@ExtVectorElementExpr@_tuple)





//@atd | FloatingLiteral of (@FloatingLiteral@_tuple)





//@atd | FunctionParmPackExpr of (@FunctionParmPackExpr@_tuple)





//@atd | GNUNullExpr of (@GNUNullExpr@_tuple)





//@atd | GenericSelectionExpr of (@GenericSelectionExpr@_tuple)





//@atd | ImaginaryLiteral of (@ImaginaryLiteral@_tuple)





//@atd | ImplicitValueInitExpr of (@ImplicitValueInitExpr@_tuple)





//@atd | InitListExpr of (@InitListExpr@_tuple)





//@atd | IntegerLiteral of (@IntegerLiteral@_tuple)





//@atd | LambdaExpr of (@LambdaExpr@_tuple)





//@atd | MSPropertyRefExpr of (@MSPropertyRefExpr@_tuple)





//@atd | MSPropertySubscriptExpr of (@MSPropertySubscriptExpr@_tuple)





//@atd | MaterializeTemporaryExpr of (@MaterializeTemporaryExpr@_tuple)





//@atd | MemberExpr of (@MemberExpr@_tuple)





//@atd | NoInitExpr of (@NoInitExpr@_tuple)





//@atd | OMPArraySectionExpr of (@OMPArraySectionExpr@_tuple)





//@atd | ObjCArrayLiteral of (@ObjCArrayLiteral@_tuple)





//@atd | ObjCAvailabilityCheckExpr of (@ObjCAvailabilityCheckExpr@_tuple)





//@atd | ObjCBoolLiteralExpr of (@ObjCBoolLiteralExpr@_tuple)





//@atd | ObjCBoxedExpr of (@ObjCBoxedExpr@_tuple)





//@atd | ObjCDictionaryLiteral of (@ObjCDictionaryLiteral@_tuple)





//@atd | ObjCEncodeExpr of (@ObjCEncodeExpr@_tuple)





//@atd | ObjCIndirectCopyRestoreExpr of (@ObjCIndirectCopyRestoreExpr@_tuple)





//@atd | ObjCIsaExpr of (@ObjCIsaExpr@_tuple)





//@atd | ObjCIvarRefExpr of (@ObjCIvarRefExpr@_tuple)





//@atd | ObjCMessageExpr of (@ObjCMessageExpr@_tuple)





//@atd | ObjCPropertyRefExpr of (@ObjCPropertyRefExpr@_tuple)





//@atd | ObjCProtocolExpr of (@ObjCProtocolExpr@_tuple)





//@atd | ObjCSelectorExpr of (@ObjCSelectorExpr@_tuple)





//@atd | ObjCStringLiteral of (@ObjCStringLiteral@_tuple)





//@atd | ObjCSubscriptRefExpr of (@ObjCSubscriptRefExpr@_tuple)





//@atd | OffsetOfExpr of (@OffsetOfExpr@_tuple)





//@atd | OpaqueValueExpr of (@OpaqueValueExpr@_tuple)





                                               



//@atd | UnresolvedLookupExpr of (@UnresolvedLookupExpr@_tuple)





//@atd | UnresolvedMemberExpr of (@UnresolvedMemberExpr@_tuple)









//@atd | PackExpansionExpr of (@PackExpansionExpr@_tuple)





//@atd | ParenExpr of (@ParenExpr@_tuple)





//@atd | ParenListExpr of (@ParenListExpr@_tuple)





//@atd | PredefinedExpr of (@PredefinedExpr@_tuple)





//@atd | PseudoObjectExpr of (@PseudoObjectExpr@_tuple)





//@atd | ShuffleVectorExpr of (@ShuffleVectorExpr@_tuple)





//@atd | SizeOfPackExpr of (@SizeOfPackExpr@_tuple)





//@atd | StmtExpr of (@StmtExpr@_tuple)





//@atd | StringLiteral of (@StringLiteral@_tuple)





//@atd | SubstNonTypeTemplateParmExpr of (@SubstNonTypeTemplateParmExpr@_tuple)





//@atd | SubstNonTypeTemplateParmPackExpr of (@SubstNonTypeTemplateParmPackExpr@_tuple)





//@atd | TypeTraitExpr of (@TypeTraitExpr@_tuple)





//@atd | TypoExpr of (@TypoExpr@_tuple)





//@atd | UnaryExprOrTypeTraitExpr of (@UnaryExprOrTypeTraitExpr@_tuple)





//@atd | UnaryOperator of (@UnaryOperator@_tuple)





//@atd | VAArgExpr of (@VAArgExpr@_tuple)









//@atd | ForStmt of (@ForStmt@_tuple)





//@atd | GotoStmt of (@GotoStmt@_tuple)





//@atd | IfStmt of (@IfStmt@_tuple)





//@atd | IndirectGotoStmt of (@IndirectGotoStmt@_tuple)





//@atd | LabelStmt of (@LabelStmt@_tuple)





//@atd | MSDependentExistsStmt of (@MSDependentExistsStmt@_tuple)





//@atd | NullStmt of (@NullStmt@_tuple)





                                                                   



//@atd | OMPAtomicDirective of (@OMPAtomicDirective@_tuple)





//@atd | OMPBarrierDirective of (@OMPBarrierDirective@_tuple)





//@atd | OMPCancelDirective of (@OMPCancelDirective@_tuple)





//@atd | OMPCancellationPointDirective of (@OMPCancellationPointDirective@_tuple)





//@atd | OMPCriticalDirective of (@OMPCriticalDirective@_tuple)





//@atd | OMPFlushDirective of (@OMPFlushDirective@_tuple)





                                                                         



//@atd | OMPDistributeDirective of (@OMPDistributeDirective@_tuple)





//@atd | OMPDistributeParallelForDirective of (@OMPDistributeParallelForDirective@_tuple)





//@atd | OMPDistributeParallelForSimdDirective of (@OMPDistributeParallelForSimdDirective@_tuple)





//@atd | OMPDistributeSimdDirective of (@OMPDistributeSimdDirective@_tuple)





//@atd | OMPForDirective of (@OMPForDirective@_tuple)





//@atd | OMPForSimdDirective of (@OMPForSimdDirective@_tuple)





//@atd | OMPParallelForDirective of (@OMPParallelForDirective@_tuple)





//@atd | OMPParallelForSimdDirective of (@OMPParallelForSimdDirective@_tuple)





//@atd | OMPSimdDirective of (@OMPSimdDirective@_tuple)





//@atd | OMPTargetParallelForSimdDirective of (@OMPTargetParallelForSimdDirective@_tuple)





//@atd | OMPTargetSimdDirective of (@OMPTargetSimdDirective@_tuple)





//@atd | OMPTargetTeamsDistributeDirective of (@OMPTargetTeamsDistributeDirective@_tuple)





//@atd | OMPTargetTeamsDistributeParallelForDirective of (@OMPTargetTeamsDistributeParallelForDirective@_tuple)





//@atd | OMPTargetTeamsDistributeParallelForSimdDirective of (@OMPTargetTeamsDistributeParallelForSimdDirective@_tuple)





//@atd | OMPTargetTeamsDistributeSimdDirective of (@OMPTargetTeamsDistributeSimdDirective@_tuple)





//@atd | OMPTaskLoopDirective of (@OMPTaskLoopDirective@_tuple)





//@atd | OMPTaskLoopSimdDirective of (@OMPTaskLoopSimdDirective@_tuple)





//@atd | OMPTeamsDistributeDirective of (@OMPTeamsDistributeDirective@_tuple)





//@atd | OMPTeamsDistributeParallelForDirective of (@OMPTeamsDistributeParallelForDirective@_tuple)





//@atd | OMPTeamsDistributeParallelForSimdDirective of (@OMPTeamsDistributeParallelForSimdDirective@_tuple)





//@atd | OMPTeamsDistributeSimdDirective of (@OMPTeamsDistributeSimdDirective@_tuple)









//@atd | OMPMasterDirective of (@OMPMasterDirective@_tuple)





//@atd | OMPOrderedDirective of (@OMPOrderedDirective@_tuple)





//@atd | OMPParallelDirective of (@OMPParallelDirective@_tuple)





//@atd | OMPParallelSectionsDirective of (@OMPParallelSectionsDirective@_tuple)





//@atd | OMPSectionDirective of (@OMPSectionDirective@_tuple)





//@atd | OMPSectionsDirective of (@OMPSectionsDirective@_tuple)





//@atd | OMPSingleDirective of (@OMPSingleDirective@_tuple)





//@atd | OMPTargetDataDirective of (@OMPTargetDataDirective@_tuple)





//@atd | OMPTargetDirective of (@OMPTargetDirective@_tuple)





//@atd | OMPTargetEnterDataDirective of (@OMPTargetEnterDataDirective@_tuple)





//@atd | OMPTargetExitDataDirective of (@OMPTargetExitDataDirective@_tuple)





//@atd | OMPTargetParallelDirective of (@OMPTargetParallelDirective@_tuple)





//@atd | OMPTargetParallelForDirective of (@OMPTargetParallelForDirective@_tuple)





//@atd | OMPTargetTeamsDirective of (@OMPTargetTeamsDirective@_tuple)





//@atd | OMPTargetUpdateDirective of (@OMPTargetUpdateDirective@_tuple)





//@atd | OMPTaskDirective of (@OMPTaskDirective@_tuple)





//@atd | OMPTaskgroupDirective of (@OMPTaskgroupDirective@_tuple)





//@atd | OMPTaskwaitDirective of (@OMPTaskwaitDirective@_tuple)





//@atd | OMPTaskyieldDirective of (@OMPTaskyieldDirective@_tuple)





//@atd | OMPTeamsDirective of (@OMPTeamsDirective@_tuple)









//@atd | ObjCAtCatchStmt of (@ObjCAtCatchStmt@_tuple)





//@atd | ObjCAtFinallyStmt of (@ObjCAtFinallyStmt@_tuple)





//@atd | ObjCAtSynchronizedStmt of (@ObjCAtSynchronizedStmt@_tuple)





//@atd | ObjCAtThrowStmt of (@ObjCAtThrowStmt@_tuple)





//@atd | ObjCAtTryStmt of (@ObjCAtTryStmt@_tuple)





//@atd | ObjCAutoreleasePoolStmt of (@ObjCAutoreleasePoolStmt@_tuple)





//@atd | ObjCForCollectionStmt of (@ObjCForCollectionStmt@_tuple)





//@atd | ReturnStmt of (@ReturnStmt@_tuple)





//@atd | SEHExceptStmt of (@SEHExceptStmt@_tuple)





//@atd | SEHFinallyStmt of (@SEHFinallyStmt@_tuple)





//@atd | SEHLeaveStmt of (@SEHLeaveStmt@_tuple)





//@atd | SEHTryStmt of (@SEHTryStmt@_tuple)





                                           



//@atd | CaseStmt of (@CaseStmt@_tuple)





//@atd | DefaultStmt of (@DefaultStmt@_tuple)









//@atd | SwitchStmt of (@SwitchStmt@_tuple)





//@atd | WhileStmt of (@WhileStmt@_tuple)





//@atd ] <ocaml repr="classic" validator="Clang_ast_visit.visit_stmt">

//===----------------------------------------------------------------------===//
// Comments
//===----------------------------------------------------------------------===//

template <class ATDWriter>
const char *ASTExporter<ATDWriter>::getCommandName(unsigned CommandID) {
  return Context.getCommentCommandTraits().getCommandInfo(CommandID)->Name;
}

template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpFullComment(const FullComment *C) {
  FC = C;
  dumpComment(C);
  FC = 0;
}


























//@atd #define @BlockContentComment@_tuple @ Comment@_tuple



//@atd #define @BlockCommandComment@_tuple @ BlockContentComment@_tuple



//@atd #define @ParamCommandComment@_tuple @ BlockCommandComment@_tuple





//@atd #define @TParamCommandComment@_tuple @ BlockCommandComment@_tuple





//@atd #define @VerbatimBlockComment@_tuple @ BlockCommandComment@_tuple





//@atd #define @VerbatimLineComment@_tuple @ BlockCommandComment@_tuple









//@atd #define @ParagraphComment@_tuple @ BlockContentComment@_tuple









//@atd #define @FullComment@_tuple @ Comment@_tuple





//@atd #define @InlineContentComment@_tuple @ Comment@_tuple



//@atd #define @HTMLTagComment@_tuple @ InlineContentComment@_tuple



//@atd #define @HTMLEndTagComment@_tuple @ HTMLTagComment@_tuple





//@atd #define @HTMLStartTagComment@_tuple @ HTMLTagComment@_tuple









//@atd #define @InlineCommandComment@_tuple @ InlineContentComment@_tuple





//@atd #define @TextComment@_tuple @ InlineContentComment@_tuple









//@atd #define @VerbatimBlockLineComment@_tuple @ Comment@_tuple





template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpComment(const Comment *C) {
  if (!C) {
    // We use a fixed NoComment node to represent null pointers
    C = NullPtrComment;
  }
  VariantScope Scope(OF, std::string(C->getCommentKindName()));
  {
    TupleScope Scope(OF,
                     ASTExporter::tupleSizeOfCommentKind(C->getCommentKind()));
    ConstCommentVisitor<ASTExporter<ATDWriter>>::visit(C);
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::CommentTupleSize() {
  return 2;
}
//@atd #define comment_tuple comment_info * comment list
//@atd type comment_info = {
//@atd   parent_pointer : pointer;
//@atd   source_range : source_range;
//@atd } <ocaml field_prefix="ci_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::visitComment(const Comment *C) {
  {
    ObjectScope ObjComment(OF, 2); // not covered by tests
    OF.emitTag("parent_pointer");
    dumpPointer(C);
    OF.emitTag("source_range");
    dumpSourceRange(C->getSourceRange());
  }
  {
    Comment::child_iterator I = C->child_begin(), E = C->child_end();
    ArrayScope Scope(OF, std::distance(I, E));
    for (; I != E; ++I) {
      dumpComment(*I);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TextCommentTupleSize() {
  return CommentTupleSize() + 1;
}
//@atd #define text_comment_tuple comment_tuple * string
template <class ATDWriter>
void ASTExporter<ATDWriter>::visitTextComment(const TextComment *C) {
  visitComment(C);
  OF.emitString(C->getText());
}

// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitInlineCommandComment(const
// InlineCommandComment *C) {
//  OS << " Name=\"" << getCommandName(C->getCommandID()) << "\"";
//  switch (C->getRenderKind()) {
//  case InlineCommandComment::RenderNormal:
//    OS << " RenderNormal";
//    break;
//  case InlineCommandComment::RenderBold:
//    OS << " RenderBold";
//    break;
//  case InlineCommandComment::RenderMonospaced:
//    OS << " RenderMonospaced";
//    break;
//  case InlineCommandComment::RenderEmphasized:
//    OS << " RenderEmphasized";
//    break;
//  }
//
//  for (unsigned i = 0, e = C->getNumArgs(); i != e; ++i)
//    OS << " Arg[" << i << "]=\"" << C->getArgText(i) << "\"";
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitHTMLStartTagComment(const
// HTMLStartTagComment *C) {
//  OS << " Name=\"" << C->getTagName() << "\"";
//  if (C->getNumAttrs() != 0) {
//    OS << " Attrs: ";
//    for (unsigned i = 0, e = C->getNumAttrs(); i != e; ++i) {
//      const HTMLStartTagComment::Attribute &Attr = C->getAttr(i);
//      OS << " \"" << Attr.Name << "=\"" << Attr.Value << "\"";
//    }
//  }
//  if (C->isSelfClosing())
//    OS << " SelfClosing";
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitHTMLEndTagComment(const HTMLEndTagComment
// *C) {
//  OS << " Name=\"" << C->getTagName() << "\"";
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitBlockCommandComment(const
// BlockCommandComment *C) {
//  OS << " Name=\"" << getCommandName(C->getCommandID()) << "\"";
//  for (unsigned i = 0, e = C->getNumArgs(); i != e; ++i)
//    OS << " Arg[" << i << "]=\"" << C->getArgText(i) << "\"";
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitParamCommandComment(const
// ParamCommandComment *C) {
//  OS << " " << ParamCommandComment::getDirectionAsString(C->getDirection());
//
//  if (C->isDirectionExplicit())
//    OS << " explicitly";
//  else
//    OS << " implicitly";
//
//  if (C->hasParamName()) {
//    if (C->isParamIndexValid())
//      OS << " Param=\"" << C->getParamName(FC) << "\"";
//    else
//      OS << " Param=\"" << C->getParamNameAsWritten() << "\"";
//  }
//
//  if (C->isParamIndexValid() && !C->isVarArgParam())
//    OS << " ParamIndex=" << C->getParamIndex();
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitTParamCommandComment(const
// TParamCommandComment *C) {
//  if (C->hasParamName()) {
//    if (C->isPositionValid())
//      OS << " Param=\"" << C->getParamName(FC) << "\"";
//    else
//      OS << " Param=\"" << C->getParamNameAsWritten() << "\"";
//  }
//
//  if (C->isPositionValid()) {
//    OS << " Position=<";
//    for (unsigned i = 0, e = C->getDepth(); i != e; ++i) {
//      OS << C->getIndex(i);
//      if (i != e - 1)
//        OS << ", ";
//    }
//    OS << ">";
//  }
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitVerbatimBlockComment(const
// VerbatimBlockComment *C) {
//  OS << " Name=\"" << getCommandName(C->getCommandID()) << "\""
//        " CloseName=\"" << C->getCloseName() << "\"";
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitVerbatimBlockLineComment(
//    const VerbatimBlockLineComment *C) {
//  OS << " Text=\"" << C->getText() << "\"";
//}
//
// template <class ATDWriter>
// void ASTExporter<ATDWriter>::visitVerbatimLineComment(const
// VerbatimLineComment *C) {
//  OS << " Text=\"" << C->getText() << "\"";
//}

//@atd type comment = [

























                                                                   



//@atd | BlockCommandComment of (@BlockCommandComment@_tuple)



//@atd | ParamCommandComment of (@ParamCommandComment@_tuple)





//@atd | TParamCommandComment of (@TParamCommandComment@_tuple)





//@atd | VerbatimBlockComment of (@VerbatimBlockComment@_tuple)





//@atd | VerbatimLineComment of (@VerbatimLineComment@_tuple)









//@atd | ParagraphComment of (@ParagraphComment@_tuple)









//@atd | FullComment of (@FullComment@_tuple)





                                                                     



                                                                      



//@atd | HTMLEndTagComment of (@HTMLEndTagComment@_tuple)





//@atd | HTMLStartTagComment of (@HTMLStartTagComment@_tuple)









//@atd | InlineCommandComment of (@InlineCommandComment@_tuple)





//@atd | TextComment of (@TextComment@_tuple)









//@atd | VerbatimBlockLineComment of (@VerbatimBlockLineComment@_tuple)





//@atd ] <ocaml repr="classic">



//@atd #define @None@_type_tuple @ Type@_tuple

//===-- TypeNodes.def - Metadata about Type AST nodes -----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file defines the AST type info database. Each type node is
//  enumerated by providing its name (e.g., "Builtin" or "Enum") and
//  base class (e.g., "Type" or "TagType"). Depending on where in the
//  abstract syntax tree the type will show up, the enumeration uses
//  one of five different macros:
//
//    //@atd #define @Class@_type_tuple @ Base@_tuple - A type that can show up anywhere in the AST,
//    and might be dependent, canonical, or non-canonical. All clients
//    will need to understand these types.
//
//    //@atd #define @Class@_type_tuple @ Base@_tuple - An abstract class that shows up in
//    the type hierarchy but has no concrete instances.
//
//    NON_CANONICAL_TYPE(Class, Base) - A type that can show up
//    anywhere in the AST but will never be a part of a canonical
//    type. Clients that only need to deal with canonical types
//    (ignoring, e.g., typedefs and other type alises used for
//    pretty-printing) can ignore these types.
//
//    DEPENDENT_TYPE(Class, Base) - A type that will only show up
//    within a C++ template that has not been instantiated, e.g., a
//    type that is always dependent. Clients that do not need to deal
//    with uninstantiated C++ templates can ignore these types.
//
//    NON_CANONICAL_UNLESS_DEPENDENT_TYPE(Class, Base) - A type that
//    is non-canonical unless it is dependent.  Defaults to TYPE because
//    it is neither reliably dependent nor reliably non-canonical.
//
//  There is a sixth macro, independent of the others.  Most clients
//  will not need to use it.
//
//    LEAF_TYPE(Class) - A type that never has inner types.  Clients
//    which can operate on such types more efficiently may wish to do so.
//
//===----------------------------------------------------------------------===//

















//@atd #define @Builtin@_type_tuple @ Type@_tuple
//@atd #define @Complex@_type_tuple @ Type@_tuple
//@atd #define @Pointer@_type_tuple @ Type@_tuple
//@atd #define @BlockPointer@_type_tuple @ Type@_tuple
//@atd #define @Reference@_type_tuple @ Type@_tuple
//@atd #define @LValueReference@_type_tuple @ ReferenceType@_tuple
//@atd #define @RValueReference@_type_tuple @ ReferenceType@_tuple
//@atd #define @MemberPointer@_type_tuple @ Type@_tuple
//@atd #define @Array@_type_tuple @ Type@_tuple
//@atd #define @ConstantArray@_type_tuple @ ArrayType@_tuple
//@atd #define @IncompleteArray@_type_tuple @ ArrayType@_tuple
//@atd #define @VariableArray@_type_tuple @ ArrayType@_tuple
//@atd #define @DependentSizedArray@_type_tuple @ ArrayType@_tuple
//@atd #define @DependentSizedExtVector@_type_tuple @ Type@_tuple
//@atd #define @Vector@_type_tuple @ Type@_tuple
//@atd #define @ExtVector@_type_tuple @ VectorType@_tuple
//@atd #define @Function@_type_tuple @ Type@_tuple
//@atd #define @FunctionProto@_type_tuple @ FunctionType@_tuple
//@atd #define @FunctionNoProto@_type_tuple @ FunctionType@_tuple
//@atd #define @UnresolvedUsing@_type_tuple @ Type@_tuple
//@atd #define @Paren@_type_tuple @ Type@_tuple
//@atd #define @Typedef@_type_tuple @ Type@_tuple
//@atd #define @Adjusted@_type_tuple @ Type@_tuple
//@atd #define @Decayed@_type_tuple @ AdjustedType@_tuple
//@atd #define @TypeOfExpr@_type_tuple @ Type@_tuple
//@atd #define @TypeOf@_type_tuple @ Type@_tuple
//@atd #define @Decltype@_type_tuple @ Type@_tuple
//@atd #define @UnaryTransform@_type_tuple @ Type@_tuple
//@atd #define @Tag@_type_tuple @ Type@_tuple
//@atd #define @Record@_type_tuple @ TagType@_tuple
//@atd #define @Enum@_type_tuple @ TagType@_tuple
//@atd #define @Elaborated@_type_tuple @ Type@_tuple
//@atd #define @Attributed@_type_tuple @ Type@_tuple
//@atd #define @TemplateTypeParm@_type_tuple @ Type@_tuple
//@atd #define @SubstTemplateTypeParm@_type_tuple @ Type@_tuple
//@atd #define @SubstTemplateTypeParmPack@_type_tuple @ Type@_tuple
//@atd #define @TemplateSpecialization@_type_tuple @ Type@_tuple
//@atd #define @Deduced@_type_tuple @ Type@_tuple
//@atd #define @Auto@_type_tuple @ DeducedType@_tuple
//@atd #define @DeducedTemplateSpecialization@_type_tuple @ DeducedType@_tuple
//@atd #define @InjectedClassName@_type_tuple @ Type@_tuple
//@atd #define @DependentName@_type_tuple @ Type@_tuple
//@atd #define @DependentTemplateSpecialization@_type_tuple @ Type@_tuple
//@atd #define @PackExpansion@_type_tuple @ Type@_tuple
//@atd #define @ObjCTypeParam@_type_tuple @ Type@_tuple
//@atd #define @ObjCObject@_type_tuple @ Type@_tuple
//@atd #define @ObjCInterface@_type_tuple @ ObjCObjectType@_tuple
//@atd #define @ObjCObjectPointer@_type_tuple @ Type@_tuple
//@atd #define @Pipe@_type_tuple @ Type@_tuple
//@atd #define @Atomic@_type_tuple @ Type@_tuple






// These types are always leaves in the type hierarchy.






template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpType(const Type *T) {

  std::string typeClassName = T ? T->getTypeClassName() : "None";
  VariantScope Scope(OF, typeClassName + "Type");
  {
    if (T) {
      // TypeVisitor assumes T is non-null
      TupleScope Scope(OF,
                       ASTExporter::tupleSizeOfTypeClass(T->getTypeClass()));
      TypeVisitor<ASTExporter<ATDWriter>>::Visit(T);
    } else {
      TupleScope Scope(OF, 1);
      VisitType(nullptr);
    }
  }
}

//@atd type type_ptr = int wrap <ocaml module="Clang_ast_types.TypePtr">
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpPointerToType(const Type *T) {
  dumpPointer(T);
}

template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpQualTypeNoQuals(const QualType &qt) {
  const Type *T = qt.getTypePtrOrNull();
  dumpPointerToType(T);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TypeTupleSize() {
  return 1;
}
template <class ATDWriter>
int ASTExporter<ATDWriter>::TypeWithChildInfoTupleSize() {
  return 2;
}
//@atd #define type_tuple type_info
//@atd type type_info = {
//@atd   pointer : pointer;
//@atd   ?desugared_type : type_ptr option;
//@atd } <ocaml field_prefix="ti_">
//@atd #define type_with_child_info type_info * qual_type
//@atd #define qual_type_with_child_info type_info * qual_type
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitType(const Type *T) {
  // NOTE: T can (and will) be null here!!

  bool HasDesugaredType = T && T->getUnqualifiedDesugaredType() != T;
  ObjectScope Scope(OF, 1 + HasDesugaredType);

  OF.emitTag("pointer");
  dumpPointer(T);

  if (HasDesugaredType) {
    OF.emitTag("desugared_type");
    dumpPointerToType(T->getUnqualifiedDesugaredType());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::AdjustedTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define adjusted_type_tuple type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitAdjustedType(const AdjustedType *T) {
  VisitType(T);
  dumpQualType(T->getAdjustedType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ArrayTypeTupleSize() {
  return TypeTupleSize() + 1;
}
//@atd #define array_type_tuple type_tuple * array_type_info
//@atd type array_type_info = {
//@atd   element_type : qual_type;
//@atd   ?stride : int option;
//@atd } <ocaml field_prefix="arti_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitArrayType(const ArrayType *T) {
  VisitType(T);
  QualType EltT = T->getElementType();
  bool HasStride = hasMeaningfulTypeInfo(EltT.getTypePtr());
  ObjectScope Scope(OF, 1 + HasStride);
  OF.emitTag("element_type");
  dumpQualType(EltT);
  if (HasStride) {
    OF.emitTag("stride");
    OF.emitInteger(Context.getTypeInfo(EltT).Width / 8);
  };
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ConstantArrayTypeTupleSize() {
  return ArrayTypeTupleSize() + 1;
}
//@atd #define constant_array_type_tuple array_type_tuple * int
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitConstantArrayType(
    const ConstantArrayType *T) {
  VisitArrayType(T);
  OF.emitInteger(T->getSize().getLimitedValue());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::VariableArrayTypeTupleSize() {
  return ArrayTypeTupleSize() + 1;
}
//@atd #define variable_array_type_tuple array_type_tuple * pointer
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitVariableArrayType(
    const VariableArrayType *T) {
  VisitArrayType(T);
  dumpPointer(T->getSizeExpr());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::AtomicTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define atomic_type_tuple type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitAtomicType(const AtomicType *T) {
  VisitType(T);
  dumpQualType(T->getValueType());
}

//@atd type type_attribute_kind = [
//@atd   | AddressSpace
//@atd   | Regparm
//@atd   | VectorSize
//@atd   | NeonVectorSize
//@atd   | NeonPolyVectorSize
//@atd   | ObjcGc
//@atd   | ObjcOwnership
//@atd   | Pcs
//@atd   | PcsVfp
//@atd   | Noreturn
//@atd   | Cdecl
//@atd   | Fastcall
//@atd   | Stdcall
//@atd   | Thiscall
//@atd   | Pascal
//@atd   | Vectorcall
//@atd   | Inteloclbicc
//@atd   | MsAbi
//@atd   | SysvAbi
//@atd   | Ptr32
//@atd   | Ptr64
//@atd   | Sptr
//@atd   | Uptr
//@atd   | Nonnull
//@atd   | Nullable
//@atd   | NullUnspecified
//@atd   | ObjcKindof
//@atd   | ObjcInsertUnsafeUnretained
//@atd   | Swiftcall
//@atd   | PreserveMost
//@atd   | PreserveAll
//@atd   | Regcall
//@atd ]

template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpTypeAttr(AttributedType::Kind kind) {
  switch (kind) {
  case AttributedType::attr_address_space:
    OF.emitSimpleVariant("AddressSpace");
    break;
  case AttributedType::attr_regparm:
    OF.emitSimpleVariant("Regparm");
    break;
  case AttributedType::attr_vector_size:
    OF.emitSimpleVariant("VectorSize");
    break;
  case AttributedType::attr_neon_vector_type:
    OF.emitSimpleVariant("NeonVectorSize");
    break;
  case AttributedType::attr_neon_polyvector_type:
    OF.emitSimpleVariant("NeonPolyVectorSize");
    break;
  case AttributedType::attr_objc_gc:
    OF.emitSimpleVariant("ObjcGc");
    break;
  case AttributedType::attr_objc_ownership:
    OF.emitSimpleVariant("ObjcOwnership");
    break;
  case AttributedType::attr_pcs:
    OF.emitSimpleVariant("Pcs");
    break;
  case AttributedType::attr_pcs_vfp:
    OF.emitSimpleVariant("PcsVfp");
    break;
  case AttributedType::attr_noreturn:
    OF.emitSimpleVariant("Noreturn");
    break;
  case AttributedType::attr_cdecl:
    OF.emitSimpleVariant("Cdecl");
    break;
  case AttributedType::attr_fastcall:
    OF.emitSimpleVariant("Fastcall");
    break;
  case AttributedType::attr_stdcall:
    OF.emitSimpleVariant("Stdcall");
    break;
  case AttributedType::attr_thiscall:
    OF.emitSimpleVariant("Thiscall");
    break;
  case AttributedType::attr_pascal:
    OF.emitSimpleVariant("Pascal");
    break;
  case AttributedType::attr_vectorcall:
    OF.emitSimpleVariant("Vectorcall");
    break;
  case AttributedType::attr_inteloclbicc:
    OF.emitSimpleVariant("Inteloclbicc");
    break;
  case AttributedType::attr_ms_abi:
    OF.emitSimpleVariant("MsAbi");
    break;
  case AttributedType::attr_sysv_abi:
    OF.emitSimpleVariant("SysvAbi");
    break;
  case AttributedType::attr_ptr32:
    OF.emitSimpleVariant("Ptr32");
    break;
  case AttributedType::attr_ptr64:
    OF.emitSimpleVariant("Ptr64");
    break;
  case AttributedType::attr_sptr:
    OF.emitSimpleVariant("Sptr");
    break;
  case AttributedType::attr_uptr:
    OF.emitSimpleVariant("Uptr");
    break;
  case AttributedType::attr_nonnull:
    OF.emitSimpleVariant("Nonnull");
    break;
  case AttributedType::attr_nullable:
    OF.emitSimpleVariant("Nullable");
    break;
  case AttributedType::attr_null_unspecified:
    OF.emitSimpleVariant("NullUnspecified");
    break;
  case AttributedType::attr_objc_kindof:
    OF.emitSimpleVariant("ObjcKindof");
    break;
  case AttributedType::attr_objc_inert_unsafe_unretained:
    OF.emitSimpleVariant("ObjcInsertUnsafeUnretained");
    break;
  case AttributedType::attr_swiftcall:
    OF.emitSimpleVariant("Swiftcall");
    break;
  case AttributedType::attr_preserve_most:
    OF.emitSimpleVariant("PreserveMost");
    break;
  case AttributedType::attr_preserve_all:
    OF.emitSimpleVariant("PreserveAll");
    break;
  case AttributedType::attr_regcall:
    OF.emitSimpleVariant("Regcall");
    break;
  }
}

//@atd type objc_lifetime_attr = [
//@atd   | OCL_None
//@atd   | OCL_ExplicitNone
//@atd   | OCL_Strong
//@atd   | OCL_Weak
//@atd   | OCL_Autoreleasing
//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::dumpObjCLifetimeQual(
    Qualifiers::ObjCLifetime qual) {
  switch (qual) {
  case Qualifiers::ObjCLifetime::OCL_None:
    OF.emitSimpleVariant("OCL_None");
    break;
  case Qualifiers::ObjCLifetime::OCL_ExplicitNone:
    OF.emitSimpleVariant("OCL_ExplicitNone");
    break;
  case Qualifiers::ObjCLifetime::OCL_Strong:
    OF.emitSimpleVariant("OCL_Strong");
    break;
  case Qualifiers::ObjCLifetime::OCL_Weak:
    OF.emitSimpleVariant("OCL_Weak");
    break;
  case Qualifiers::ObjCLifetime::OCL_Autoreleasing:
    OF.emitSimpleVariant("OCL_Autoreleasing");
    break;
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::AttributedTypeTupleSize() {
  return TypeTupleSize() + 1;
}

//@atd #define attributed_type_tuple type_tuple * attr_type_info
//@atd type attr_type_info = {
//@atd   attr_kind : type_attribute_kind;
//@atd   ~lifetime <ocaml default="`OCL_None"> : objc_lifetime_attr
//@atd } <ocaml field_prefix="ati_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitAttributedType(const AttributedType *T) {
  VisitType(T);
  Qualifiers quals = QualType(T, 0).getQualifiers();

  bool hasLifetimeQual =
      quals.hasObjCLifetime() &&
      quals.getObjCLifetime() != Qualifiers::ObjCLifetime::OCL_None;
  ObjectScope Scope(OF, 1 + hasLifetimeQual);
  OF.emitTag("attr_kind");
  dumpTypeAttr(T->getAttrKind());
  if (hasLifetimeQual) {
    OF.emitTag("lifetime");
    dumpObjCLifetimeQual(quals.getObjCLifetime());
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::BlockPointerTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define block_pointer_type_tuple type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitBlockPointerType(const BlockPointerType *T) {
  VisitType(T);
  dumpQualType(T->getPointeeType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::BuiltinTypeTupleSize() {
  return TypeTupleSize() + 1;
}
//@atd #define builtin_type_tuple type_tuple * builtin_type_kind
//@atd type builtin_type_kind = [


//===-- BuiltinTypes.def - Metadata about BuiltinTypes ----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file defines the database about various builtin singleton types.
//
//  BuiltinType::Id is the enumerator defining the type.
//
//  Context.SingletonId is the global singleton of this type.  Some global
//  singletons are shared by multiple types.
//
//    //@atd | Id - A builtin type that has not been
//    covered by any other #define.  Defining this macro covers all
//    the builtins.
//
//    SIGNED_TYPE(Id, SingletonId) - A signed integral type.
//
//    UNSIGNED_TYPE(Id, SingletonId) - An unsigned integral type.
//
//    FLOATING_TYPE(Id, SingletonId) - A floating-point type.
//
//    PLACEHOLDER_TYPE(Id, SingletonId) - A placeholder type.  Placeholder
//    types are used to perform context-sensitive checking of specific
//    forms of expression.
//
//    SHARED_SINGLETON_TYPE(Expansion) - The given expansion corresponds
//    to a builtin which uses a shared singleton type.
//
//===----------------------------------------------------------------------===//





















//===- Builtin Types ------------------------------------------------------===//

// void
//@atd | Void

//===- Unsigned Types -----------------------------------------------------===//

// 'bool' in C++, '_Bool' in C99
//@atd | Bool

// 'char' for targets where it's unsigned
//@atd | Char_U

// 'unsigned char', explicitly qualified
//@atd | UChar

// 'wchar_t' for targets where it's unsigned
//@atd | WChar_U

// 'char16_t' in C++
//@atd | Char16

// 'char32_t' in C++
//@atd | Char32

// 'unsigned short'
//@atd | UShort

// 'unsigned int'
//@atd | UInt

// 'unsigned long'
//@atd | ULong

// 'unsigned long long'
//@atd | ULongLong

// '__uint128_t'
//@atd | UInt128

//===- Signed Types -------------------------------------------------------===//

// 'char' for targets where it's signed
//@atd | Char_S

// 'signed char', explicitly qualified
//@atd | SChar

// 'wchar_t' for targets where it's signed
//@atd | WChar_S

// 'short' or 'signed short'
//@atd | Short

// 'int' or 'signed int'
//@atd | Int

// 'long' or 'signed long'
//@atd | Long

// 'long long' or 'signed long long'
//@atd | LongLong

// '__int128_t'
//@atd | Int128

//===- Floating point types -----------------------------------------------===//

// 'half' in OpenCL, '__fp16' in ARM NEON.
//@atd | Half

// 'float'
//@atd | Float

// 'double'
//@atd | Double

// 'long double'
//@atd | LongDouble

// '__float128'
//@atd | Float128

//===- Language-specific types --------------------------------------------===//

// This is the type of C++0x 'nullptr'.
//@atd | NullPtr

// The primitive Objective C 'id' type.  The user-visible 'id'
// type is a typedef of an ObjCObjectPointerType to an
// ObjCObjectType with this as its base.  In fact, this only ever
// shows up in an AST as the base type of an ObjCObjectType.
//@atd | ObjCId

// The primitive Objective C 'Class' type.  The user-visible
// 'Class' type is a typedef of an ObjCObjectPointerType to an
// ObjCObjectType with this as its base.  In fact, this only ever
// shows up in an AST as the base type of an ObjCObjectType.
//@atd | ObjCClass

// The primitive Objective C 'SEL' type.  The user-visible 'SEL'
// type is a typedef of a PointerType to this.
//@atd | ObjCSel

// OpenCL sampler_t.
//@atd | OCLSampler

// OpenCL event_t.
//@atd | OCLEvent

// OpenCL clk_event_t.
//@atd | OCLClkEvent

// OpenCL queue_t.
//@atd | OCLQueue

// OpenCL reserve_id_t.
//@atd | OCLReserveID

// This represents the type of an expression whose type is
// totally unknown, e.g. 'T::foo'.  It is permitted for this to
// appear in situations where the structure of the type is
// theoretically deducible.
//@atd | Dependent

// The type of an unresolved overload set.  A placeholder type.
// Expressions with this type have one of the following basic
// forms, with parentheses generally permitted:
//   foo          # possibly qualified, not if an implicit access
//   foo          # possibly qualified, not if an implicit access
//   &foo         # possibly qualified, not if an implicit access
//   x->foo       # only if might be a static member function
//   &x->foo      # only if might be a static member function
//   &Class::foo  # when a pointer-to-member; sub-expr also has this type
// OverloadExpr::find can be used to analyze the expression.
//
// Overload should be the first placeholder type, or else change
// BuiltinType::isNonOverloadPlaceholderType()
//@atd | Overload

// The type of a bound C++ non-static member function.
// A placeholder type.  Expressions with this type have one of the
// following basic forms:
//   foo          # if an implicit access
//   x->foo       # if only contains non-static members
//@atd | BoundMember

// The type of an expression which refers to a pseudo-object,
// such as those introduced by Objective C's @property or
// VS.NET's __property declarations.  A placeholder type.  The
// pseudo-object is actually accessed by emitting a call to
// some sort of function or method;  typically there is a pair
// of a setter and a getter, with the setter used if the
// pseudo-object reference is used syntactically as the
// left-hand-side of an assignment operator.
//
// A pseudo-object reference naming an Objective-C @property is
// always a dot access with a base of object-pointer type,
// e.g. 'x.foo'.
//
// In VS.NET, a __property declaration creates an implicit
// member with an associated name, which can then be named
// in any of the normal ways an ordinary member could be.
//@atd | PseudoObject

// __builtin_any_type.  A placeholder type.  Useful for clients
// like debuggers that don't know what type to give something.
// Only a small number of operations are valid on expressions of
// unknown type, most notably explicit casts.
//@atd | UnknownAny

//@atd | BuiltinFn

// The type of a cast which, in ARC, would normally require a
// __bridge, but which might be okay depending on the immediate
// context.
//@atd | ARCUnbridgedCast

// A placeholder type for OpenMP array sections.
//@atd | OMPArraySection







//@atd ]
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitBuiltinType(const BuiltinType *T) {
  VisitType(T);
  std::string type_name;
  switch (T->getKind()) {






//===-- BuiltinTypes.def - Metadata about BuiltinTypes ----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file defines the database about various builtin singleton types.
//
//  BuiltinType::Id is the enumerator defining the type.
//
//  Context.SingletonId is the global singleton of this type.  Some global
//  singletons are shared by multiple types.
//
//    case BuiltinType::Id: { type_name = #Id; break; } - A builtin type that has not been
//    covered by any other #define.  Defining this macro covers all
//    the builtins.
//
//    SIGNED_TYPE(Id, SingletonId) - A signed integral type.
//
//    UNSIGNED_TYPE(Id, SingletonId) - An unsigned integral type.
//
//    FLOATING_TYPE(Id, SingletonId) - A floating-point type.
//
//    PLACEHOLDER_TYPE(Id, SingletonId) - A placeholder type.  Placeholder
//    types are used to perform context-sensitive checking of specific
//    forms of expression.
//
//    SHARED_SINGLETON_TYPE(Expansion) - The given expansion corresponds
//    to a builtin which uses a shared singleton type.
//
//===----------------------------------------------------------------------===//





















//===- Builtin Types ------------------------------------------------------===//

// void
case BuiltinType::Void: { type_name = #Void; break; }

//===- Unsigned Types -----------------------------------------------------===//

// 'bool' in C++, '_Bool' in C99
case BuiltinType::Bool: { type_name = #Bool; break; }

// 'char' for targets where it's unsigned
case BuiltinType::Char_U: { type_name = #Char_U; break; }

// 'unsigned char', explicitly qualified
case BuiltinType::UChar: { type_name = #UChar; break; }

// 'wchar_t' for targets where it's unsigned
case BuiltinType::WChar_U: { type_name = #WChar_U; break; }

// 'char16_t' in C++
case BuiltinType::Char16: { type_name = #Char16; break; }

// 'char32_t' in C++
case BuiltinType::Char32: { type_name = #Char32; break; }

// 'unsigned short'
case BuiltinType::UShort: { type_name = #UShort; break; }

// 'unsigned int'
case BuiltinType::UInt: { type_name = #UInt; break; }

// 'unsigned long'
case BuiltinType::ULong: { type_name = #ULong; break; }

// 'unsigned long long'
case BuiltinType::ULongLong: { type_name = #ULongLong; break; }

// '__uint128_t'
case BuiltinType::UInt128: { type_name = #UInt128; break; }

//===- Signed Types -------------------------------------------------------===//

// 'char' for targets where it's signed
case BuiltinType::Char_S: { type_name = #Char_S; break; }

// 'signed char', explicitly qualified
case BuiltinType::SChar: { type_name = #SChar; break; }

// 'wchar_t' for targets where it's signed
case BuiltinType::WChar_S: { type_name = #WChar_S; break; }

// 'short' or 'signed short'
case BuiltinType::Short: { type_name = #Short; break; }

// 'int' or 'signed int'
case BuiltinType::Int: { type_name = #Int; break; }

// 'long' or 'signed long'
case BuiltinType::Long: { type_name = #Long; break; }

// 'long long' or 'signed long long'
case BuiltinType::LongLong: { type_name = #LongLong; break; }

// '__int128_t'
case BuiltinType::Int128: { type_name = #Int128; break; }

//===- Floating point types -----------------------------------------------===//

// 'half' in OpenCL, '__fp16' in ARM NEON.
case BuiltinType::Half: { type_name = #Half; break; }

// 'float'
case BuiltinType::Float: { type_name = #Float; break; }

// 'double'
case BuiltinType::Double: { type_name = #Double; break; }

// 'long double'
case BuiltinType::LongDouble: { type_name = #LongDouble; break; }

// '__float128'
case BuiltinType::Float128: { type_name = #Float128; break; }

//===- Language-specific types --------------------------------------------===//

// This is the type of C++0x 'nullptr'.
case BuiltinType::NullPtr: { type_name = #NullPtr; break; }

// The primitive Objective C 'id' type.  The user-visible 'id'
// type is a typedef of an ObjCObjectPointerType to an
// ObjCObjectType with this as its base.  In fact, this only ever
// shows up in an AST as the base type of an ObjCObjectType.
case BuiltinType::ObjCId: { type_name = #ObjCId; break; }

// The primitive Objective C 'Class' type.  The user-visible
// 'Class' type is a typedef of an ObjCObjectPointerType to an
// ObjCObjectType with this as its base.  In fact, this only ever
// shows up in an AST as the base type of an ObjCObjectType.
case BuiltinType::ObjCClass: { type_name = #ObjCClass; break; }

// The primitive Objective C 'SEL' type.  The user-visible 'SEL'
// type is a typedef of a PointerType to this.
case BuiltinType::ObjCSel: { type_name = #ObjCSel; break; }

// OpenCL sampler_t.
case BuiltinType::OCLSampler: { type_name = #OCLSampler; break; }

// OpenCL event_t.
case BuiltinType::OCLEvent: { type_name = #OCLEvent; break; }

// OpenCL clk_event_t.
case BuiltinType::OCLClkEvent: { type_name = #OCLClkEvent; break; }

// OpenCL queue_t.
case BuiltinType::OCLQueue: { type_name = #OCLQueue; break; }

// OpenCL reserve_id_t.
case BuiltinType::OCLReserveID: { type_name = #OCLReserveID; break; }

// This represents the type of an expression whose type is
// totally unknown, e.g. 'T::foo'.  It is permitted for this to
// appear in situations where the structure of the type is
// theoretically deducible.
case BuiltinType::Dependent: { type_name = #Dependent; break; }

// The type of an unresolved overload set.  A placeholder type.
// Expressions with this type have one of the following basic
// forms, with parentheses generally permitted:
//   foo          # possibly qualified, not if an implicit access
//   foo          # possibly qualified, not if an implicit access
//   &foo         # possibly qualified, not if an implicit access
//   x->foo       # only if might be a static member function
//   &x->foo      # only if might be a static member function
//   &Class::foo  # when a pointer-to-member; sub-expr also has this type
// OverloadExpr::find can be used to analyze the expression.
//
// Overload should be the first placeholder type, or else change
// BuiltinType::isNonOverloadPlaceholderType()
case BuiltinType::Overload: { type_name = #Overload; break; }

// The type of a bound C++ non-static member function.
// A placeholder type.  Expressions with this type have one of the
// following basic forms:
//   foo          # if an implicit access
//   x->foo       # if only contains non-static members
case BuiltinType::BoundMember: { type_name = #BoundMember; break; }

// The type of an expression which refers to a pseudo-object,
// such as those introduced by Objective C's @property or
// VS.NET's __property declarations.  A placeholder type.  The
// pseudo-object is actually accessed by emitting a call to
// some sort of function or method;  typically there is a pair
// of a setter and a getter, with the setter used if the
// pseudo-object reference is used syntactically as the
// left-hand-side of an assignment operator.
//
// A pseudo-object reference naming an Objective-C @property is
// always a dot access with a base of object-pointer type,
// e.g. 'x.foo'.
//
// In VS.NET, a __property declaration creates an implicit
// member with an associated name, which can then be named
// in any of the normal ways an ordinary member could be.
case BuiltinType::PseudoObject: { type_name = #PseudoObject; break; }

// __builtin_any_type.  A placeholder type.  Useful for clients
// like debuggers that don't know what type to give something.
// Only a small number of operations are valid on expressions of
// unknown type, most notably explicit casts.
case BuiltinType::UnknownAny: { type_name = #UnknownAny; break; }

case BuiltinType::BuiltinFn: { type_name = #BuiltinFn; break; }

// The type of a cast which, in ARC, would normally require a
// __bridge, but which might be okay depending on the immediate
// context.
case BuiltinType::ARCUnbridgedCast: { type_name = #ARCUnbridgedCast; break; }

// A placeholder type for OpenMP array sections.
case BuiltinType::OMPArraySection: { type_name = #OMPArraySection; break; }









//===-- OpenCLImageTypes.def - Metadata about BuiltinTypes ------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//  This file extends builtin types database with OpenCL image singleton types.
//  Custom code should define one of those three macros:
//    GENERIC_IMAGE_TYPE(Type, Id) - a generic image with its Id without an
//      access type
//    case BuiltinType:: Id: - an image type
//      with given ID, singleton ID access type and a codegen suffix
//    GENERIC_IMAGE_TYPE_EXT(Type, Id, Ext) - a generic image with its Id and
//      required extension without an access type





case BuiltinType:: OCLImage1d##RO:
case BuiltinType:: OCLImage1dArray##RO:
case BuiltinType:: OCLImage1dBuffer##RO:
case BuiltinType:: OCLImage2d##RO:
case BuiltinType:: OCLImage2dArray##RO:
case BuiltinType:: OCLImage2dDepth##RO:
case BuiltinType:: OCLImage2dArrayDepth##RO:
case BuiltinType:: OCLImage2dMSAA##RO:
case BuiltinType:: OCLImage2dArrayMSAA##RO:
case BuiltinType:: OCLImage2dMSAADepth##RO:
case BuiltinType:: OCLImage2dArrayMSAADepth##RO:
case BuiltinType:: OCLImage3d##RO:

case BuiltinType:: OCLImage1d##WO:
case BuiltinType:: OCLImage1dArray##WO:
case BuiltinType:: OCLImage1dBuffer##WO:
case BuiltinType:: OCLImage2d##WO:
case BuiltinType:: OCLImage2dArray##WO:
case BuiltinType:: OCLImage2dDepth##WO:
case BuiltinType:: OCLImage2dArrayDepth##WO:
case BuiltinType:: OCLImage2dMSAA##WO:
case BuiltinType:: OCLImage2dArrayMSAA##WO:
case BuiltinType:: OCLImage2dMSAADepth##WO:
case BuiltinType:: OCLImage2dArrayMSAADepth##WO:
case BuiltinType:: OCLImage3d##WO:

case BuiltinType:: OCLImage1d##RW:
case BuiltinType:: OCLImage1dArray##RW:
case BuiltinType:: OCLImage1dBuffer##RW:
case BuiltinType:: OCLImage2d##RW:
case BuiltinType:: OCLImage2dArray##RW:
case BuiltinType:: OCLImage2dDepth##RW:
case BuiltinType:: OCLImage2dArrayDepth##RW:
case BuiltinType:: OCLImage2dMSAA##RW:
case BuiltinType:: OCLImage2dArrayMSAA##RW:
case BuiltinType:: OCLImage2dMSAADepth##RW:
case BuiltinType:: OCLImage2dArrayMSAADepth##RW:
case BuiltinType:: OCLImage3d##RW:


    llvm_unreachable("OCL builtin types are unsupported");
    break;
  }
  OF.emitSimpleVariant(type_name);
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::DecltypeTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define decltype_type_tuple type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitDecltypeType(const DecltypeType *T) {
  VisitType(T);
  dumpQualType(T->getUnderlyingType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FunctionTypeTupleSize() {
  return TypeTupleSize() + 1;
}
//@atd #define function_type_tuple type_tuple * function_type_info
//@atd type function_type_info = {
//@atd   return_type : qual_type
//@atd } <ocaml field_prefix="fti_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFunctionType(const FunctionType *T) {
  VisitType(T);
  ObjectScope Scope(OF, 1);
  OF.emitTag("return_type");
  dumpQualType(T->getReturnType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::FunctionProtoTypeTupleSize() {
  return FunctionTypeTupleSize() + 1;
}
//@atd #define function_proto_type_tuple function_type_tuple * params_type_info
//@atd type params_type_info = {
//@atd   ~params_type : qual_type list
//@atd } <ocaml field_prefix="pti_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitFunctionProtoType(
    const FunctionProtoType *T) {
  VisitFunctionType(T);

  bool HasParamsType = T->getNumParams() > 0;
  ObjectScope Scope(OF, 0 + HasParamsType);

  if (HasParamsType) {
    OF.emitTag("params_type");
    ArrayScope aScope(OF, T->getParamTypes().size());
    for (const auto &paramType : T->getParamTypes()) {
      dumpQualType(paramType);
    }
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::MemberPointerTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define member_pointer_type_tuple type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitMemberPointerType(
    const MemberPointerType *T) {
  VisitType(T);
  dumpQualType(T->getPointeeType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCObjectPointerTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define obj_c_object_pointer_type_tuple qual_type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCObjectPointerType(
    const ObjCObjectPointerType *T) {
  VisitType(T);
  dumpQualType(T->getPointeeType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCObjectTypeTupleSize() {
  return TypeTupleSize() + 1;
}
//@atd #define obj_c_object_type_tuple type_tuple * objc_object_type_info
//@atd type objc_object_type_info = {
//@atd   base_type : type_ptr;
//@atd   ~protocol_decls_ptr : pointer list;
//@atd   ~type_args : qual_type list;
//@atd } <ocaml field_prefix="ooti_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCObjectType(const ObjCObjectType *T) {
  VisitType(T);

  int numProtocols = T->getNumProtocols();
  bool HasProtocols = numProtocols > 0;
  bool isSpecialized = T->isSpecialized();
  ObjectScope Scope(OF, 1 + HasProtocols + isSpecialized);

  OF.emitTag("base_type");
  dumpQualTypeNoQuals(T->getBaseType());

  if (HasProtocols) {
    OF.emitTag("protocol_decls_ptr");
    ArrayScope aScope(OF, numProtocols);
    for (int i = 0; i < numProtocols; i++) {
      dumpPointer(T->getProtocol(i));
    }
  }

  if (isSpecialized) {
    OF.emitTag("type_args");
    ArrayScope aScope(OF, T->getTypeArgs().size());
    for (auto &argType : T->getTypeArgs()) {
      dumpQualType(argType);
    };
  }
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ObjCInterfaceTypeTupleSize() {
  return TypeTupleSize() + 1;
}
//@atd #define obj_c_interface_type_tuple type_tuple * pointer
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitObjCInterfaceType(
    const ObjCInterfaceType *T) {
  // skip VisitObjCObjectType deliberately - ObjCInterfaceType can't have any
  // protocols

  VisitType(T);
  dumpPointer(T->getDecl());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ParenTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define paren_type_tuple type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitParenType(const ParenType *T) {
  // this is just syntactic sugar
  VisitType(T);
  dumpQualType(T->getInnerType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::PointerTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define pointer_type_tuple qual_type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitPointerType(const PointerType *T) {
  VisitType(T);
  dumpQualType(T->getPointeeType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::ReferenceTypeTupleSize() {
  return TypeWithChildInfoTupleSize();
}
//@atd #define reference_type_tuple qual_type_with_child_info
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitReferenceType(const ReferenceType *T) {
  VisitType(T);
  dumpQualType(T->getPointeeType());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TagTypeTupleSize() {
  return TypeTupleSize() + 1;
}
//@atd #define tag_type_tuple type_tuple * pointer
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitTagType(const TagType *T) {
  VisitType(T);
  dumpPointer(T->getDecl());
}

template <class ATDWriter>
int ASTExporter<ATDWriter>::TypedefTypeTupleSize() {
  return TypeTupleSize() + 1;
}
//@atd #define typedef_type_tuple type_tuple * typedef_type_info
//@atd type typedef_type_info = {
//@atd   child_type : qual_type;
//@atd   decl_ptr : pointer;
//@atd } <ocaml field_prefix="tti_">
template <class ATDWriter>
void ASTExporter<ATDWriter>::VisitTypedefType(const TypedefType *T) {
  VisitType(T);
  ObjectScope Scope(OF, 2);
  OF.emitTag("child_type");
  dumpQualType(T->desugar());
  OF.emitTag("decl_ptr");
  dumpPointer(T->getDecl());
}

//@atd type c_type = [


//@atd | None@@Type of (@None@_type_tuple)

//===-- TypeNodes.def - Metadata about Type AST nodes -----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//  This file defines the AST type info database. Each type node is
//  enumerated by providing its name (e.g., "Builtin" or "Enum") and
//  base class (e.g., "Type" or "TagType"). Depending on where in the
//  abstract syntax tree the type will show up, the enumeration uses
//  one of five different macros:
//
//    //@atd | Class@@Type of (@Class@_type_tuple) - A type that can show up anywhere in the AST,
//    and might be dependent, canonical, or non-canonical. All clients
//    will need to understand these types.
//
//     - An abstract class that shows up in
//    the type hierarchy but has no concrete instances.
//
//    NON_CANONICAL_TYPE(Class, Base) - A type that can show up
//    anywhere in the AST but will never be a part of a canonical
//    type. Clients that only need to deal with canonical types
//    (ignoring, e.g., typedefs and other type alises used for
//    pretty-printing) can ignore these types.
//
//    DEPENDENT_TYPE(Class, Base) - A type that will only show up
//    within a C++ template that has not been instantiated, e.g., a
//    type that is always dependent. Clients that do not need to deal
//    with uninstantiated C++ templates can ignore these types.
//
//    NON_CANONICAL_UNLESS_DEPENDENT_TYPE(Class, Base) - A type that
//    is non-canonical unless it is dependent.  Defaults to TYPE because
//    it is neither reliably dependent nor reliably non-canonical.
//
//  There is a sixth macro, independent of the others.  Most clients
//  will not need to use it.
//
//    LEAF_TYPE(Class) - A type that never has inner types.  Clients
//    which can operate on such types more efficiently may wish to do so.
//
//===----------------------------------------------------------------------===//

















//@atd | Builtin@@Type of (@Builtin@_type_tuple)
//@atd | Complex@@Type of (@Complex@_type_tuple)
//@atd | Pointer@@Type of (@Pointer@_type_tuple)
//@atd | BlockPointer@@Type of (@BlockPointer@_type_tuple)

//@atd | LValueReference@@Type of (@LValueReference@_type_tuple)
//@atd | RValueReference@@Type of (@RValueReference@_type_tuple)
//@atd | MemberPointer@@Type of (@MemberPointer@_type_tuple)

//@atd | ConstantArray@@Type of (@ConstantArray@_type_tuple)
//@atd | IncompleteArray@@Type of (@IncompleteArray@_type_tuple)
//@atd | VariableArray@@Type of (@VariableArray@_type_tuple)
//@atd | DependentSizedArray@@Type of (@DependentSizedArray@_type_tuple)
//@atd | DependentSizedExtVector@@Type of (@DependentSizedExtVector@_type_tuple)
//@atd | Vector@@Type of (@Vector@_type_tuple)
//@atd | ExtVector@@Type of (@ExtVector@_type_tuple)

//@atd | FunctionProto@@Type of (@FunctionProto@_type_tuple)
//@atd | FunctionNoProto@@Type of (@FunctionNoProto@_type_tuple)
//@atd | UnresolvedUsing@@Type of (@UnresolvedUsing@_type_tuple)
//@atd | Paren@@Type of (@Paren@_type_tuple)
//@atd | Typedef@@Type of (@Typedef@_type_tuple)
//@atd | Adjusted@@Type of (@Adjusted@_type_tuple)
//@atd | Decayed@@Type of (@Decayed@_type_tuple)
//@atd | TypeOfExpr@@Type of (@TypeOfExpr@_type_tuple)
//@atd | TypeOf@@Type of (@TypeOf@_type_tuple)
//@atd | Decltype@@Type of (@Decltype@_type_tuple)
//@atd | UnaryTransform@@Type of (@UnaryTransform@_type_tuple)

//@atd | Record@@Type of (@Record@_type_tuple)
//@atd | Enum@@Type of (@Enum@_type_tuple)
//@atd | Elaborated@@Type of (@Elaborated@_type_tuple)
//@atd | Attributed@@Type of (@Attributed@_type_tuple)
//@atd | TemplateTypeParm@@Type of (@TemplateTypeParm@_type_tuple)
//@atd | SubstTemplateTypeParm@@Type of (@SubstTemplateTypeParm@_type_tuple)
//@atd | SubstTemplateTypeParmPack@@Type of (@SubstTemplateTypeParmPack@_type_tuple)
//@atd | TemplateSpecialization@@Type of (@TemplateSpecialization@_type_tuple)

//@atd | Auto@@Type of (@Auto@_type_tuple)
//@atd | DeducedTemplateSpecialization@@Type of (@DeducedTemplateSpecialization@_type_tuple)
//@atd | InjectedClassName@@Type of (@InjectedClassName@_type_tuple)
//@atd | DependentName@@Type of (@DependentName@_type_tuple)
//@atd | DependentTemplateSpecialization@@Type of (@DependentTemplateSpecialization@_type_tuple)
//@atd | PackExpansion@@Type of (@PackExpansion@_type_tuple)
//@atd | ObjCTypeParam@@Type of (@ObjCTypeParam@_type_tuple)
//@atd | ObjCObject@@Type of (@ObjCObject@_type_tuple)
//@atd | ObjCInterface@@Type of (@ObjCInterface@_type_tuple)
//@atd | ObjCObjectPointer@@Type of (@ObjCObjectPointer@_type_tuple)
//@atd | Pipe@@Type of (@Pipe@_type_tuple)
//@atd | Atomic@@Type of (@Atomic@_type_tuple)






// These types are always leaves in the type hierarchy.



//@atd ] <ocaml repr="classic" validator="Clang_ast_visit.visit_type">

template <class ATDWriter = JsonWriter, bool ForceYojson = false>
class ExporterASTConsumer : public ASTConsumer {
 private:
  std::shared_ptr<ASTExporterOptions> options;
  std::unique_ptr<raw_ostream> OS;

 public:
  using ASTConsumerOptions = ASTLib::ASTExporterOptions;
  using PreprocessorHandler = ASTPluginLib::EmptyPreprocessorHandler;
  using PreprocessorHandlerData = ASTPluginLib::EmptyPreprocessorHandlerData;

  ExporterASTConsumer(const CompilerInstance &CI,
                      std::shared_ptr<ASTConsumerOptions> options,
                      std::shared_ptr<PreprocessorHandlerData> sharedData,
                      std::unique_ptr<raw_ostream> &&OS)
      : options(options), OS(std::move(OS)) {
    if (ForceYojson) {
      options->atdWriterOptions.useYojson = true;
    }
  }

  virtual void HandleTranslationUnit(ASTContext &Context) {
    TranslationUnitDecl *D = Context.getTranslationUnitDecl();
    ASTExporter<ATDWriter> P(*OS, Context, *options);
    P.dumpDecl(D);
  }
};

typedef ASTPluginLib::SimplePluginASTAction<
    ASTLib::ExporterASTConsumer<ASTLib::JsonWriter, false>>
    JsonExporterASTAction;
typedef ASTPluginLib::SimplePluginASTAction<
    ASTLib::ExporterASTConsumer<ASTLib::JsonWriter, true>>
    YojsonExporterASTAction;
typedef ASTPluginLib::SimplePluginASTAction<
    ASTLib::ExporterASTConsumer<ATDWriter::BiniouWriter<llvm::raw_ostream>,
                                true>>
    BiniouExporterASTAction;

} // end of namespace ASTLib

