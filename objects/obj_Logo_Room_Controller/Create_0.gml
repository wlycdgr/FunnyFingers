/// @description Init
logo_billboard = instance_create_layer(0, 0, "Instances", obj_Billboard);
logo_billboard.sprite_index = obj_Sprite_Loader.logo_sprite;

logo_billboard.x =
	window_width / 2 -
	(sprite_get_width(logo_billboard.sprite_index) / 2);
	
logo_billboard.y =
	window_height / 2 -
	(sprite_get_height(logo_billboard.sprite_index) / 2);

alarm_set(0, game_fps);
