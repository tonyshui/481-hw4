Caml1999M020����            1typeAnnotation.ml����  So  �  =  <7�����1ocaml.ppx.context��&_none_A@ �A����������)tool_name���.migrate_driver@@����,include_dirs����"[]@@����)load_path!����
%@%@����,open_modules*����.@.@����+for_package3����$None8@8@����%debug=����%falseB@B@����'cookiesG����"::L����������,library-name@W@����,InferModules@��.<command-line>A@@�A@N@@@`@�����Je@e@@e@e@@@e@@e@e������$IStd��;eradicate/typeAnnotation.mlJX^�JXb@@��JXX�JXb@@��JXX�JXb@�����!L��Kcj�Kck@����'Logging��Kcn�Kcu@��Kcn�Kcu@@@��Kcc�Kcu@��!Kcc�"Kcu@�����!F��*Lv}�+Lv~@����&Format��2Lv��3Lv�@��5Lv��6Lv�@@@��8Lvv�9Lv�@��;Lvv�<Lv�@�����!P��DM���EM��@����&Printf��LM���MM��@��OM���PM��@@@��RM���SM��@��UM���VM��@�����*ocaml.text���A@ ���A@ �A�������	+ Module to represent annotations on types. @��iO���jO��@@@��lO���mO��@@��oO���pO��@�����.AnnotationsMap��xQ���yQ��@��������$Caml#Map$Make���Q����Q��@���Q����Q��@@�����A�    �!t���R���R�@@@@A������2AnnotatedSignature*annotation���R���R�#@@���R���R�#@@���(deriving���R�'��R�/@��������'compare���R�0��R�7@���R�0��R�7@@@���R�0��R�7@@@���R����R�8@@���R����R�8@���@���@���R����R�8@@��@@���@���R����R�8@@����F���R���R�@@���R���R�@@���R����R�8@@����"()���R����R�8@@���R����R�8@@���R����R�8@@@���R����R�8@@���R����R�8@���@�����'compare�� R���R�8@��R���R�8@@�  �����o2compare_annotation��R��R�#@��R��R�#@@��@�������R��R�@@��R��R�@@��@�������&R��'R�@@��)R��*R�@@����#int��1R��2R�@@��4R��5R�@@��7R��8R�@@��:R��;R�@@��=R���>R�8@@@��@R���AR�8@@��CR���DR�8@���@���@��LR���MR�8@@����T��SR���TR�8@��VR���WR�8@@@��YR���ZR�8@@��\R���]R�8@@��_Q���`S9<@@��bQ���cS9=@@@��eQ���fS9=@��hQ���iS9=@���A�    �!t��rU?D�sU?E@@@��Р#map��zU?I�{U?L@@�����.AnnotationsMap!t���U?S��U?c@�����$bool���U?N��U?R@@���U?N��U?R@@@���U?N��U?c@@���U?I��U?d@@�Р&origin���U?e��U?k@@�����*TypeOrigin!t���U?m��U?y@@���U?m��U?y@@���U?e��U?y@@@A@���(deriving���U?~��U?�@��������'compare���U?���U?�@���U?���U?�@@@���U?���U?�@@@���U??��U?�@@���U??��U?�@���@���@���U??��U?�@@��@@���@���U??��U?�@@����s���U?D��U?E@@���U?D��U?E@@���U??��U?�@@����
���U??��U?�@@���U??��U?�@@���U??��U?�@@@���U??��U?�@@���U??��U?�@���@�����	��U??�	U?�@��U??�U?�@@�  ��@@���'a__003_��U??�U?�@��U??�U?�@@��@@���'b__004_��"U??�#U?�@��%U??�&U?�@@���������/Ppx_compare_lib*phys_equal��3U?S�4U?c@��6U?S�7U?c@@��@����'a__003_��@U??�AU?�@��CU??�DU?�@@��@����'b__004_��MU??�NU?�@��PU??�QU?�@@@��SU?S�TU?c@@���!0@��ZU?S�[U?c@@�����������h��gU?S�hU?c@��jU?S�kU?c@@��@����,compare_bool��tU?N�uU?R@��wU?N�xU?R@@��@������C���U??��U?�@���U??��U?�@@�����U?I��U?L@���U?I��U?d@@��@������L���U??��U?�@���U??��U?�@@��'���U?I��U?L@���U?I��U?d@@@���U?S��U?c@@�����!0@���U?S��U?c@@@�����������U?m��U?y@���U?m��U?y@@��@����������U??��U?�@���U??��U?�@@��3���U?e��U?k@���U?e��U?y@@��@����������U??��U?�@���U??��U?�@@��I���U?e��U?k@���U?e��U?y@@@���U?m��U?y@@�����!n���U?S��U?c@���U?S��U?c@@@����!n���U?S� U?c@��U?S�U?c@@@��U?S�U?c@@��U?S�	U?c@@��U??�U?�@@��U??�U?�@@��@�������U?D�U?E@@��U?D�U?E@@��@�������#U?D�$U?E@@��&U?D�'U?E@@�������-U?D�.U?E@@��0U?D�1U?E@@��3U?D�4U?E@@��6U?D�7U?E@@��9U??�:U?�@@@��<U??�=U?�@@��?U??�@U?�@���@���@��HU??�IU?�@@����P��OU??�PU?�@��RU??�SU?�@@@��UU??�VU?�@@��XU??�YU?�@���@�����%equal��dW���eW��@��gW���hW��@@��@@���(_x__007_��pW���qW��@��sW���tW��@@��@@���(_x__008_��|W���}W��@��W����W��@@�����  ��������W����W��@���W����W��@@��@����!t���W����W��@@���W����W��@@��@�������W����W��@@���W����W��@@�@���W����W��@@���W����W��@@���W����W��@@���W����W��@@��@����(_x__007_���W����W��@���W����W��@@��@����(_x__008_���W����W��@���W����W��@@@���W����W��@@�����!0@���W����W��@@@����$true���W����W��@@���W����W��@@���@���W����W��@@@����%false���W����W��@@���W����W��@@@���W����W��@@���W����W��@@�� W���W��@@@��W���W��@@��W���W��@���@�����)get_value��Y���Y��@��Y���Y��@@��@@���#ann��Y���Y��@��!Y���"Y��@@��@@���"ta��*Y���+Y��@��-Y���.Y��@@���������.AnnotationsMap$find��;Z���<Z��@��>Z���?Z��@@��@����#ann��HZ���IZ��@��KZ���LZ��@@��@������"ta��WZ���XZ��@��ZZ���[Z��@@��#map��`Z���aZ��@��cZ���dZ��@@@��fZ���gZ��@@������)Not_found��p[���q[��@@��s[���t[��@@@����%false��{[��|[�@@��~[��[�@@@���Z����[�@@���Y����[�A@���Y����[�A@@���Y����[�@@���Y����[�@���@�����)set_value���]
��]
@���]
��]
@@��@@���#ann���]
��]
@���]
��]
@@��@@���!b���]
��]
@���]
��]
@@��@@���"ta���]
��]
 @���]
