FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 � � tell application "Finder" to set sourcesFiles to every file of "Macintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:" whose name contains (".xls") of source_folder    
 �  `   t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   s o u r c e s F i l e s   t o   e v e r y   f i l e   o f   " M a c i n t o s h   H D : U s e r s : p z a g i e l : D r o p b o x : F i n a n c e   T o o l k i t : H e l l o : P r i c e s : "   w h o s e   n a m e   c o n t a i n s   ( " . x l s " )   o f   s o u r c e _ f o l d e r      l     ��������  ��  ��        l     ��  ��    � tell application "Finder" to set fl to files of folder POSIX file "/pzagiel/Dropbox/Finance Toolkit/Hello:Prices" as alias list     �   � t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   f l   t o   f i l e s   o f   f o l d e r   P O S I X   f i l e   " / p z a g i e l / D r o p b o x / F i n a n c e   T o o l k i t / H e l l o : P r i c e s "   a s   a l i a s   l i s t      l     ����  O        r        c        n    
    2    
��
�� 
file  4    �� 
�� 
cfol  m       �     ~ M a c i n t o s h   H D : U s e r s : p z a g i e l : D r o p b o x : F i n a n c e   T o o l k i t : H e l l o : P r i c e s  m   
 ��
�� 
alst  o      ���� 0 myfiles myFiles  m      ! !�                                                                                  MACS   alis    r  Macintosh HD               ��H+    !
Finder.app                                                       7���        ����  	                CoreServices    ���      ����      !      3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��     " # " l    $���� $ r     % & % m    ����  & o      ���� 0 
rowcounter 
rowCounter��  ��   #  ' ( ' l  J )���� ) O   J * + * k   I , ,  - . - r    ! / 0 / I   ���� 1
�� .corecrel****      � null��   1 �� 2��
�� 
kocl 2 m    ��
�� 
X141��   0 o      ���� 0 
myworkbook 
myWorkbook .  3 4 3 l  " % 5 6 7 5 r   " % 8 9 8 m   " #����  9 o      ���� 0 mycol myCol 6   the starting column    7 � : : (   t h e   s t a r t i n g   c o l u m n 4  ; < ; l  & ) = > ? = r   & ) @ A @ m   & '����  A o      ���� 0 mybgnrow myBgnRow >   the starting row    ? � B B "   t h e   s t a r t i n g   r o w <  C�� C X   *I D�� E D k   :D F F  G H G r   : G I J I n   : C K L K 1   ? C��
�� 
pnam L l  : ? M���� M I  : ?�� N��
�� .sysonfo4asfe        file N o   : ;���� 0 afile aFile��  ��  ��   J o      ���� 0 filename   H  O�� O Z   HD P Q���� P E   H O R S R o   H K���� 0 filename   S m   K N T T � U U  . x l s Q k   R@ V V  W X W r   R ] Y Z Y I  R Y�� [��
�� .sysontocTEXT       shor [ m   R U���� 
��   Z o      ���� 0 lf   X  \ ] \ r   ^ g ^ _ ^ l  ^ c `���� ` I  ^ c�� a��
�� .rdwropenshor       file a o   ^ _���� 0 afile aFile��  ��  ��   _ o      ���� 0 	excelfile 	ExcelFile ]  b c b l  h h��������  ��  ��   c  d e d r   h ~ f g f l  h z h���� h I  h z�� i j
�� .rdwrread****        **** i o   h k���� 0 	excelfile 	ExcelFile j �� k��
�� 
deli k J   n v l l  m n m m   n q o o � p p  , n  q�� q o   q t���� 0 lf  ��  ��  ��  ��   g o      ���� $0 pricefilecontent PriceFileContent e  r s r I   ��� t��
�� .rdwrclosnull���     **** t o    ����� 0 afile aFile��   s  u v u r   � � w x w J   � � y y  z { z n   � � | } | 4   � ��� ~
�� 
cobj ~ m   � �����  } o   � ����� $0 pricefilecontent PriceFileContent {   �  n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� $0 pricefilecontent PriceFileContent �  ��� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� $0 pricefilecontent PriceFileContent��   x J       � �  � � � o      ���� 0 	pricedate 	priceDate �  � � � o      ���� 	0 price   �  ��� � o      ���� 0 	priceevol 	priceEvol��   v  � � � l  � ��� � ���   � + %set myVal to item {1} of item {myRow}    � � � � J s e t   m y V a l   t o   i t e m   { 1 }   o f   i t e m   { m y R o w } �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
X117 � m   � � � � � � � 
 A 1 : 1 3 � n   � � � � � o   � ����� 0 activesheet ActiveSheet � o   � ����� 0 
myworkbook 
myWorkbook � o      ���� 0 myrange   �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � �����  � m   � �����  � o   � ����� 0 filename   � o      ���� 0 isincode IsinCode �  � � � r   � � � � � o   � ����� 0 isincode IsinCode � n       � � � 1   � ���
�� 
DPVu � n   � � � � � 4   � ��� �
�� 
ccel � l  � � ����� � b   � � � � � m   � � � � � � �  A � o   � ����� 0 
rowcounter 
rowCounter��  ��   � n   � � � � � o   � ����� 0 activesheet ActiveSheet � o   � ����� 0 
myworkbook 
myWorkbook �  � � � r   �
 � � � o   � ����� 0 	pricedate 	priceDate � n       � � � 1  	��
�� 
DPVu � n   � � � � 4   ��� �
�� 
ccel � l  � ����� � b   � � � � m   � � � � � �  B � o  ���� 0 
rowcounter 
rowCounter��  ��   � n   � � � � � o   � ����� 0 activesheet ActiveSheet � o   � ����� 0 
myworkbook 
myWorkbook �  � � � r  ! � � � o  ���� 	0 price   � n       � � � 1   ��
�� 
DPVu � n   � � � 4  �� �
�� 
ccel � l  ����� � b   � � � m   � � � � �  C � o  ���� 0 
rowcounter 
rowCounter��  ��   � n   � � � o  ���� 0 activesheet ActiveSheet � o  ���� 0 
myworkbook 
myWorkbook �  � � � r  "8 � � � o  "%���� 0 	priceevol 	priceEvol � n       � � � 1  37��
�� 
DPVu � n  %3 � � � 4  *3�� �
�� 
ccel � l -2 ����� � b  -2 � � � m  -0 � � � � �  D � o  01���� 0 
rowcounter 
rowCounter��  ��   � n  %* � � � o  &*���� 0 activesheet ActiveSheet � o  %&���� 0 
myworkbook 
myWorkbook �  � � � r  9> � � � [  9< � � � o  9:���� 0 
rowcounter 
rowCounter � m  :;����  � o      ���� 0 
rowcounter 
rowCounter �  �� � l ??�~�}�|�~  �}  �|  �  ��  ��  ��  �� 0 afile aFile E o   - .�{�{ 0 myfiles myFiles��   + m     � ��                                                                                  XCEL   alis    �   Macintosh HD               ��H+   	TIMicrosoft Excel                                                 	U����APPLXCEL����  	                Microsoft Office 2004     ���      ����     	TI  c  ?Macintosh HD:Applications:Microsoft Office 2004:Microsoft Excel      M i c r o s o f t   E x c e l    M a c i n t o s h   H D  2Applications/Microsoft Office 2004/Microsoft Excel  / ��  ��  ��   (  � � � l     �z�y�x�z  �y  �x   �  � � � l     �w�v�u�w  �v  �u   �  ��t � l     �s�r�q�s  �r  �q  �t       �p � � ��o ��n�m � ��l � � � ��k ��j�p   � �i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z
�i .aevtoappnull  �   � ****�h 0 myfiles myFiles�g 0 
rowcounter 
rowCounter�f 0 
myworkbook 
myWorkbook�e 0 mycol myCol�d 0 mybgnrow myBgnRow�c 0 filename  �b 0 lf  �a 0 	excelfile 	ExcelFile�` $0 pricefilecontent PriceFileContent�_ 0 	pricedate 	priceDate�^ 	0 price  �] 0 	priceevol 	priceEvol�\ 0 myrange  �[ 0 isincode IsinCode�Z   � �Y ��X�W � �V
�Y .aevtoappnull  �   � **** � k    J    "  '�U�U  �X  �W   � �T�T 0 afile aFile  . !�S �R�Q�P�O ��N�M�L�K�J�I�H�G�F�E�D T�C�B�A�@�?�> o�=�<�;�:�9�8�7�6 ��5�4�3�2�1 ��0 � � �
�S 
cfol
�R 
file
�Q 
alst�P 0 myfiles myFiles�O 0 
rowcounter 
rowCounter
�N 
kocl
�M 
X141
�L .corecrel****      � null�K 0 
myworkbook 
myWorkbook�J 0 mycol myCol�I 0 mybgnrow myBgnRow
�H 
cobj
�G .corecnte****       ****
�F .sysonfo4asfe        file
�E 
pnam�D 0 filename  �C 

�B .sysontocTEXT       shor�A 0 lf  
�@ .rdwropenshor       file�? 0 	excelfile 	ExcelFile
�> 
deli
�= .rdwrread****        ****�< $0 pricefilecontent PriceFileContent
�; .rdwrclosnull���     ****�: 0 	pricedate 	priceDate�9 	0 price  �8 0 	priceevol 	priceEvol�7 0 activesheet ActiveSheet
�6 
X117�5 0 myrange  
�4 
ctxt�3 �2 0 isincode IsinCode
�1 
ccel
�0 
DPVu�VK� *��/�-�&E�UOkE�O�3*��l 
E�OkE�OkE�O�[��l kh  �j a ,E` O_ a  �a j E` O�j E` O_ a a _ lvl E` O�j O_ �k/_ �l/_ �m/mvE[�k/E` Z[�l/E` Z[�m/E`  ZO�a !,a "a #/E` $O_ [a %\[Zk\Za &2E` 'O_ '�a !,a (a )�%/a *,FO_ �a !,a (a +�%/a *,FO_ �a !,a (a ,�%/a *,FO_  �a !,a (a -�%/a *,FO�kE�OPY h[OY��U � �/�/ " " 	
 !"#$%&�alis    �   Macintosh HD               ��H+   [��backup                                                          ^�)�,{�        ����  	                Prices    ���      �,_�     [�� K�� K�f K�� ~  a�  FMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:backup    b a c k u p    M a c i n t o s h   H D  9Users/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/backup   /    ��  �alis    �   Macintosh HD               ��H+   [��createDB                                                        ^�q�,ֳ        ����  	                Prices    ���      �,��     [�� K�� K�f K�� ~  a�  HMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:createDB    c r e a t e D B    M a c i n t o s h   H D  ;Users/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/createDB   /    ��  �alis    �   Macintosh HD               ��H+   [��FinancialWorld.db                                               ^���*U        ����  	                Prices    ���      �)�5     [�� K�� K�f K�� ~  a�  QMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:FinancialWorld.db   $  F i n a n c i a l W o r l d . d b    M a c i n t o s h   H D  DUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/FinancialWorld.db  /    ��  �alis    �   Macintosh HD               ��H+   [��FR0007051040.xls                                                _l �/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:FR0007051040.xls  "  F R 0 0 0 7 0 5 1 0 4 0 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/FR0007051040.xls   /    ��  	�alis    �   Macintosh HD               ��H+   [��FR0010135103.xls                                                _k��/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:FR0010135103.xls  "  F R 0 0 1 0 1 3 5 1 0 3 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/FR0010135103.xls   /    ��  
�alis    �   Macintosh HD               ��H+   [��FR0010923375.xls                                                _k��/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:FR0010923375.xls  "  F R 0 0 1 0 9 2 3 3 7 5 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/FR0010923375.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��FR0011008762.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:FR0011008762.xls  "  F R 0 0 1 1 0 0 8 7 6 2 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/FR0011008762.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��FR0011253624.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:FR0011253624.xls  "  F R 0 0 1 1 2 5 3 6 2 4 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/FR0011253624.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��IE0004766675.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:IE0004766675.xls  "  I E 0 0 0 4 7 6 6 6 7 5 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/IE0004766675.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��IE00B0MTTV84.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:IE00B0MTTV84.xls  "  I E 0 0 B 0 M T T V 8 4 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/IE00B0MTTV84.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��importInstrument.bck                                            ^���,�_        ����  	                Prices    ���      �,d?     [�� K�� K�f K�� ~  a�  TMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:importInstrument.bck  *  i m p o r t I n s t r u m e n t . b c k    M a c i n t o s h   H D  GUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/importInstrument.bck   /    ��  �alis    �   Macintosh HD               ��H+   [��ImportInstrument.ksh                                            ^�s�,��        ����  	                Prices    ���      �,��     [�� K�� K�f K�� ~  a�  TMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:ImportInstrument.ksh  *  I m p o r t I n s t r u m e n t . k s h    M a c i n t o s h   H D  GUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/ImportInstrument.ksh   /    ��  �alis    �   Macintosh HD               ��H+   [��
insert.sql                                                      ^�g�,|�        ����  	                Prices    ���      �,`�     [�� K�� K�f K�� ~  a�  JMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:insert.sql   
 i n s e r t . s q l    M a c i n t o s h   H D  =Users/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/insert.sql   /    ��  �alis    �   Macintosh HD               ��H+   [��log.txt                                                         \���&&�        ����  	                Prices    ���      �&
�     [�� K�� K�f K�� ~  a�  GMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:log.txt     l o g . t x t    M a c i n t o s h   H D  :Users/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/log.txt  /    ��  �alis    �   Macintosh HD               ��H+   [��
logerr.txt                                                      \���&&�        ����  	                Prices    ���      �&
�     [�� K�� K�f K�� ~  a�  JMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:logerr.txt   
 l o g e r r . t x t    M a c i n t o s h   H D  =Users/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/logerr.txt   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0011963674.xls                                                _l	�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0011963674.xls  "  L U 0 0 1 1 9 6 3 6 7 4 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0011963674.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0070992663.txt                                                _l6�/C_        ����  	                Prices    ���      �/'?     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0070992663.txt  "  L U 0 0 7 0 9 9 2 6 6 3 . t x t    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0070992663.txt   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0070992663.xls                                                _k��/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0070992663.xls  "  L U 0 0 7 0 9 9 2 6 6 3 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0070992663.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0073232471.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0073232471.xls  "  L U 0 0 7 3 2 3 2 4 7 1 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0073232471.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0075056555.xls                                                _k��/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0075056555.xls  "  L U 0 0 7 5 0 5 6 5 5 5 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0075056555.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0086177085.xls                                                _k��/B�        ����  	                Prices    ���      �/&|     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0086177085.xls  "  L U 0 0 8 6 1 7 7 0 8 5 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0086177085.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0132412106.xls                                                _l
�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0132412106.xls  "  L U 0 1 3 2 4 1 2 1 0 6 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0132412106.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0256881128.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0256881128.xls  "  L U 0 2 5 6 8 8 1 1 2 8 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0256881128.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0334857355.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0334857355.xls  "  L U 0 3 3 4 8 5 7 3 5 5 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0334857355.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0353189763.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0353189763.xls  "  L U 0 3 5 3 1 8 9 7 6 3 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0353189763.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0356218064.xls                                                _k��/B�        ����  	                Prices    ���      �/&~     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0356218064.xls  "  L U 0 3 5 6 2 1 8 0 6 4 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0356218064.xls   /    ��  �alis    �   Macintosh HD               ��H+   [��LU0376989207.xls                                                _k��/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0376989207.xls  "  L U 0 3 7 6 9 8 9 2 0 7 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0376989207.xls   /    ��   �alis    �   Macintosh HD               ��H+   [��LU0411704413.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0411704413.xls  "  L U 0 4 1 1 7 0 4 4 1 3 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0411704413.xls   /    ��  !�alis    �   Macintosh HD               ��H+   [��LU0599946893.xls                                                _l�/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0599946893.xls  "  L U 0 5 9 9 9 4 6 8 9 3 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0599946893.xls   /    ��  "�alis    �   Macintosh HD               ��H+   [��LU0828244219.xls                                                _k��/B�        ����  	                Prices    ���      �/&�     [�� K�� K�f K�� ~  a�  PMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:LU0828244219.xls  "  L U 0 8 2 8 2 4 4 2 1 9 . x l s    M a c i n t o s h   H D  CUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/LU0828244219.xls   /    ��  #�alis    �   Macintosh HD               ��H+   [��res                                                             ^��,�s        ����  	                Prices    ���      �,�S     [�� K�� K�f K�� ~  a�  CMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:res     r e s    M a c i n t o s h   H D  6Users/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/res  /    ��  $�alis    �   Macintosh HD               ��H+   [��res1                                                            ^���,�U        ����  	                Prices    ���      �,�5     [�� K�� K�f K�� ~  a�  DMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:res1  
  r e s 1    M a c i n t o s h   H D  7Users/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/res1   /    ��  %�alis    �   Macintosh HD               ��H+   [��storePrice.ksh                                                  ^���,�        ����  	                Prices    ���      �,̖     [�� K�� K�f K�� ~  a�  NMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:storePrice.ksh    s t o r e P r i c e . k s h    M a c i n t o s h   H D  AUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/storePrice.ksh   /    ��  &�alis    �   Macintosh HD               ��H+   [��storePrice1.ksh                                                 ^�I�,�G        ����  	                Prices    ���      �,�'     [�� K�� K�f K�� ~  a�  OMacintosh HD:Users:pzagiel:Dropbox:Finance Toolkit:Hello:Prices:storePrice1.ksh      s t o r e P r i c e 1 . k s h    M a c i n t o s h   H D  BUsers/pzagiel/Dropbox/Finance Toolkit/Hello/Prices/storePrice1.ksh  /    ��  �o  � ''  ��.(
�. 
X141( �))  S h e e t 3�n �m  � �**  s t o r e P r i c e 1 . k s h � �++  
�l � �-,�- ,   � � � � �--  2 5 / 0 9 / 2 0 1 5 � �.. 
 1 1 . 1 3 � �//  0 . 0 0 7 2�k   � �00  L U 0 8 2 8 2 4 4 2 1 9�j   ascr  ��ޭ