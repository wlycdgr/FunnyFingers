/// @description Init
// You can write your code in this editor
title_billboard = instance_create_layer(0, 0, "Title", obj_Billboard);
title_billboard.sprite_index = obj_Sprite_Loader.title_sprite;
title_billboard.x =
	window_width / 2 - 
	(sprite_get_width(title_billboard.sprite_index) / 2);	
title_billboard.y = 50;

scr_Init_Menu(id, ["Play", "Achievements", "High Scores", "Exit"]);