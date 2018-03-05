/// @description Init
// You can write your code in this editor
title_billboard = instance_create_layer(0, 0, "Title", obj_Billboard);
title_billboard.sprite_index = obj_Sprite_Loader.title_sprite;
title_billboard.x =
	window_width / 2 - 
	(sprite_get_width(title_billboard.sprite_index) / 2);	
title_billboard.y = 50;

main_menu = scr_Menu_NEW(
	window_x_center, 550,
	["Play", "One Shot", "Achievements", "High Scores", "Exit"]
);

difficulty_menu_labels[0] = "Cool";
difficulty_menu_labels[1] = "Easy";
var index = 2;
if (global.steam.unlocked[steam_ach_The_Dabbler]) {
	difficulty_menu_labels[index] = "Medium";
	index += 1;
}

difficulty_menu_labels[index] = "Back To Main Menu";
difficulty_menu = scr_Menu_NEW(
	window_x_center, 500,
	difficulty_menu_labels
	//["Cool", "Easy", "Medium", "Hard", "Difficult", "Back To Main Menu"]
);
difficulty_menu.active = false;