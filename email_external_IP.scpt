FasdUAS 1.101.10   ��   ��    k             l     ��  ��    U O this uses the pythonEmail.py script to send a text email from the command line     � 	 	 �   t h i s   u s e s   t h e   p y t h o n E m a i l . p y   s c r i p t   t o   s e n d   a   t e x t   e m a i l   f r o m   t h e   c o m m a n d   l i n e   
  
 l     ��  ��    a [ to disable automatic send, unload ~/Library/LaunchAgents/com.loki.email_external_ip.plist:     �   �   t o   d i s a b l e   a u t o m a t i c   s e n d ,   u n l o a d   ~ / L i b r a r y / L a u n c h A g e n t s / c o m . l o k i . e m a i l _ e x t e r n a l _ i p . p l i s t :      l     ��  ��    R L launchctl unload -w ~/Library/LaunchAgents/com.loki.email_external_ip.plist     �   �   l a u n c h c t l   u n l o a d   - w   ~ / L i b r a r y / L a u n c h A g e n t s / c o m . l o k i . e m a i l _ e x t e r n a l _ i p . p l i s t      l     ��������  ��  ��        l     ��  ��    . ( set the path to the python email script     �   P   s e t   t h e   p a t h   t o   t h e   p y t h o n   e m a i l   s c r i p t      l     ����  r         b        !   l     "���� " m      # # � $ $   / U s e r s / U S E R / d e v /��  ��   ! m     % % � & &  p y t h o n E m a i l . p y  o      ���� $0 pythonscriptpath pythonScriptPath��  ��     ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + L F set idler to check every hour whether external IP address has changed    , � - - �   s e t   i d l e r   t o   c h e c k   e v e r y   h o u r   w h e t h e r   e x t e r n a l   I P   a d d r e s s   h a s   c h a n g e d *  . / . j     �� 0�� 0 
newaddress 
newAddress 0 m      1 1 � 2 2   /  3 4 3 j    �� 5��  0 currentaddress currentAddress 5 m     6 6 � 7 7   4  8 9 8 j    �� :�� "0 internaladdress internalAddress : m     ; ; � < <   9  = > = j   	 �� ?�� 0 
macaddress 
macAddress ? m   	 
 @ @ � A A   >  B C B l     ��������  ��  ��   C  D E D l     �� F G��   F * $ Read my actual external IP address.    G � H H H   R e a d   m y   a c t u a l   e x t e r n a l   I P   a d d r e s s . E  I J I l    K���� K O    L M L r   
  N O N I  
 �� P��
�� .sysoexecTEXT���     TEXT P m   
  Q Q � R R * c u r l   i p e c h o . n e t / p l a i n��   O o      ���� 0 
newaddress 
newAddress M m     S S�                                                                                  sevs  alis    ^  Hackintosh HD                  BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H a c k i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   J  T U T l   ' V���� V O   ' W X W r    & Y Z Y I    �� [��
�� .sysoexecTEXT���     TEXT [ m     \ \ � ] ] , i p c o n f i g   g e t i f a d d r   e n 1��   Z o      ���� "0 internaladdress internalAddress X m     ^ ^�                                                                                  sevs  alis    ^  Hackintosh HD                  BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H a c k i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   U  _ ` _ l  ( 8 a���� a O  ( 8 b c b r   , 7 d e d I  , 1�� f��
�� .sysoexecTEXT���     TEXT f m   , - g g � h h J i f c o n f i g   e n 1   | a w k   ' / e t h e r / { p r i n t   $ 2 } '��   e o      ���� 0 
macaddress 
macAddress c m   ( ) i i�                                                                                  sevs  alis    ^  Hackintosh HD                  BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    H a c k i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   `  j k j l     ��������  ��  ��   k  l m l l     �� n o��   n ? 9 If the IP address has been modified since last check ...    o � p p r   I f   t h e   I P   a d d r e s s   h a s   b e e n   m o d i f i e d   s i n c e   l a s t   c h e c k   . . . m  q r q l  9, s���� s Z   9, t u���� t >  9 D v w v o   9 >���� 0 
newaddress 
newAddress w o   > C����  0 currentaddress currentAddress u k   G( x x  y z y l  G G��������  ��  ��   z  { | { l  G G�� } ~��   } / ) set up the python email input parameters    ~ �   R   s e t   u p   t h e   p y t h o n   e m a i l   i n p u t   p a r a m e t e r s |  � � � r   G J � � � m   G H � � � � �  E M A I L @ E M A I L . C O M � o      ���� 0 	thesender 	theSender �  � � � r   K N � � � m   K L � � � � �  E M A I L @ E M A I L . C O M � o      ���� 0 thereceiver theReceiver �  � � � r   O X � � � b   O V � � � m   O P � � � � � , E x t e r n a l   I P   U p d a t e   o n   � l  P U ����� � I  P U������
�� .misccurdldt    ��� null��  ��  ��  ��   � o      ���� 0 
thesubject 
theSubject �  � � � r   Y � � � � b   Y � � � � b   Y � � � � b   Y � � � � b   Y � � � � b   Y � � � � b   Y ~ � � � b   Y z � � � b   Y t � � � b   Y p � � � b   Y l � � � b   Y h � � � b   Y b � � � b   Y ^ � � � m   Y Z � � � � � 0 U S E R ' s   n e w   I P   a d d r e s s   o n � o   Z ]��
�� 
ret  � o   ^ a��
�� 
ret  � l  b g ����� � I  b g������
�� .misccurdldt    ��� null��  ��  ��  ��   � o   h k��
�� 
ret  � o   l o��
�� 
ret  � m   p s � � � � � * E x t e r n a l   I P   a d d r e s s :   � o   t y���� 0 
newaddress 
newAddress � o   z }��
�� 
ret  � m   ~ � � � � � � * I n t e r n a l   I P   a d d r e s s :   � o   � ����� "0 internaladdress internalAddress � o   � ���
�� 
ret  � m   � � � � � � �  M A C   a d d r e s s :   � o   � ����� 0 
macaddress 
macAddress � o      ���� 0 thebody theBody �  � � � r   � � � � � m   � � � � � � �  E M A I L @ E M A I L . C O M � o      ���� 0 smtpusername smtpUserName �  � � � r   � � � � � m   � � � � � � �  P A S S W O R D _ H E R E � o      ���� 0 smtppassword smtpPassword �  � � � r   � � � � � m   � � � � � � �  s m t p . g m a i l . c o m � o      ���� 0 smtphost smtpHost �  � � � r   � � � � � m   � � � � � � �  4 6 5 � o      ���� 0 smtpport smtpPort �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   send the email    � � � �    s e n d   t h e   e m a i l �  � � � r   �& � � � I  �"�� ���
�� .sysoexecTEXT���     TEXT � l  � ����� � b   � � � � b   � � � � b   � � � � b   �
 � � � b   � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � �  � n   � � 1   � ���
�� 
strq n   � � 1   � ���
�� 
psxp o   � ����� $0 pythonscriptpath pythonScriptPath  1   � ���
�� 
spac � n   � � 1   � ���
�� 
strq o   � ����� 0 	thesender 	theSender � 1   � ���
�� 
spac � n   � � 1   � ���
�� 
strq o   � ����� 0 thereceiver theReceiver � 1   � ���
�� 
spac � n   � �	
	 1   � ���
�� 
strq
 o   � ����� 0 
thesubject 
theSubject � 1   � ���
�� 
spac � n   � � 1   � ���
�� 
strq o   � ����� 0 thebody theBody � 1   � ���
�� 
spac � n   � � 1   � ���
�� 
strq o   � ����� 0 smtpusername smtpUserName � 1   � ���
�� 
spac � n   � 1  ��
�� 
strq o   ����� 0 smtppassword smtpPassword � 1  	��
�� 
spac � n  
 1  ��
�� 
strq o  
���� 0 smtphost smtpHost � 1  ��
�� 
spac � n   1  ��
�� 
strq o  ���� 0 smtpport smtpPort��  ��  ��   � o      ���� 0 	theresult 	theResult � �� l ''��������  ��  ��  ��  ��  ��  ��  ��   r  l     ��������  ��  ��    l     ����   : 4 Define the current IP address to the new IP address    � h   D e f i n e   t h e   c u r r e n t   I P   a d d r e s s   t o   t h e   n e w   I P   a d d r e s s  l -8���� r  -8 !  o  -2���� 0 
newaddress 
newAddress! o      ��  0 currentaddress currentAddress��  ��   "#" l     �~�}�|�~  �}  �|  # $�{$ l     �z�y�x�z  �y  �x  �{       �w% 1 6 ; @&�w  % �v�u�t�s�r�v 0 
newaddress 
newAddress�u  0 currentaddress currentAddress�t "0 internaladdress internalAddress�s 0 
macaddress 
macAddress
�r .aevtoappnull  �   � ****& �q'�p�o()�n
�q .aevtoappnull  �   � ****' k    8**  ++  I,,  T--  _..  q// �m�m  �p  �o  (  ) ! # %�l S Q�k \ g ��j ��i ��h�g ��f � � ��e ��d ��c ��b ��a�`�_�^�]�l $0 pythonscriptpath pythonScriptPath
�k .sysoexecTEXT���     TEXT�j 0 	thesender 	theSender�i 0 thereceiver theReceiver
�h .misccurdldt    ��� null�g 0 
thesubject 
theSubject
�f 
ret �e 0 thebody theBody�d 0 smtpusername smtpUserName�c 0 smtppassword smtpPassword�b 0 smtphost smtpHost�a 0 smtpport smtpPort
�` 
psxp
�_ 
strq
�^ 
spac�] 0 	theresult 	theResult�n9��%E�O� �j Ec   UO� �j Ec  UO� �j Ec  UOb   b   ��E�O�E�O�*j %E�O�_ %_ %*j %_ %_ %a %b   %_ %a %b  %_ %a %b  %E` Oa E` Oa E` Oa E` Oa E` O�a ,a ,_ %�a ,%_ %�a ,%_ %�a ,%_ %_ a ,%_ %_ a ,%_ %_ a ,%_ %_ a ,%_ %_ a ,%j E`  OPY hOb   Ec   ascr  ��ޭ