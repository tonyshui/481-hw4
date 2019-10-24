Caml1999N018����            /ProcessPool.mli����  
9  �  �  B�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����,InferModules@��.<command-line>A@@�A@N@@@`@�����Je@e@@e@e@@@e@@e@e������$IStd��4base/ProcessPool.mliJQW�JQ[@@��JQQ�JQ[@@��JQQ�JQ[@���A�    �!t��M���M��@@@@A@���)ocaml.doc���A@ ���A@ �A�������	B Pool of processes to execute in parallel up to a number of jobs. @��#L]]�$L]�@@@��&L]]�'L]�@@@��)M���*M��@@��,M���-M��@�����/Execution_error��5O���6O��@�������&string��@O���AO��@@��CO���DO��@@@@��FO���GO��@���5���A@ ���A@ �A�������	! Infer process execution failure @��WO���XO��@@@��ZO���[O��@@@��]O���^O��@���Р&create��fQ���gQ�@���$jobs����#int��rQ�
�sQ�@@��uQ�
�vQ�@@����!t��}Q��~Q�@@���Q���Q�@@���Q���Q�@@@���r���A@ ���A@ �A�������	  Create a new pool of processes @���R��R8@@@���R��R8@@@���Q����Q�@���Q����Q�@���Р+start_child���T:>��T:I@���!f��@��!a���T:O��T:Q@@����$unit���T:U��T:Y@@���T:U��T:Y@@���T:O��T:Y@@���$pool����!t���T:c��T:d@@���T:c��T:d@@��@��!a���T:h��T:j@@����$unit���T:n��T:r@@���T:n��T:r@@���T:h��T:r@@���T:^��T:r@@���T:L��T:r@@@���ڰ�]A@ ��^A@ �A�������	_ Start a new child process in the pool.
    If all the jobs are taken, wait until one is free. @���Uss��V��@@@���Uss� V��@@@��T::�T:r@��T::�T:r@���Р(wait_all��X���X��@��@����!t��X���X��@@��X���X��@@����$unit��#X���$X��@@��&X���'X��@@��)X���*X��@@@������A@ ���A@ �A�������	< Wait until all the currently executing processes terminate @��:Y���;Y�3@@@��=Y���>Y�3@@@��@X���AX��@��CX���DX��@���Р(in_child��L[59�M[5A@����#ref��T[5I�U[5L@�����$bool��][5D�^[5H@@��`[5D�a[5H@@@��c[5D�d[5L@@@���R���A@ ���A@ �A�������	C Keep track of whether the current execution is in a child process @��t\MM�u\M�@@@��w\MM�x\M�@@@��z[55�{[5L@��}[55�~[5L@@