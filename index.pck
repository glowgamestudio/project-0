GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@"      �      &�y���ڞu;>��.p@   res://.import/player.png-99d195b4b10a03b7e1088962b50c29f4.stex  @      �       �F�����H���R�<   res://.import/wall.png-a390048f5e12dd0b271d636d681186c9.stex�      F       py��C�c	9�+N}z�   res://Player.gd.remap   �*      !       ��0�F �qq��dX��   res://Player.gdcp      �      �M	X�>�5�D.�c   res://PlayerNode.tscn   @	      �      �Z��$����O%�   res://WallNode.tscn       �      ��[9ƞ��c�㲏�   res://Walls.gd.remap +              ";��Q���F[�ⁱ��   res://Walls.gdc              ���5WX/���_��ן   res://World.tscn      "      X����	�#1��^   res://art/player.png.import �      �      ݶ�ZOG�k!�ߡHџ   res://art/wall.png.import   �      �      ��gTnT���{��b�S   res://default_env.tres  �!      �       um�`�N��<*ỳ�8   res://icon.png   +      �      G1?��z�c��vN��   res://icon.png.import    (      �      ��fe��6�B��^ U�   res://project.binary8      :      �	�uq��.��^-�            GDSC      
   "   �      ������������τ�   �涶   ���涶��   �����������򶶶�   �������   �����ض�   ���ڶ���   �����϶�   ���������������Ŷ���   ����׶��   ϶��   ����¶��   ���������������������Ҷ�   �������������Ӷ�   ���������¶�   ������������Ӷ��   �������Ӷ���   �������ض���   ���������¶�   ������������Ҷ��   ������������������������Ҷ��   ���϶���   ���Ӷ���   ���������Ӷ�                �      
         res://WallNode.tscn       FLAP   �     <      	   add_child         Walls                                              $      ,   	   -   
   3      5      6      =      C      K      Q      R      [      b      c      l      m      n      o      u      ~      �      �      �      �      �       �   !   �   "   3Y:�  �  PR�  QY:�  �  Y:�  �  Y:�  �  YY;�  �  PQY;�  ?P�  Q�  Y0�  PQV�  -YY0�  P�	  QV�  �  T�
  �  �  &�  T�
  �  V�  �  T�
  �  �  �  &�  T�  P�  QV�  �  T�
  �  �  �  �  �  P�  R�  Q�  �  YY0�  PQV�  ;�  �  T�  PQ�  �  T�  �  P�  R�(  P�  R�  QQ�  �  PQT�  P�  R�  Q�  Y0�  P�  QV�  &�  T�  �	  V�  �  T�  PQ�  �  PQY`           [gd_scene load_steps=5 format=2]

[ext_resource path="res://Player.gd" type="Script" id=1]
[ext_resource path="res://art/player.png" type="Texture" id=2]

[sub_resource type="CircleShape2D" id=1]
radius = 8.0

[sub_resource type="CircleShape2D" id=2]
radius = 9.0

[node name="PlayerNode" type="Node2D"]

[node name="Player" type="KinematicBody2D" parent="."]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="Player"]
texture = ExtResource( 2 )

[node name="Detect" type="Area2D" parent="Player"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player/Detect"]
shape = SubResource( 2 )
  [gd_scene load_steps=6 format=2]

[ext_resource path="res://art/wall.png" type="Texture" id=1]
[ext_resource path="res://Walls.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 10 )

[sub_resource type="OccluderPolygon2D" id=2]
polygon = PoolVector2Array( -16, -360, -16, -40, 16, -40, 16, -360 )

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 10, 40 )

[node name="WallNode" type="Node2D"]

[node name="Walls" type="StaticBody2D" parent="."]
script = ExtResource( 2 )

[node name="UpperWallSprite" type="Sprite" parent="Walls"]
position = Vector2( 0, -200 )
scale = Vector2( 2, 20 )
texture = ExtResource( 1 )

[node name="UpperWallCollision" type="CollisionShape2D" parent="Walls"]
position = Vector2( 0, -200 )
scale = Vector2( 1, 16 )
shape = SubResource( 1 )

[node name="UpperLightOccluder" type="LightOccluder2D" parent="Walls"]
occluder = SubResource( 2 )

[node name="LowerWallSprite" type="Sprite" parent="Walls"]
position = Vector2( 0, 200 )
scale = Vector2( 2, 20 )
texture = ExtResource( 1 )

[node name="LowerWallCollision" type="CollisionShape2D" parent="Walls"]
position = Vector2( 0, 200 )
scale = Vector2( 1, 16 )
shape = SubResource( 1 )

[node name="LowerLightOccluder" type="LightOccluder2D" parent="Walls"]
position = Vector2( 0, 400 )
occluder = SubResource( 2 )

[node name="PointArea" type="Area2D" parent="Walls"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Walls/PointArea"]
shape = SubResource( 3 )
               GDSC         
   !      ���������τ򶶶�   �����϶�   ���������������Ŷ���   ����׶��   �������ض���                                                                 	      
   3YYYY0�  PQV�  -YY0�  P�  QV�  �  �  PR�  QY`           [gd_scene load_steps=7 format=2]

[ext_resource path="res://WallNode.tscn" type="PackedScene" id=1]
[ext_resource path="res://Player.gd" type="Script" id=2]
[ext_resource path="res://art/player.png" type="Texture" id=3]

[sub_resource type="CircleShape2D" id=1]
radius = 8.0

[sub_resource type="CircleShape2D" id=2]
radius = 9.0

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 10, 152 )

[node name="World" type="Node2D"]

[node name="PlayerNode" type="Node2D" parent="."]
position = Vector2( 120, 256 )

[node name="Player" type="KinematicBody2D" parent="PlayerNode"]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="PlayerNode/Player"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="PlayerNode/Player"]
texture = ExtResource( 3 )

[node name="Detect" type="Area2D" parent="PlayerNode/Player"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="PlayerNode/Player/Detect"]
shape = SubResource( 2 )

[node name="Resetter" type="Area2D" parent="PlayerNode/Player"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="PlayerNode/Player/Resetter"]
position = Vector2( -184, 16 )
shape = SubResource( 3 )

[node name="WallNode" parent="." instance=ExtResource( 1 )]
position = Vector2( 280, 256 )
__meta__ = {
"_edit_group_": true
}

[node name="WallNode2" parent="." instance=ExtResource( 1 )]
position = Vector2( 360, 280 )
__meta__ = {
"_edit_group_": true
}

[node name="WallNode3" parent="." instance=ExtResource( 1 )]
position = Vector2( 440, 248 )
__meta__ = {
"_edit_group_": true
}

[node name="WallNode4" parent="." instance=ExtResource( 1 )]
position = Vector2( 520, 280 )
__meta__ = {
"_edit_group_": true
}

[node name="WallNode5" parent="." instance=ExtResource( 1 )]
position = Vector2( 600, 240 )
__meta__ = {
"_edit_group_": true
}

[node name="Camera2D" type="Camera2D" parent="."]
position = Vector2( 256, 264 )
zoom = Vector2( 0.5, 0.5 )

[connection signal="body_entered" from="PlayerNode/Player/Resetter" to="PlayerNode/Player" method="_on_Resetter_body_entered"]
              GDST               �   WEBPRIFFt   WEBPVP8Lh   /�W0��?��Ih��� �(��ڶ��v���OV V"0���8_�_���	 Ə� z"��+0�#����[��2N�?�d�!�'��30���     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-99d195b4b10a03b7e1088962b50c29f4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/player.png"
dest_files=[ "res://.import/player.png-99d195b4b10a03b7e1088962b50c29f4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST               *   WEBPRIFF   WEBPVP8L   /� ���������            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/wall.png-a390048f5e12dd0b271d636d681186c9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://art/wall.png"
dest_files=[ "res://.import/wall.png-a390048f5e12dd0b271d636d681186c9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Player.gdc"
               [remap]

path="res://Walls.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         Flappy Soul    application/run/main_scene         res://World.tscn   application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled            input/ui_accept8               deadzone      ?      events            input/ui_select8               deadzone      ?      events            input/ui_cancel8               deadzone      ?      events            input/ui_focus_next8               deadzone      ?      events            input/ui_focus_prev8               deadzone      ?      events            input/ui_left8               deadzone      ?      events            input/ui_right8               deadzone      ?      events            input/ui_up8               deadzone      ?      events            input/ui_down8               deadzone      ?      events            input/ui_page_up8               deadzone      ?      events            input/ui_page_down8               deadzone      ?      events            input/ui_home8               deadzone      ?      events            input/ui_end8               deadzone      ?      events         
   input/FLAP�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script            deadzone      ?   mono/project/assembly_name         Flappy Soul )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres        