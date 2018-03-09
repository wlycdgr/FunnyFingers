/// @description Init
// You can write your code in this editor
title_billboard = instance_create_layer(0, 0, "Title", obj_Billboard);
title_billboard.sprite_index = global.sprites_and_fonts.title_sprite;
title_billboard.x =
	window_width / 2 - 
	(sprite_get_width(title_billboard.sprite_index) / 2);	
title_billboard.y = title_y;

main_menu = scr_Menu_NEW(
	window_x_center, 450,
	["Play", "High Scores", "Exit"]
);

difficulty_menu_labels[0] = "Cool";
difficulty_menu_labels[1] = "Easy";

if (global.steam.unlocked[steam_ach_The_Dabbler]) { 
	difficulty_menu_labels[2] = "Medium";
}
else { difficulty_menu_labels[2] = "??????"; }

if (global.steam.unlocked[steam_ach_The_Qualifier]) {
	difficulty_menu_labels[3] = "Hard";
}
else { difficulty_menu_labels[3] = "????"; }

if (global.steam.unlocked[steam_ach_The_Up_And_Comer]) {
	difficulty_menu_labels[4] = "Difficult";
}
else { difficulty_menu_labels[4] = "?????????"; }

difficulty_menu_labels[5] = "Back To Main Menu";

difficulty_menu = scr_Menu_NEW(
	window_x_center, 450,
	difficulty_menu_labels
);
difficulty_menu.active = false;