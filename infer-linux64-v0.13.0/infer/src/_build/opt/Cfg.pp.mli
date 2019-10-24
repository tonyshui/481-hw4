Caml1999N018����            'Cfg.mli����  h  Z  �  ������1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����,InferModules@��.<command-line>A@@�A@N@@@`@�����Je@e@@e@e@@@e@@e@e������$IStd��*IR/Cfg.mliKsy�Ks}@@��Kss�Ks}@@��Kss�Ks}@�����*ocaml.text��|A@ ��}A@ �A�������	1 Control Flow Graph for Interprocedural Analysis @��M�M�@@@��M�M�@@��!M�"M�@���A�    �#cfg��+P���,P��@@@@A@���)ocaml.doc���A@ ���A@ �A�������6 A control-flow graph @��=O���>O��@@@��@O���AO��@@@��CP���DP��@@��FP���GP��@���Р2load_cfg_from_file��OR���PR��@��@�����"DB(filename��[R���\R�@@��^R���_R�@@����&option��fR�	�gR�@�����#cfg��oR��pR�@@��rR��sR�@@@��uR��vR�@@��xR���yR�@@@���M���A@ ���A@ �A�������8 Load a cfg from a file @���S��S-@@@���S��S-@@@���R����R�@���R����R�@���Р1store_cfg_to_file���U/3��U/D@���+source_file�����*SourceFile!t���U/S��U/_@@���U/S��U/_@@��@�����"DB(filename���U/c��U/n@@���U/c��U/n@@��@����#cfg���U/r��U/u@@���U/r��U/u@@����$unit���U/y��U/}@@���U/y��U/}@@���U/r��U/}@@���U/c��U/}@@���U/G��U/}@@@������NA@ ��OA@ �A�������	T Save a cfg into a file, and save a copy of the source files if the boolean is true @���V~~��V~�@@@���V~~��V~�@@@���U//��U/}@���U//��U/}@�������jA@ ��kA@ �A�������	7 {2 Functions for manipulating an interprocedural CFG} @��	X���
X�@@@��X���X�@@��X���X�@���Р*create_cfg��Z�Z%@��@����$unit��"Z(�#Z,@@��%Z(�&Z,@@����#cfg��-Z0�.Z3@@��0Z0�1Z3@@��3Z(�4Z3@@@������A@ ���A@ �A�������8 create a new empty cfg @��D[44�E[4Q@@@��G[44�H[4Q@@@��JZ�KZ3@��MZ�NZ3@���Р0create_proc_desc��V]SW�W]Sg@��@����#cfg��`]Sj�a]Sm@@��c]Sj�d]Sm@@��@�����.ProcAttributes!t��o]Sq�p]S�@@��r]Sq�s]S�@@�����(Procdesc!t��|]S��}]S�@@��]S���]S�@@���]Sq��]S�@@���]Sj��]S�@@@���Z���A@ ���A@ �A�������7 Create a new procdesc @���^����^��@@@���^����^��@@@���]SS��]S�@���]SS��]S�@���Р.iter_proc_desc���`����`��@��@����#cfg���`����`��@@���`����`��@@��@��@������#Typ(Procname!t���`����`��@@���`����`��@@��@�����(Procdesc!t���`����`��@@���`����`��@@����$unit���`����`��@@���`����`��@@���`����`��@@���`����`��@@����$unit���`����`��@@���`����`��@@���`����`��@@���`����`��@@@���ΰ�kA@ ��lA@ �A�������	! Iterate over all the procdesc's @��
a���a�@@@��a���a�@@@��`���`��@��`���`��@���Р8find_proc_desc_from_name��c!%�c!=@��@����#cfg��&c!@�'c!C@@��)c!@�*c!C@@��@������#Typ(Procname!t��7c!G�8c!U@@��:c!G�;c!U@@����&option��Bc!d�Cc!j@������(Procdesc!t��Mc!Y�Nc!c@@��Pc!Y�Qc!c@@@��Sc!Y�Tc!j@@��Vc!G�Wc!j@@��Yc!@�Zc!j@@@���.���A@ ���A@ �A�������	B Find the procdesc given the proc name. Return None if not found. @��jdkk�kdk�@@@��mdkk�ndk�@@@��pc!!�qc!j@��sc!!�tc!j@���Р-get_all_procs��|f���}f��@��@����#cfg���f����f��@@���f����f��@@����$list���f����f��@������(Procdesc!t���f����f��@@���f����f��@@@���f����f��@@���f����f��@@@���z��A@ ��A@ �A�������	/ Get all the procedures (defined and declared) @���g����g�@@@���g����g�@@@���f����f��@���f����f��@���Р1get_defined_procs���i��i*@��@����#cfg���i-��i0@@���i-��i0@@����$list���i?��iC@������(Procdesc!t���i4��i>@@���i4��i>@@@���i4��iC@@���i-��iC@@@���ư�cA@ ��dA@ �A�������	6 Get the procedures whose body is defined in this cfg @��jDD�jD@@@��jDD�jD@@@��i�	iC@��i�iC@���Р.iter_all_nodes��l���l��@���&sorted����$bool�� l���!l��@@��#l���$l��@@��@��@�����(Procdesc!t��1l���2l��@@��4l���5l��@@��@������(Procdesc$Node!t��Bl���Cl��@@��El���Fl��@@����$unit��Ml���Nl��@@��Pl���Ql��@@��Sl���Tl��@@��Vl���Wl��@@��@����#cfg��`l���al��@@��cl���dl��@@����$unit��kl���ll��@@��nl���ol��@@��ql���rl��@@��tl���ul��@@��wl���xl��@@@���L���A@ ���A@ �A�������	' Iterate over all the nodes in the cfg @���m����m�	@@@���m����m�	@@@���l����l��@���l����l��@���Р7check_cfg_connectedness���o��o&@��@����#cfg���o)��o,@@���o)��o,@@����$unit���o0��o4@@���o0��o4@@���o)��o4@@@������'A@ ��(A@ �A�������	* checks whether a cfg is connected or not @���p55��p5d@@@���p55��p5d@@@���o��o4@���o��o4@���Р0remove_proc_desc���rfj��rfz@��@����#cfg���rf}��rf�@@���rf}��rf�@@��@������#Typ(Procname!t���rf���rf�@@���rf���rf�@@����$unit���rf���rf�@@��rf��rf�@@��rf��rf�@@��rf}�rf�@@@���ܰ�yA@ ��zA@ �A�������	2 Remove the procdesc from the control flow graph. @��s���s��@@@��s���s��@@@��rff�rf�@��!rff�"rf�@���Р0specialize_types��*u���+u��@��@�����(Procdesc!t��6u���7u��@@��9u���:u��@@��@������#Typ(Procname!t��Gu���Hu�@@��Ju���Ku�@@��@����$list��Tu��Uu�@���������#Exp!t��bu��cu�@@��eu��fu�@@������#Typ!t��pu��qu�@@��su��tu�@@@��vu��wu�@@@��yu��zu�@@�����(Procdesc!t���u�#��u�-@@���u�#��u�-@@���u���u�-@@���u����u�-@@���u����u�-@@@���d��A@ ��A@ �A�������
  L Creates a copy of a procedure description and a list of type substitutions of the form
    (name, typ) where name is a parameter. The resulting procdesc is isomorphic but
    all the type of the parameters are replaced in the instructions according to the list.
    The virtual calls are also replaced to match the parameter types @���v..��y8@@@���v..��y8@@@���u����u�-@���u����u�-@���Р2pp_proc_signatures���{����{��@��@�����&Format)formatter���{����{��@@���{����{��@@��@����#cfg���{����{��@@���{����{��@@����$unit���{����{��@@���{����{��@@���{����{��@@���{����{��@@@@���{����{��@���{����{��@@