��]
 @@���������$Bool%equal���^#(��^#2@���^#(��^#2@@��@������)get_value���^#4��^#=@���^#4��^#=@@��@����#ann���^#>��^#A@���^#>��^#A@@��@����"ta���^#B��^#D@���^#B��^#D@@@���^#3��^#E@@��@����!b��^#F�^#G@��
^#F�^#G@@@��^#(�^#G@@����"ta��^#M�^#O@��^#M�^#O@@�������#map��#^#^�$^#a@�������.AnnotationsMap#add��/^#c�0^#u@��2^#c�3^#u@@��@����#ann��<^#v�=^#y@��?^#v�@^#y@@��@����!b��I^#z�J^#{@��L^#z�M^#{@@��@������"ta��X^#|�Y^#~@��[^#|�\^#~@@��#map��a^#�b^#�@��d^#|�e^#�@@@��g^#c�h^#�@@@�����"ta��p^#V�q^#X@��s^#V�t^#X@@��v^#U�w^#�@@��y^#%�z^#�@@��|]
�}^#�A@��]
��^#�A@���]
��^#�A@@���]

��^#�@@���]

��^#�@���@�����,get_nullable���`����`��@���`����`��@@������)get_value���`����`��@���`����`��@@��@�����2AnnotatedSignature(Nullable���`����`��@@���`����`��@@@���`����`��@@@���`����`��@@���`����`��@���@�����+get_present���b����b��@���b����b��@@������)get_value���b����b��@���b����b��@@��@����'Present���b����b��@@���b����b��@@@���b����b��@@@���b����b��@@���b����b��@���@�����,set_nullable���d����d��@���d����d��@@��@@���!b��d���d��@��	d���
d��@@������)set_value��d���d�@��d���d�@@��@����(Nullable�� d��!d�@@��#d��$d�@@��@����!b��-d��.d�@��0d��1d�@@@��3d���4d�@@��6d���7d�A@@��9d���:d�@@��<d���=d�@���@�����+set_present��Hf�If@��Kf�Lf@@��@@���!b��Tf�Uf @��Wf�Xf @@������)set_value��af#�bf,@��df#�ef,@@��@����'Present��nf-�of4@@��qf-�rf4@@��@����!b��{f5�|f6@��~f5�f6@@@���f#��f6@@���f��f6A@@���f��f6@@���f��f6@���@�����,descr_origin���h8<��h8H@���h8<��h8H@@��@@���$tenv���h8I��h8M@���h8I��h8M@@��@@���"ta���h8N��h8P@���h8N��h8P@@��@�����)descr_opt���iSY��iSb@���iSY��iSb@@�������*TypeOrigin/get_description���iSe��iS@���iSe��iS@@��@����$tenv���iS���iS�@���iS���iS�@@��@������"ta���iS���iS�@���iS���iS�@@��&origin���iS���iS�@���iS���iS�@@@���iSe��iS�@@@���iSU��iS�@@������)descr_opt��j���j��@��j���j��@@������$None��k���k��@@��k���k��@@@������ @��l���l��@@�����$None��&l���'l��@@��)l���*l��@@�����$None��2l���3l��@@��5l���6l��@@@��8l���9l��@@������$Some��Bm���Cm��@�������#str��Mm���Nm��@��Pm���Qm��@@����'loc_opt��Xm���Ym��@��[m���\m��@@����'sig_opt��cm���dm��@��fm���gm��@@@��im���jm��@@��lm���mm��@@@���������!^��yn���zn��@��|n���}n��@@��@���)(Origin: @���n����n��@@��@������!^���n���n�@���n���n�@@��@����#str���n����n�@���n����n�@@��@���!)@���n���n�@@@���n����n�@@@���n����n�@@�����'loc_opt���n�
��n�@���n�
��n�@@�����'sig_opt���n���n�@���n���n�@@@���n����n�@@@���j����n�@@���iSU��n�@@���h8N��n�A@���h8I��n�A@@���h88��n�@@���h88��n�@���@�����)to_string���p!��p*@���p!��p*@@��@@���"ta���p+��p-@���p+��p-@@��@�����*nullable_s��q06�q0@@��q06�q0@@@��������,get_nullable��q0F�q0R@��q0F�q0R@@��@����"ta��q0S� q0U@��"q0S�#q0U@@@��%q0F�&q0U@@���* @Nullable@��,q0[�-q0g@@���� @��4q0m�5q0o@@��7q0C�8q0o@@@��:q02�;q0o@@��@�����)present_s��Ersy�Frs�@��Hrsy�Irs�@@��������+get_present��Trs��Urs�@��Wrs��Xrs�@@��@����"ta��ars��brs�@��drs��ers�@@@��grs��hrs�@@���) @Present@��nrs��ors�@@���� @��vrs��wrs�@@��yrs��zrs�@@@��|rsu�}rs�@@������!^���s����s��@���s����s��@@��@����*nullable_s���s����s��@���s����s��@@��@����)present_s���s����s��@���s����s��@@@���s����s��@@���rsu��s��@@���q02��s��@@���p+��s��A@@���p��s��@@���p��s��@���@�����$join���u����u��@���u����u��@@��@@���#ta1���u����u��@���u����u��@@��@@���#ta2���u����u��@���u����u��@@��@��������$nul1���v����v��@���v����v��@@����$nul2���v����v��@���v����v��@@@���v����v��@@���������,get_nullable��	v���		v� @��	v���	v� @@��@����#ta1��	v��	v�@��	v��	v�@@@��	v���	v�@@�������,get_nullable��	&v��	'v�@��	)v��	*v�@@��@����#ta2��	3v��	4v�@��	6v��	7v�@@@��	9v��	:v�@@@��	<v���	=v�@@@��	?v���	@v�@@��@�����+choose_left��	Jw!�	Kw,@��	Mw!�	Nw,@@���������$nul1��	Zw6�	[w:@��	]w6�	^w:@@�����$nul2��	fw<�	gw@@��	iw<�	jw@@@@��	lw5�	mwA@@������������	xwG�	ywL@@��	{wG�	|wL@@�����$true��	�wN�	�wR@@��	�wN�	�wR@@@��	�wG�	�wR@@@������	�wV�	�w[@@��	�wV�	�w[@@���@��	�w^�	�w_@@@������	�wc�	�wg@@��	�wc�	�wg@@@��	�w/�	�wg@@@��	�w�	�wg@@��@��������)ta_chosen��	�xkq�	�xkz@��	�xkq�	�xkz@@����(ta_other��	�xk|�	�xk�@��	�xk|�	�xk�@@@��	�xkq�	�xk�@@������+choose_left��	�xk��	�xk�@��	�xk��	�xk�@@�������#ta1��	�xk��	�xk�@��	�xk��	�xk�@@�����#ta2��	�xk��	�xk�@��	�xk��	�xk�@@@��	�xk��	�xk�@@��������#ta2��	�xk��
 xk�@��
