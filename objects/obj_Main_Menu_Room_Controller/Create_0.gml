/// @description Init
funny = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(funny, "FUNNY");
scr_Splitsfont_Set_Tweaks(funny, [0.181, 0.062, 0.078, 0, 0]);
funny_y = 0.11 * window_height;
funny_x = window_x_center - scr_Splitsfont_Get_Width(funny) / 2;

fingers = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(fingers, "FINGERS");
scr_Splitsfont_Set_Tweaks(fingers, [0.122, 0.008, 0.059, 0, 17]);
fingers_y = 0.36 * window_height;
fingers_x = window_x_center - scr_Splitsfont_Get_Width(fingers) / 2;



main_menu = scr_Menu_NEW(
	window_x_center, 550,
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
	window_x_center, 550,
	difficulty_menu_labels
);
difficulty_menu.active = false;