/// @description Init
nyu_incubator_logo_billboard = instance_create_layer(0, 0, "Instances", obj_Billboard);
nyu_incubator_logo_billboard.sprite_index = spr_logo_nyu;

nyu_incubator_logo_billboard.x =
	window_width / 2 -
	(sprite_get_width(nyu_incubator_logo_billboard.sprite_index) / 2);
	
nyu_incubator_logo_billboard.y =
	window_height / 2 -
	(sprite_get_height(nyu_incubator_logo_billboard.sprite_index) / 2);

alarm_set(0, game_fps);