/// @description Init
hs_header = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(hs_header, "HIGH SCORES");
scr_Splitsfont_Set_Tweaks(hs_header, [0.08, 0.004, 0.04, 0, 0]);
hs_header_y = 0.1 * window_height;

hs_header_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
hs_header_tween.close_enough *= 0.01;

hs_header_x_path = 
	scr_SlideTween_Add_Default_Path(hs_header_tween, hs_header, slide_left);


/*
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
*/

// MENU
hs_menu_labels[0] = "RESET SELECTED DIFFICULTY";
hs_menu_labels[1] = "RESET ALL";
hs_menu_labels[2] = "MAIN MENU";

hs_menu = scr_Menu_NEW(
	window_x_center, 0.75 * window_height,
	hs_menu_labels,
	menu_is_tweened
);
