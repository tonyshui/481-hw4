Caml1999N018����            0crashcontext.mli����  
�    \  ~�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����,InferModules@��.<command-line>A@@�A@N@@@`@�����Je@e@@e@e@@@e@@e@e������$IStd��8backend/crashcontext.mliJU[�JU_@@��JUU�JU_@@��JUU�JU_@�����*ocaml.text��|A@ ��}A@ �A�������
  �
   CRASHCONTEXT Intro [experimental]:

   Crashcontext is an experimental analysis (in the future: a family of
   analyses). It takes one or more stacktraces representing crashes
   corresponding to the codebase being analyzed and expands them into
   crashcontext.json files. These files incorporate further information about
   the code that might have executed before the crash.

   This analysis is run with '-a crashcontext' and must take either of the
   following extra arguments:

    --stacktrace stacktrace.json (a single stacktrace, output defaults to
                                  crashcontext/crashcontext.json)
    --stacktraces-dir dir (will expand every json stacktace in dir, output
                           crashcontext files will be saved to dir as well)

   For further information, take a look at tests under:

    infer/tests/codetoanalyze/java/crashcontext/ and
    infer/tests/endtoend/java/crashcontext/
@��Laa�a@@@��Laa�a@@��!Laa�"a@���Р5crashcontext_epilogue��*c�+c)@���,in_buck_mode����$bool��6c9�7c=@@��9c9�:c=@@����$unit��AcA�BcE@@��DcA�EcE@@��Gc,�HcE@@@���)ocaml.doc���A@ ���A@ �A�������
  �
   Runs crashcontext epilogue code, which takes the per-method summaries
   produced by crashcontext related analysis (future: analyses) and stitches
   them together into a final crashcontext.json output file.
   This code should run after all checkers when running with '-a crashcontext'.
   When running with buck, summaries are stitched across multiple buck targets,
   so this runs at the end of the parent buck infer process only.
   TODO: Similar integration with build systems other than buck.
@��YdFF�Zl@B@@@��\dFF�]l@B@@@��_c�`cE@��bc�ccE@���Р,pp_stacktree��knDH�lnDT@��@�����&Format)formatter��wnDW�xnDg@@��znDW�{nDg@@��@�����+Stacktree_t)stacktree���nDk��nD�@@���nDk��nD�@@����$unit���nD���nD�@@���nD���nD�@@���nDk��nD�@@���nDW��nD�@@@@���nDD��nD�@���nDD��nD�@@