FasdUAS 1.101.10   ��   ��    k             l     ��  ��    U O this uses the pythonEmail.py script to send a text email from the command line     � 	 	 �   t h i s   u s e s   t h e   p y t h o n E m a i l . p y   s c r i p t   t o   s e n d   a   t e x t   e m a i l   f r o m   t h e   c o m m a n d   l i n e   
  
 l     ��  ��    a [ to disable automatic send, unload ~/Library/LaunchAgents/com.loki.email_external_ip.plist:     �   �   t o   d i s a b l e   a u t o m a t i c   s e n d ,   u n l o a d   ~ / L i b r a r y / L a u n c h A g e n t s / c o m . l o k i . e m a i l _ e x t e r n a l _ i p . p l i s t :      l     ��  ��    R L launchctl unload -w ~/Library/LaunchAgents/com.loki.email_external_ip.plist     �   �   l a u n c h c t l   u n l o a d   - w   ~ / L i b r a r y / L a u n c h A g e n t s / c o m . l o k i . e m a i l _ e x t e r n a l _ i p . p l i s t      l     ��������  ��  ��        l     ��  ��    . ( set the path to the python email script     �   P   s e t   t h e   p a t h   t o   t h e   p y t h o n   e m a i l   s c r i p t      l     ����  r         b        !   l     "���� " m      # # � $ $   / U s e r s / U S E R / d e v /��  ��   ! m     % % � & &  p y t h o n E m a i l . p y  o      ���� $0 pythonscriptpath pythonScriptPath��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + L F set idler to check every hour whether external IP address has changed    , � - - �   s e t   i d l e r   t o   c h e c k   e v e r y   h o u r   w h e t h e r   e x t e r n a l   I P   a d d r e s s   h a s   c h a n g e d *  . / . j     �� 0�� 0 
newaddress 
newAddress 0 m      1 1 � 2 2   /  3 4 3 j    �� 5��  0 currentaddress currentAddress 5 m     6 6 � 7 7   4  8 9 8 l     ��������  ��  ��   9  : ; : l     ��������  ��  ��   ;  < = < l     �� > ?��   > * $ Read my actual external IP address.    ? � @ @ H   R e a d   m y   a c t u a l   e x t e r n a l   I P   a d d r e s s . =  A B A l    C���� C O    D E D r   
  F G F I  
 �� H��
�� .sysoexecTEXT���     TEXT H m   
  I I � J J * c u r l   i p e c h o . n e t / p l a i n��   G o      ���� 0 
newaddress 
newAddress E m     K K�                                                                                  sevs  alis    ^  Hackintosh HD                  BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H a c k i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   B  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P ? 9 If the IP address has been modified since last check ...    Q � R R r   I f   t h e   I P   a d d r e s s   h a s   b e e n   m o d i f i e d   s i n c e   l a s t   c h e c k   . . . O  S T S l   � U���� U Z    � V W���� V >   " X Y X o    ���� 0 
newaddress 
newAddress Y o    !����  0 currentaddress currentAddress W k   % � Z Z  [ \ [ l  % %��������  ��  ��   \  ] ^ ] l  % %�� _ `��   _ / ) set up the python email input parameters    ` � a a R   s e t   u p   t h e   p y t h o n   e m a i l   i n p u t   p a r a m e t e r s ^  b c b r   % ( d e d m   % & f f � g g  E M A I L @ E M A I L . C O M e o      ���� 0 	thesender 	theSender c  h i h r   ) , j k j m   ) * l l � m m  E M A I L @ E M A I L . C O M k o      ���� 0 thereceiver theReceiver i  n o n r   - 6 p q p b   - 4 r s r m   - . t t � u u , E x t e r n a l   I P   U p d a t e   o n   s l  . 3 v���� v I  . 3������
�� .misccurdldt    ��� null��  ��  ��  ��   q o      ���� 0 
thesubject 
theSubject o  w x w r   7 N y z y b   7 L { | { b   7 F } ~ } b   7 D  �  b   7 B � � � b   7 < � � � b   7 : � � � m   7 8 � � � � � 0 U S E R ' s   n e w   I P   a d d r e s s   o n � o   8 9��
�� 
ret  � o   : ;��
�� 
ret  � l  < A ����� � I  < A������
�� .misccurdldt    ��� null��  ��  ��  ��   � o   B C��
�� 
ret  ~ o   D E��
�� 
ret  | o   F K���� 0 
newaddress 
newAddress z o      ���� 0 thebody theBody x  � � � r   O V � � � m   O R � � � � �  E M A I L @ E M A I L . C O M � o      ���� 0 smtpusername smtpUserName �  � � � r   W ^ � � � m   W Z � � � � �  P A S S W O R D _ H E R E � o      ���� 0 smtppassword smtpPassword �  � � � r   _ f � � � m   _ b � � � � �  s m t p . g m a i l . c o m � o      ���� 0 smtphost smtpHost �  � � � r   g n � � � m   g j � � � � �  4 6 5 � o      ���� 0 smtpport smtpPort �  � � � l  o o��������  ��  ��   �  � � � l  o o�� � ���   �   send the email    � � � �    s e n d   t h e   e m a i l �  � � � r   o � � � � I  o ��� ���
�� .sysoexecTEXT���     TEXT � l  o � ����� � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o � � � � b   o | � � � n   o x � � � 1   t x��
�� 
strq � n   o t � � � 1   p t��
�� 
psxp � o   o p���� $0 pythonscriptpath pythonScriptPath � 1   x {��
�� 
spac � n   | � � � � 1   } ���
�� 
strq � o   | }���� 0 	thesender 	theSender � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 thereceiver theReceiver � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 
thesubject 
theSubject � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 thebody theBody � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 smtpusername smtpUserName � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 smtppassword smtpPassword � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 smtphost smtpHost � 1   � ���
�� 
spac � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 smtpport smtpPort��  ��  ��   � o      ���� 0 	theresult 	theResult �  ��� � l  � ���������  ��  ��  ��  ��  ��  ��  ��   T  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � : 4 Define the current IP address to the new IP address    � � � � h   D e f i n e   t h e   c u r r e n t   I P   a d d r e s s   t o   t h e   n e w   I P   a d d r e s s �  � � � l  � � ����� � r   � � � � � o   � ����� 0 
newaddress 
newAddress � o      ����  0 currentaddress currentAddress��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       �� � 1 6 ���   � �������� 0 
newaddress 
newAddress��  0 currentaddress currentAddress
�� .aevtoappnull  �   � **** � �� ���~ � ��}
�� .aevtoappnull  �   � **** � k     � � �   � �  A � �  S � �  ��|�|  �  �~   �   �  # %�{ K I�z f�y l�x t�w�v ��u�t ��s ��r ��q ��p�o�n�m�l�{ $0 pythonscriptpath pythonScriptPath
�z .sysoexecTEXT���     TEXT�y 0 	thesender 	theSender�x 0 thereceiver theReceiver
�w .misccurdldt    ��� null�v 0 
thesubject 
theSubject
�u 
ret �t 0 thebody theBody�s 0 smtpusername smtpUserName�r 0 smtppassword smtpPassword�q 0 smtphost smtpHost�p 0 smtpport smtpPort
�o 
psxp
�n 
strq
�m 
spac�l 0 	theresult 	theResult�} ���%E�O� �j Ec   UOb   b   ��E�O�E�O�*j %E�O��%�%*j %�%�%b   %E�Oa E` Oa E` Oa E` Oa E` O�a ,a ,_ %�a ,%_ %�a ,%_ %�a ,%_ %�a ,%_ %_ a ,%_ %_ a ,%_ %_ a ,%_ %_ a ,%j E` OPY hOb   Ec  ascr  ��ޭ