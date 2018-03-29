/// @description Init

space_main_menu = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(space_main_menu, "SPACEBAR: MAIN MENU");
scr_Splitsfont_Set_Tweaks(space_main_menu, [0.015, 0.0015, 0.01, 0, 0]);

hs_header = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(hs_header, "COOL HIGH SCORES");
hs_header_x = 
	window_x_center -
	(scr_Splitsfont_Get_Width(hs_header) / 2);
hs_header_y = 0.1 * window_height;

hs_value_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
var hs_value = ds_map_find_value(global.itch.stats, "stat_lifetime_cool_points");
scr_Splitsfont_Set_Text(hs_value_string, "HIGH SCORE: " + string(hs_value));
hs_value_string_x = 
	window_x_center -
	(scr_Splitsfont_Get_Width(hs_value_string) / 2);
hs_value_string_y = 0.35 * window_height;

runner_up_value_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
var runner_up_value = ds_map_find_value(global.itch.stats, "stat_lifetime_cool_points_runner_up");
scr_Splitsfont_Set_Text(runner_up_value_string, "RUNNER UP: " + string(runner_up_value));
runner_up_value_string_x = 
	window_x_center -
	(scr_Splitsfont_Get_Width(runner_up_value_string) / 2);
runner_up_value_string_y = 0.5 * window_height;

// MENU
hs_menu_labels[0] = "RESET COOL SCORES";
hs_menu_labels[1] = "RESET EASY SCORES";
hs_menu_labels[2] = "RESET MEDIUM SCORES";
hs_menu_labels[3] = "RESET HARD SCORES";
hs_menu_labels[4] = "RESET DIFFICULT SCORES";
hs_menu_labels[5] = "MAIN MENU";

hs_menu = scr_Menu_NEW(
	window_x_center, 0.75 * window_height,
	hs_menu_labels,
	menu_is_tweened
);
