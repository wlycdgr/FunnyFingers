/// @description Init
gms2_logo_billboard = instance_create_layer(0, 0, "Instances", obj_Billboard);
gms2_logo_billboard.sprite_index = spr_logo_gms2;

raylib_logo_billboard = instance_create_layer(0, 0, "Instances", obj_Billboard);
raylib_logo_billboard.sprite_index = spr_logo_raylib;

gms2_logo_billboard.x =
	1.25 * (window_width / 3.75) -
	(sprite_get_width(gms2_logo_billboard.sprite_index) / 2);
	
gms2_logo_billboard.y =
	window_height / 2 -
	(sprite_get_height(gms2_logo_billboard.sprite_index) / 2);
	
raylib_logo_billboard.x =
	2.5 * (window_width / 3.75) -
	(sprite_get_width(raylib_logo_billboard.sprite_index) / 2);
	
raylib_logo_billboard.y =
	window_height / 2 -
	(sprite_get_height(raylib_logo_billboard.sprite_index) / 2);


alarm_set(0, game_fps);