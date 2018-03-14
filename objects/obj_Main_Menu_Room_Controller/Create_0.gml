/// @description Init
// You can write your code in this editor
funny_fingers = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(funny_fingers, "FUNNY FINGERS");

main_menu = scr_Menu_NEW(
	window_x_center, 450,
	["Play", "Exit"]
);

difficulty_menu_labels[0] = "Cool";
difficulty_menu_labels[1] = "Easy";

if (
	ds_map_find_value(
		global.steam.unlocked, 
		global.steam.ach_api_names[steam_ach_The_Qualifier]
	)
) { 
	difficulty_menu_labels[2] = "Medium";
}
else { difficulty_menu_labels[2] = "??????"; }

if (
	ds_map_find_value(
		global.steam.unlocked, 
		global.steam.ach_api_names[steam_ach_The_Breakout_Performer]
	)
) { 
	difficulty_menu_labels[3] = "Hard";
}
else { difficulty_menu_labels[3] = "????"; }

if (
	ds_map_find_value(
		global.steam.unlocked, 
		global.steam.ach_api_names[steam_ach_The_Champion]
	)
) { 
	difficulty_menu_labels[4] = "Difficult";
}
else { difficulty_menu_labels[4] = "?????????"; }

difficulty_menu_labels[5] = "Main Menu";

difficulty_menu = scr_Menu_NEW(
	window_x_center, 450,
	difficulty_menu_labels
);
difficulty_menu.active = false;