xk��
xk�@@�����#ta1��
xk��
xk�@��
xk��
xk�@@@��
xk��
xk�@@��
xk��
xk�@@@��
xkm�
xk�@@��@�����'present��
"y���
#y��@��
%y���
&y��@@������"&&��
/y���
0y��@��
2y���
3y��@@��@������+get_present��
>y���
?y��@��
Ay���
By��@@��@����#ta1��
Ky���
Ly��@��
Ny���
Oy��@@@��
Qy���
Ry��@@��@������+get_present��
]y���
^y��@��
`y���
ay��@@��@����#ta2��
jy���
ky��@��
my���
ny��@@@��
py���
qy��@@@��
sy���
ty��@@@��
vy���
wy��@@��@�����&origin��
�z���
�z��@��
�z���
�z��@@���������$Bool%equal��
�{��
�{�@��
�{��
�{�@@��@����$nul1��
�{��
�{�@��
�{��
�{�@@��@����$nul2��
�{��
�{�@��
�{��
�{�@@@��
�{��
�{�@@�������*TypeOrigin$join��
�{��
�{�.@��
�{��
�{�.@@��@������)ta_chosen��
�{�/�
�{�8@��
�{�/�
�{�8@@��&origin��
�{�9�
�{�?@��
�{�/�
�{�?@@��@������(ta_other��
�{�@�
�{�H@��
�{�@�
�{�H@@��&origin��
�{�I�
�{�O@��
�{�@�
�{�O@@@��
�{��
�{�O@@�������)ta_chosen��
�|PY� |Pb@��|PY�|Pb@@��&origin��|Pc�	|Pi@��|PY�|Pi@@��{��|Pi@@@��z���|Pi@@��@�����#ta'��~ou�~ox@��~ou� ~ox@@������+set_present��)~o{�*~o�@��,~o{�-~o�@@��@����'present��6~o��7~o�@��9~o��:~o�@@��@������&origin��E~o��F~o�@������L~o��M~o�@��O~o��P~o�@@@�����)ta_chosen��X~o��Y~o�@��[~o��\~o�@@��^~o��_~o�@@@��a~o{�b~o�@@@��d~oq�e~o�@@��������%equal��p���q��@��s���t��@@��@����#ta'��}���~��@���������@@��@����#ta1���������@���������@@@���������@@����$None���������@@���������@@�����$Some���������@�����#ta'���������@���������@@���������@@���������@@���~oq����@@���z������@@���y������@@���xkm����@@���w����@@���v������@@���u������A@���u������A@@���u������@@���u������@���@�����*get_origin��� A���� A��@��� A���� A��@@��@@���"ta��� A���� A��@��� A���� A��@@������"ta��� A���� A��@��� A���� A��@@��&origin�� A��� A��@�� A��� A��@@�� A���	 A��A@@�� A��� A��@@�� A��� A��@���@�����5origin_is_fun_library�� C��� C�@�� C��� C�@@��@@���"ta��& C��' C�@��) C��* C�@@��������*get_origin��5 D�6 D&@��8 D�9 D&@@��@����"ta��B D'�C D)@��E D'�F D)@@@��H D�I D)@@�������*TypeOrigin$Proc��T E/3�U E/B@����+proc_origin��\ E/C�] E/N@��_ E/C�` E/N@@��b E/3�c E/N@@@������+proc_origin��l FOU�m FO`@��o FOU�p FO`@@���*TypeOrigin*is_library��w FOa�x FOv@��z FOU�{ FOv@@���@��� Gw{�� Gw|@@@������� H}��� H}�@@��� H}��� H}�@@@��� D�� H}�@@��� C��� H}�A@@��� C���� H}�@@��� C���� H}�@���@�����%const��� J���� J��@��� J���� J��@@��@@���*annotation��� J���� J��@��� J���� J��@@��@@���!b��� J���� J��@��� J���� J��@@��@@���&origin��� J���� J��@��� J���� J��@@��@��������(nullable��� K���� K��@��� K���� K��@@����'present��� K���� K��@��� K���� K��@@@��� K���� K��@@������*annotation��� L���� L��@��� L���� L��@@�������2AnnotatedSignature(Nullable�� M��� M��@@�� M��� M��@@@�������!b�� N	 		� N	 	
@�� N	 		� N	 	
@@�������� N	 	� N	 	@@�� N	 	� N	 	@@@��  N	 	�! N	 	@@�������2AnnotatedSignature'Present��, O		�- O		3@@��/ O		�0 O		3@@@����������9 P	4	=�: P	4	B@@��< P	4	=�= P	4	B@@�����!b��E P	4	D�F P	4	E@��H P	4	D�I P	4	E@@@��K P	4	<�L P	4	F@@@��N L���O P	4	F@@@��Q K���R P	4	F@@��@�����"ta��\ R	L	R�] R	L	T@��_ R	L	R�` R	L	T@@������&origin��i R	L	X�j R	L	^@������p R	L	X�q R	L	^@��s R	L	X�t R	L	^@@����#map��{ R	L	`�| R	L	c@�����.AnnotationsMap%empty��� R	L	e�� R	L	y@��� R	L	e�� R	L	y@@@@��� R	L	W�� R	L	z@@@��� R	L	N�� R	L	z@@������+set_present��� S	~	��� S	~	�@��� S	~	��� S	~	�@@��@����'present��� S	~	��� S	~	�@��� S	~	��� S	~	�@@��@������,set_nullable��� S	~	��� S	~	�@��� S	~	��� S	~	�@@��@����(nullable��� S	~	��� S	~	�@��� S	~	��� S	~	�@@��@����"ta��� S	~	��� S	~	�@��� S	~	��� S	~	�@@@��� S	~	��� S	~	�@@@��� S	~	��� S	~	�@@��� R	L	N�� S	~	�@@��� K���� S	~	�@@��� J���� S	~	�A@��� J���� S	~	�A@��� J���� S	~	�A@@��� J���� S	~	�@@��� J���� S	~	�@���@�����+with_origin��� U	�	��� U	�	�@��� U	�	��� U	�	�@@��@@���"ta�� U	�	�� U	�	�@�� U	�	�� U	�	�@@��@@���!o�� U	�	�� U	�	�@�� U	�	�� U	�	�@@������&origin�� U	�	�� U	�	�@����!o��% U	�	��& U	�	�@��( U	�	��) U	�	�@@@�����"ta��1 U	�	��2 U	�	�@��4 U	�	��5 U	�	�@@��7 U	�	��8 U	�	�@@��: U	�	��; U	�	�A@��= U	�	��> U	�	�A@@��@ U	�	��A U	�	�@@��C U	�	��D U	�	�@���@�����4from_item_annotation��O W	�	��P W	�	�@��R W	�	��S W	�	�@@��@@���"ia��[ W	�	��\ W	�	�@��^ W	�	��_ W	�	�@@��@@���&origin��g W	�	��h W	�	�@��j W	�	��k W	�	�@@��@�����"ta��u X

�v X

	@��x X

�y X

	@@������%const��� X

�� X

@��� X

�� X

@@��@����(Nullable��� X

�� X

@@��� X

�� X

@@��@�������+Annotations.ia_is_nullable��� X

�� X

6@��� X

�� X

6@@��@����"ia��� X

7�� X

9@��� X

7�� X

9@@@��� X

�� X

:@@��@����&origin��� X

;�� X

A@��� X

;�� X

A@@@��� X

�� X

A@@@��� X

�� X

A@@������)set_value��� Y
E
G�� Y
E
P@��� Y
E
G�� Y
E
P@@��@����'Present��� Y
E
Q�� Y
E
X@@��� Y
E
Q�� Y
E
X@@��@�������+Annotations-ia_is_present��� Y
E
Z�� Y
E
s@��� Y
E
Z�� Y
E
s@@��@����"ia��� Y
E
t�� Y
E
v@��� Y
E
t�� Y
E
v@@@�� Y
E
Y� Y
E
w@@��@����"ta�� Y
E
x� Y
E
z@�� Y
E
x� Y
E
z@@@�� Y
E
G� Y
E
z@@�� X

� Y
E
z@@�� W	�	�� Y
E
zA@�� W	�	�� Y
E
zA@@�� W	�	�� Y
E
z@@��  W	�	��! Y
E
z@@