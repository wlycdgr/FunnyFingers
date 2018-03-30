/// @description Init
hs_header = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(hs_header, "HIGH SCORES");
scr_Splitsfont_Set_Tweaks(hs_header, [0.04, 0.007, 0.01, 0, 0]);
hs_header_y = 0.02 * window_height;

hs_header_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
hs_header_tween.close_enough *= 0.01;

hs_header_x_path = 
	scr_SlideTween_Add_Default_Path(hs_header_tween, hs_header, slide_left);
	
//header_ribbon_cool = instance_create_layer(0, 0, "SPLITSFONT", obj_Splitsfont_String);
//scr_Splitsfont_Set_Text(

score_x = window_x_center + 24;

scores_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
scores_tween.close_enough *= 0.01;
scores_x_path = scr_SlideTween_Add_Path(
	scores_tween,
	[
		window_width,
		score_x,
		slide_three_window_widths
	]
);

var score_tweak_values = [0.035, 0.005, 0.01, 0, 0];
score_y_positions = [
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
name_y_positions = [
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


// COOL LEADERBOARD
var cool_score_stat_names = [
	"stat_lifetime_cool_points",
	"stat_lifetime_cool_points_runner_up"
];
var cool_name_stat_names = [
	"stat_lifetime_cool_points_person",
	"stat_lifetime_cool_points_runner_up_person"
];
cool_leaderboard_length = array_length_1d(cool_score_stat_names);

cool_names_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
cool_names_tween.close_enough *= 0.01;

var leaderboard_string;
var leaderboard_string_width;
for (var i = 0; i < cool_leaderboard_length; i++) {
	leaderboard_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(
		leaderboard_string,
		ds_map_find_value(global.itch.stats, cool_score_stat_names[i])
	);
	scr_Splitsfont_Set_Tweaks(leaderboard_string, score_tweak_values);
	cool_scores[i] = leaderboard_string;
	
	leaderboard_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(
		leaderboard_string,
		ds_map_find_value(global.itch.stats, cool_name_stat_names[i])
	);
	scr_Splitsfont_Set_Tweaks(leaderboard_string, names_tweak_values);
	cool_names[i] = leaderboard_string;
	
	leaderboard_string_width = scr_Splitsfont_Get_Width(leaderboard_string);
	
	cool_name_x_positions[i] = 
		names_right_border -
		leaderboard_string_width
	
	cool_name_x_paths[i] = scr_SlideTween_Add_Path(
		cool_names_tween,
		[
			-window_width,
			cool_name_x_positions[i],
			-slide_three_window_widths
		]
	);
}


// MEDIUM LEADERBOARD
var medium_score_stat_names = [
	"stat_medium_high_score",
	"stat_medium_2nd_highest_score",
	"stat_medium_3rd_highest_score",
	"stat_medium_4th_highest_score",
	"stat_medium_5th_highest_score",
	"stat_medium_6th_highest_score",
];

var medium_name_stat_names = [
	"stat_medium_high_score_person",
	"stat_medium_2nd_highest_score_person",
	"stat_medium_3rd_highest_score_person",
	"stat_medium_4th_highest_score_person",
	"stat_medium_5th_highest_score_person",
	"stat_medium_6th_highest_score_person",
];
medium_leaderboard_length = array_length_1d(medium_name_stat_names);

for (var i = 0; i < medium_leaderboard_length; i++) {
	leaderboard_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(
		leaderboard_string,
		ds_map_find_value(global.itch.stats, medium_score_stat_names[i])
	);
	scr_Splitsfont_Set_Tweaks(leaderboard_string, score_tweak_values);
	medium_scores[i] = leaderboard_string;
	
	leaderboard_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(
		leaderboard_string,
		ds_map_find_value(global.itch.stats, medium_name_stat_names[i])
	);
	scr_Splitsfont_Set_Tweaks(leaderboard_string, names_tweak_values);
	medium_names[i] = leaderboard_string;
	
	medium_name_x_positions[i] = 
		names_right_border -
		scr_Splitsfont_Get_Width(leaderboard_string);
}



//sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, hs_header);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, cool_scores[0]);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, cool_scores[1]);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, cool_names[0]);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, cool_names[1]);


// MENU
hs_menu_labels[0] = "RESET SELECTED DIFFICULTY";
hs_menu_labels[1] = "RESET ALL";
hs_menu_labels[2] = "MAIN MENU";

hs_menu = scr_Menu_NEW(
	window_x_center, 0.8 * window_height,
	hs_menu_labels,
	menu_is_tweened
);
