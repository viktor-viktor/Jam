GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�<      �      �p��<f��r�g��.�@   res://.import/tileset.png-bb5420214e86ea5d0607fa2f6101e97b.stex $      �      �M�ʹ�U�DIc�&y     res://PlayerController.gd.remap M      +       :zWJ ��c��sX   res://PlayerController.gdc        O      �-fj\��Yܴ����!   res://Scenes/Game.tscn  `	      U      j_(kR?�N��u3��n   res://Scenes/Level.tscn �
      �	      x�pr�V�X���<K�    res://Scenes/Player_Scene.tscn  p      �      �2�V�m�z�᏾1��   res://Tiles/Tileset.tres      �      dy]��o��}A�%)o��(   res://Tiles/TilesetScene(for edit).tscn �      #      !Ycv�Č��x҂ӏY    res://Tiles/tileset.png.import  �9      �      \�?)
w���p��z���   res://default_env.tres  @<      �       K��+fr��s����   res://icon.png  @M      i      ����󈘥Ey��
�   res://icon.png.import   �J      �      �����%��(#AB�   res://project.binary�Z      �      �}�5�2��*�klB�9    GDSC         5   �      ������������τ�   �涶   ����򶶶   �������   �����������   ����������   ����������������   �����ض�   ��������������Ҷ   ���������������������¶�   �����϶�   �������Ŷ���   ����׶��   ϶��   ζ��   ����¶��   ����������������Ҷ��   ����������Ķ   ���������������������Ҷ�   �������������Ӷ�                �     P      X     �     {�G�z�?             ui_right      ui_left       ui_up                                                       	      
         #      )      .      /      6      ;      @      A      B      H      J      K      R      X      Y      _      `      i      o      x             �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   3YYYYYY:�  �  PR�  QYY:�  �  Y:�  �  Y:�  �  Y:�  �  Y:�  �  YY;�  �  PQY;�  �  Y;�	  �  YYY0�
  PQV�  -YY0�  P�  QV�  �  T�  �  �  �  �  T�  �  �  &�  T�  P�  QV�  �  T�  �  �  &�  T�  P�	  QV�  �  T�  �  �  �  ;�  �  PQ�  �  &�  V�  �	  �  �  �  &�  T�  P�
  QV�  �  T�  �  �  (V�  �  �	  �  �  �  &�  T�  P�
  QV�  �  T�  �  �  �	  �  �  �  �  P�  R�  Q�  YYYYY` [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scenes/Level.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scenes/Player_Scene.tscn" type="PackedScene" id=2]

[node name="Node2D" type="Node2D"]

[node name="Level" parent="." instance=ExtResource( 1 )]

[node name="Player_Scene" parent="." instance=ExtResource( 2 )]

           [gd_scene load_steps=2 format=2]

[ext_resource path="res://Tiles/Tileset.tres" type="TileSet" id=1]

[node name="Level" type="Node2D"]

[node name="TileMap" type="TileMap" parent="."]
tile_set = ExtResource( 1 )
cell_size = Vector2( 50, 50 )
format = 1
tile_data = PoolIntArray( 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 5, 0, 0, 6, 0, 0, 7, 0, 0, 8, 0, 0, 9, 0, 0, 10, 0, 0, 11, 0, 0, 12, 0, 0, 13, 0, 0, 14, 0, 0, 15, 0, 0, 16, 0, 0, 17, 0, 0, 18, 0, 0, 19, 0, 0, 20, 0, 0, 65536, 0, 0, 65537, 0, 0, 65538, 0, 0, 65539, 0, 0, 65540, 0, 0, 65541, 0, 0, 65542, 0, 0, 65543, 0, 0, 65544, 0, 0, 65545, 0, 0, 65546, 0, 0, 65547, 0, 0, 65548, 0, 0, 65549, 0, 0, 65550, 0, 0, 65551, 0, 0, 65552, 0, 0, 65553, 0, 0, 65554, 0, 0, 65555, 0, 0, 65556, 0, 0, 131072, 0, 0, 131073, 0, 0, 131088, 1, 0, 131091, 0, 0, 131092, 0, 0, 196608, 0, 0, 196609, 0, 0, 196622, 1, 0, 196623, 1, 0, 196624, 1, 0, 196627, 0, 0, 196628, 0, 0, 262144, 0, 0, 262145, 0, 0, 262154, 1, 0, 262155, 1, 0, 262157, 1, 0, 262158, 1, 0, 262163, 0, 0, 262164, 0, 0, 327680, 0, 0, 327681, 0, 0, 327689, 1, 0, 327690, 1, 0, 327691, 1, 0, 327692, 1, 0, 327693, 1, 0, 327699, 0, 0, 327700, 0, 0, 393216, 0, 0, 393217, 0, 0, 393218, 2, 0, 393219, 2, 0, 393220, 2, 0, 393224, 1, 0, 393225, 1, 0, 393226, 1, 0, 393228, 1, 0, 393232, 2, 0, 393233, 2, 0, 393234, 2, 0, 393235, 0, 0, 393236, 0, 0, 458752, 0, 0, 458753, 0, 0, 458758, 1, 0, 458759, 1, 0, 458760, 1, 0, 458761, 1, 0, 458762, 1, 0, 458763, 1, 0, 458771, 0, 0, 458772, 0, 0, 524288, 0, 0, 524289, 0, 0, 524292, 1, 0, 524293, 1, 0, 524294, 1, 0, 524295, 1, 0, 524296, 1, 0, 524297, 1, 0, 524298, 1, 0, 524299, 1, 0, 524303, 2, 0, 524307, 0, 0, 524308, 0, 0, 589824, 0, 0, 589825, 0, 0, 589827, 1, 0, 589828, 1, 0, 589829, 1, 0, 589830, 1, 0, 589831, 1, 0, 589832, 1, 0, 589833, 1, 0, 589834, 1, 0, 589835, 1, 0, 589836, 1, 0, 589837, 1, 0, 589843, 0, 0, 589844, 0, 0, 655360, 0, 0, 655361, 0, 0, 655362, 2, 0, 655363, 2, 0, 655364, 2, 0, 655365, 2, 0, 655366, 2, 0, 655367, 2, 0, 655368, 2, 0, 655369, 2, 0, 655370, 2, 0, 655371, 2, 0, 655372, 2, 0, 655373, 2, 0, 655374, 2, 0, 655375, 2, 0, 655376, 2, 0, 655377, 2, 0, 655378, 2, 0, 655379, 0, 0, 655380, 0, 0, 720896, 0, 0, 720897, 0, 0, 720898, 0, 0, 720899, 0, 0, 720900, 0, 0, 720901, 0, 0, 720902, 0, 0, 720903, 0, 0, 720904, 0, 0, 720905, 0, 0, 720906, 0, 0, 720907, 0, 0, 720908, 0, 0, 720909, 0, 0, 720910, 0, 0, 720911, 0, 0, 720912, 0, 0, 720913, 0, 0, 720914, 0, 0, 720915, 0, 0, 720916, 0, 0 )

   [gd_scene load_steps=4 format=2]

[ext_resource path="res://PlayerController.gd" type="Script" id=1]
[ext_resource path="res://icon.png" type="Texture" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 31.8056, 32.1154 )

[node name="Player_Scene" type="Node2D"]

[node name="Player" type="KinematicBody2D" parent="."]
position = Vector2( 495.463, 262.051 )
scale = Vector2( 0.866635, 1.5768 )
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="Player"]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
shape = SubResource( 1 )

[node name="Camera2D" type="Camera2D" parent="Player"]
position = Vector2( -0.000152588, 1.29233 )
current = true
drag_margin_left = 0.0
drag_margin_top = 1.0
drag_margin_right = 0.0
drag_margin_bottom = 1.0
editor_draw_drag_margin = true

[node name="Position2D" type="Position2D" parent="Player"]

           [gd_resource type="TileSet" load_steps=7 format=2]

[ext_resource path="res://Tiles/tileset.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 24.5098, 25 )

[sub_resource type="AtlasTexture" id=2]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 50, 50 )

[sub_resource type="AtlasTexture" id=3]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 200, 0, 50, 50 )

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 25, 25 )

[sub_resource type="AtlasTexture" id=5]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 50, 0, 50, 50 )

[resource]
0/name = "Wall"
0/texture = SubResource( 2 )
0/tex_offset = Vector2( 0, 0 )
0/modulate = Color( 1, 1, 1, 1 )
0/region = Rect2( 0, 0, 50, 50 )
0/tile_mode = 0
0/occluder_offset = Vector2( 25, 25 )
0/navigation_offset = Vector2( 25, 25 )
0/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 1 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 25, 25 )
} ]
0/z_index = 0
1/name = "WallBackground"
1/texture = SubResource( 3 )
1/tex_offset = Vector2( 0, 0 )
1/modulate = Color( 1, 1, 1, 1 )
1/region = Rect2( 0, 0, 50, 50 )
1/tile_mode = 0
1/occluder_offset = Vector2( 25, 25 )
1/navigation_offset = Vector2( 25, 25 )
1/shapes = [  ]
1/z_index = 0
2/name = "FloorFlat"
2/texture = SubResource( 5 )
2/tex_offset = Vector2( 0, 0 )
2/modulate = Color( 1, 1, 1, 1 )
2/region = Rect2( 0, 0, 50, 50 )
2/tile_mode = 0
2/occluder_offset = Vector2( 25, 25 )
2/navigation_offset = Vector2( 25, 25 )
2/shapes = [ {
"autotile_coord": Vector2( 0, 0 ),
"one_way": false,
"one_way_margin": 1.0,
"shape": SubResource( 4 ),
"shape_transform": Transform2D( 1, 0, 0, 1, 25, 25 )
} ]
2/z_index = 0

       [gd_scene load_steps=7 format=2]

[ext_resource path="res://Tiles/tileset.png" type="Texture" id=1]

[sub_resource type="AtlasTexture" id=2]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 50, 50 )

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 24.5098, 25 )

[sub_resource type="AtlasTexture" id=3]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 200, 0, 50, 50 )

[sub_resource type="AtlasTexture" id=5]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 50, 0, 50, 50 )

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 25, 25 )

[node name="TilesetSceene" type="Node2D"]

[node name="Wall" type="Sprite" parent="."]
position = Vector2( 25, 25 )
scale = Vector2( 1.02, 1 )
texture = SubResource( 2 )

[node name="StaticBody2D" type="StaticBody2D" parent="Wall"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Wall/StaticBody2D"]
shape = SubResource( 1 )

[node name="WallBackground" type="Sprite" parent="."]
position = Vector2( 146, 25 )
texture = SubResource( 3 )

[node name="FloorFlat" type="Sprite" parent="."]
position = Vector2( 85, 25 )
texture = SubResource( 5 )

[node name="StaticBody2D" type="StaticBody2D" parent="FloorFlat"]

[node name="CollisionShape2D" type="CollisionShape2D" parent="FloorFlat/StaticBody2D"]
shape = SubResource( 4 )

             GDST�   2           �  PNG �PNG

   IHDR   �   2   uW��  EIDATx��]͏�u���P�R\J�&ce�,S4e:`>Y�hÎ!�	0�W��� �#"喋!�À��MC�I���B�l�\Q�i��������Q/��W����gfwfw�ͷ��������_��W�ѭÇ	C��?�?}zX�9�v����m�$Ov|��[T�l���_�<>��D�n��  ~���'>��ॻ�2 ��d��ăO?�)���yb¿44||�������b��)��R	@�Q��ع�O�Z(����}��s8ڳ ��r���SO�0#�v���� yt㭷�Y[C{m-�6��X	kUZ~�˓���!�������. �C ���ULLMm�
}�\�Ծ���]ݻ����?�����)�@��#D��|/�+ ����%(��"$�	:���r�I�bْ���ߣͣ��z 0�{���Zr#1Ci|���\��H�yɃA^��> @���!�z�`�u��v��������K'y����L	����@�Dl*{j�SY��]EȀ7IK	X���0�ᆅt�uC%i�n�����������s��|�x�>șר�]����ܼ�g�a��Cix�yRf�qG3��0BD�-�("D죃��\3`W������(�Қ�BF E`g�(�Y���"-��)}�4���r�W���ޣ���_��9gk������Vj��}����7 _[[Î��Q~�I 	����O��9S�����G�H8��i��C\�N|>|>s��Vbn:�Y���@�;"�.1�200\�����w���хT�o~RP��;/�*��"�	�_x�b=�g���V.����&��;��O����˒k�0�I�3b#���a��A�\��(�M��z����/�9ۓߪ�p���������  {�����q�����W���;1���2� �~uW�fC��$�y�����!���}�}ݸ� )������gI��kc�y�G�L��n!v�Ӯ{Q�b�s�T�-o�p@�T����i(�@q���V�T������`X��ǣ癱����[��K�J�;�^�M�+?]f��#��u(�WZ�y�6�'Xa<p�+*+zGO�轋��<G>?(~�7�#�M>�b�1
�ɯ~�{`/��E��U+hű�ӌc\�T�O�wv�|���ǃSd $��C��!p����}I>߼��^��r�`�����s�d��=�V��F6_hT��E�"�޶@V!Jg���	���V����� ����%�1�n���w+4��^��x�R��v��9��奥��Q�`���-�O��p��m�4�S⺓�xf�I%�㤷�ˎ�seu��$uD���`��a
'�;�Y 3=AE�c+�΅ ���� R`#`n��cO��z��3h6�L{�1�=S�b�f�MLMY7��أ�&�Gh4>�g�=+m��C=8��� ����{t]�U=����뛰Hz�H̵����I^��}ܫ*���\� �3�fz�H��D�+�[E75��������%�ku̞9�fc��=�+�V���LM�J��|׭[ �� {^�	d��~��i!�҄\v�8ԓ�@/��;�2pZn���S=��nh�/x	�??t�ÇѮ��ZDsO|�;�j5�==��������~3=��~�<��=ON��x��y �}���ٶ:�nE���^� ��s�F�;�GLN4�'N] �\
H�??th��_�K���;��j�Kގ;���&~�as���|�	�rn�����
����E-��@eز�����0�Rq��c ���y�v��F�
���{�hb{�xe=� ���� N�@�4l��wQ�f-PY��rx��K����)�(z�>�=9�m]���0�� y�^��=���*�Q�VWq�G?�߽�v�� (8p|u~ Nd�k�n|/L|�w��Fh��J���}&;���{R�:t9��#�<�ȳ�g嚹��`���S�\�ѣ�(� ��a����y�^Ǉgg�j��G+�1??���z{�����36>d��y/#�Ys�y|�����9����;ǜ��/h�#�.s1zE�4U���(�J��M��ҏ��9�N��e�͆�|��m4R��a�uӓ{�_�0��۷o�Q��Ոn��*����� ;�xX`Ϛ�<4��7
��2�gɒ׳F�y+��I��1�$<}$��흔�K&����7e桉`W��[z�H	EHL}���`�a{='�.ȶ��6h�n�ZM$��]&�j5��σ�xh��8�=��o���^{ߤN�'FM}��Cp��4�KC~��w &����'|J��=
9v�ۖ�@���Z񤗓���x�+\y�rD���Ȋ��Dn�Q=�m�ı�6��{@����"v�_=��G3��~س�E��`c���YZ�����W�	�dak��J���y�E��(_�(�1��I�b{�t ��b�ll@��������=t��y�|J � z�u��x`/�y�^u�ɇm�Vx!L�;{�dy�K�)����o�
�z��d�������{��G�C6�-Ldh�do躜d+���5PQ�ݐ��iL(+�2�P�+��6�Z���^&D�}��y�z���F����I� ,��f�[� �_�[�����K翧�|%�~5�V���T|�Vɬ�kl#\�xlh$�NCV�o|@�tE	�,�M*�޶Q�@���~�'�*[e^�v���5��PJ�0ؔw�5��7|Y|��jC�<�%�඾��r��l�<W��R�����!?e|�kP�z)e�*^�R=�*Q��e�J����@���JEO�m�=Zq���,�|��9�����{ оvm���+���r�B������2��n�\^g��Ez�l'z.�UwZtb�M�d��$2���(�HLkQ���"߅��"H������,P)�?��L�Fcd��j�h��Uo��%=��]�3 `u`�s�{�e�zX
��yQ��+�O�������+{ሤ�!.")�!�@��"���@�"{,.��LM_J��N� ��ٕkװ��'�.�F�l���Y���mhQK�*e �A.P�,
-���� N� ��_���/jY/m�"�"ɀ�#G�����2��0��4�gZ����_ 8����o�Z��Y��Rˠi3vQ�z��T�K@}hT�Y���|�,�~�u�ƏMN���� p*��u㙆�Pe3�8_jI�Ĵ�3�5u'��#ќO9i�
1�Ń7DN�Ԡ�'��G�t]�\�5��y�^�GgϢ����F����q��m#g���I~�������d�A��A�^ֲx�
���s&���T2�V�B�:I���͓��C@�wסc�2r�b���'&�'�(z�C�E�[�ޗ��*w�U4WV��ǰ����F�q���<��{v�1���5L��g�j�3Vs-��l~!��u�C��J2�'0Q���TO�t�S'�u��xf5j�<��4�,�ә֝Dy϶���b��+�c�!�e�@�/P����z{`r�$��ݷ�zzv�6��e}l�� <<�"�g����H&/lJn?��i�`����d�����='���)+�σB�s�F�7W[y��!�l��s�atS�p@G�腲c�h����r�J��H�{�cm�	�"�+�2h�[x��[WY(��s�?,r��F���tD����82
�G7����>�Jō]/�=��ޫVR`��wvξ��'�������{Q�I���2�����P�lZ��ܯ�����aF�_<�J��ou؀)EH��$�7�CI��Ӳ�(Z4v��#���]_��q�RA3v���d�f#�"��H��7�{�^c�C���_ ��lHF�}�!~���)�����0ad[��n���J�	q�Ά�8n�h����]i�{�6zQ�Ȣ�� }Įג��f#.�=�6b̞�`�n�ew�xy�G $_~�$�%��{{�&t��5&��� ��G��^�ڶ&����%\3"v�\u��#z�K\)d�ļE����z��E�#D���]c�k5�VΠ�h��أ7�[�0���|ǎ �/��{m��%ݻ�o��=.9��z�{k
���KٲA 6� ��E�ç.`M),��⡣G�{b+q������#?19yr9�)�;n��T�_��	P8��c��ź�9!RGEH暮=
 X��m�>lʋ��A~G�;��+>�B࣯X�m��-�= Y�[����`/��ݻw�����G(6�Ν;	� �ןy�g�3>F�#=}�(�����"�TR��Y�]V�:����c����أ��s�ΓA�X���ġd~�v ����h���$1 @"rH�W�y9?I9z`ƕ�#�z���<;2[=���T/�R O>��-=F��8�G33N�����;9�졭�hxZ��>kz.�8T�Py����d�-씊;KH}��Y�� �KEv*����(+�Dv���c����#a|!�(z��૯�J�����v��ff��FF��G3����n���P�, �~�R�hz޹�����9t_w��i{d7*|l�n
@b�-�Ǟ�{l �y�6���VRn�(Bv#!��/�\=�fʙ�R���TFM��G3N�zˊ�Om86�|-�=�H�����I���yZ��*7�L�3Q`3���慱#����+�".(/A�i�U�@��LL����H�+�%%��V=�ï�*OSa��j5� �/���2�Q�c���m���_/]B������@@BS�u�u؃�=�OɺTn뛜�#�9�A�w7��U�+)"(���-��j��dd�)�^1��-1�]wb��<�]�2zz��=x�ے�Ɠ׳���\=`����~n9�du3z�rtذ=�㌻Dv��$���0'��y�����Dk��&�����zhd���'Q=LEH�LD�k5\��2�z��=(�q�:���� ;�͂ͽ� W�����U9<��P9{��䔸��-aG\����q��"��g$tH�����������-�Z��;�G� |����|Ώ]����G_�ѶG+n�b��	��|9��������[���w���_+���C%M�N`{�yd����0�;�X�ktn�I�0�c����DP���e�e/�I�2���;�οX�a�ZAS�h����ъ���)�����(p�>�_��(��(/���� ����S�����J#�G��h�������._���rf�����7m����4����+�[���ۥK�N�x�~�1���~/�}���SS?߷��ݳV���>� ͻw�ݣ�}�ߏ�y�Y��%�����������/[\����KT�����    IEND�B`�  [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tileset.png-bb5420214e86ea5d0607fa2f6101e97b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Tiles/tileset.png"
dest_files=[ "res://.import/tileset.png-bb5420214e86ea5d0607fa2f6101e97b.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )

            GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://PlayerController.gdc"
     �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         New Game Project   application/run/main_scene          res://Scenes/Game.tscn     application/config/icon         res://icon.png  #   rendering/quality/2d/use_pixel_snap         )   rendering/environment/default_environment          res://default_env.tres      GDPC