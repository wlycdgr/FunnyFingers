/// @description Init

funny_fingers = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(funny_fingers, "FUNNY FINGERS");
//scr_Splitsfont_Set_Kern(funny_fingers, 0.005);

main_menu = scr_Menu_NEW(
	window_x_center, 450,
	["PLAY", "CREDITS", "EXIT"]
);

difficulty_menu_labels[0] = "COOL";
difficulty_menu_labels[1] = "EASY";

if (
	ds_map_find_value(
		global.steam.unlocked, 
		global.steam.ach_api_names[steam_ach_The_Qualifier]
	)
) { 
	difficulty_menu_labels[2] = "MEDIUM";
}
else { difficulty_menu_labels[2] = "??????"; }

if (
	ds_map_find_value(
		global.steam.unlocked, 
		global.steam.ach_api_names[steam_ach_The_Breakout_Performer]
	)
) { 
	difficulty_menu_labels[3] = "HARD";
}
else { difficulty_menu_labels[3] = "????"; }

if (
	ds_map_find_value(
		global.steam.unlocked, 
		global.steam.ach_api_names[steam_ach_The_Champion]
	)
) { 
	difficulty_menu_labels[4] = "DIFFICULT";
}
else { difficulty_menu_labels[4] = "?????????"; }

difficulty_menu_labels[5] = "MAIN MENU";

difficulty_menu = scr_Menu_NEW(
	window_x_center, 450,
	difficulty_menu_labels
);
difficulty_menu.active = false;


splitsfont_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
scr_Splitsfont_Tweaker_Add_String(splitsfont_tweaker, funny_fingers);