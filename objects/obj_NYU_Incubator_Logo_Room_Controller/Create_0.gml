/// @description Insert description here
// You can write your code in this editor
nyu_incubator_logo_billboard = instance_create_layer(0, 0, "Instances", obj_Billboard);
nyu_incubator_logo_billboard.sprite_index = obj_Sprite_Loader.nyu_incubator_logo_sprite;

nyu_incubator_logo_billboard.x =
	window_width / 2 -
	(sprite_get_width(nyu_incubator_logo_billboard.sprite_index) / 2);
	
nyu_incubator_logo_billboard.y =
	window_height / 2 -
	(sprite_get_height(nyu_incubator_logo_billboard.sprite_index) / 2);

alarm_set(0, game_fps);