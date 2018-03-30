/// @description Init
hs_header = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(hs_header, "HIGH SCORES");
scr_Splitsfont_Set_Tweaks(hs_header, [0.08, 0.004, 0.04, 0, 0]);
hs_header_y = 0.1 * window_height;

hs_header_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
hs_header_tween.close_enough *= 0.01;

hs_header_x_path = 
	scr_SlideTween_Add_Default_Path(hs_header_tween, hs_header, slide_left);

score_x = window_x_center + 24;
var score_tweak_values = [0.035, 0.005, 0.01, 0, 0];
var score_y_positions = [
	0.14 * window_height,
	0.20 * window_height,
	0.26 * window_height,
	0.32 * window_height,
	0.38 * window_height,
	0.44 * window_height,
	0.50 * window_height,
	0.56 * window_height,
	0.62 * window_height,
	0.68 * window_height
];

names_right_border = window_x_center - 24;
var names_tweak_values = [0.02, 0.001, 0.01, 0, 0];
var name_y_positions = [
	0.15 * window_height,
	0.21 * window_height,
	0.27 * window_height,
	0.33 * window_height,
	0.39 * window_height,
	0.45 * window_height,
	0.51 * window_height,
	0.57 * window_height,
	0.63 * window_height,
	0.69 * window_height
];

var cool_points_stat_names = [
	"stat_lifetime_cool_points",
	"stat_lifetime_cool_poitns_runner_up"
];




lifetime_cool_points_scores[0] = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(
	lifetime_cool_points_scores[0],
	ds_map_find_value(global.itch.stats, "stat_lifetime_cool_points")
);
lifetime_cool_points_scores[0].x = window_x_center + 24;
lifetime_cool_points_scores[0].y = 0.3 * window_height;

lifetime_cool_points_scores[1] = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(
	lifetime_cool_points_scores[1],
	ds_map_find_value(global.itch.stats, "stat_lifetime_cool_points_runner_up")
);
lifetime_cool_points_scores[1].x = window_x_center + 24;
lifetime_cool_points_scores[1].y = 0.45 * window_height;


lifetime_cool_points_names[0] = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(
	lifetime_cool_points_names[0],
	ds_map_find_value(global.itch.stats, "stat_lifetime_cool_points_person")
);
lifetime_cool_points_names[0].x = 
	window_x_center - 
	scr_Splitsfont_Get_Width(lifetime_cool_points_names[0]) - 
	24;
lifetime_cool_points_names[0].y = 0.3 * window_height;


lifetime_cool_points_names[1] = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(
	lifetime_cool_points_names[1],
	ds_map_find_value(global.itch.stats, "stat_lifetime_cool_points_runner_up_person")
);
lifetime_cool_points_names[1].x = 
	window_x_center - 
	scr_Splitsfont_Get_Width(lifetime_cool_points_names[1]) - 
	24;
lifetime_cool_points_names[1].y = 0.45 * window_height;



sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
scr_Splitsfont_Tweaker_Add_String(sf_tweaker, hs_header);
scr_Splitsfont_Tweaker_Add_String(sf_tweaker, lifetime_cool_points_scores[0]);
scr_Splitsfont_Tweaker_Add_String(sf_tweaker, lifetime_cool_points_scores[1]);
scr_Splitsfont_Tweaker_Add_String(sf_tweaker, lifetime_cool_points_names[0]);
scr_Splitsfont_Tweaker_Add_String(sf_tweaker, lifetime_cool_points_names[1]);


// MENU
hs_menu_labels[0] = "RESET SELECTED DIFFICULTY";
hs_menu_labels[1] = "RESET ALL";
hs_menu_labels[2] = "MAIN MENU";

hs_menu = scr_Menu_NEW(
	window_x_center, 0.8 * window_height,
	hs_menu_labels,
	menu_is_tweened
);
