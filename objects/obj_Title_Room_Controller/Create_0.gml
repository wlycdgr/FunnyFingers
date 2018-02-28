/// @description Init
// You can write your code in this editor
title_billboard = instance_create_layer(0, 0, "Title", obj_Billboard);
title_billboard.sprite_index = obj_Sprite_Loader.title_sprite;
title_billboard.x =
	window_width / 2 - 
	(sprite_get_width(title_billboard.sprite_index) / 2);	
title_billboard.y = 50;


menu_item_index = 0;
menu_item_labels = ["Play", "Leaderboards", "Exit"];
menu_item_count = array_length_1d(menu_item_labels);
menu_selection_made = false;