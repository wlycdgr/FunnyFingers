// Core Mechanics 
#macro core_enemy_speed_per_sec_min_default 125
global.core_enemy_speed_per_sec_min = 
	core_enemy_speed_per_sec_min_default;
#macro core_enemy_speed_per_sec_max_default 175
global.core_enemy_speed_per_sec_max = 
	core_enemy_speed_per_sec_max_default;
#macro core_energy_speed_per_sec_min_default 225
global.core_energy_speed_per_sec_min = 
	core_energy_speed_per_sec_min_default;
#macro core_energy_speed_per_sec_max_default 275
global.core_energy_speed_per_sec_max = 
	core_energy_speed_per_sec_max_default;
#macro core_enemy_minimum_period_in_sec_default 1.25
global.core_enemy_minimum_period_in_sec = 
	core_enemy_minimum_period_in_sec_default;
#macro core_enemy_maximum_period_in_sec_default 1.5
global.core_enemy_maximum_period_in_sec = 
	core_enemy_maximum_period_in_sec_default;
#macro core_energy_minimum_period_in_sec_default 0.75
global.core_energy_minimum_period_in_sec = 
	core_energy_minimum_period_in_sec_default;
#macro core_energy_maximum_period_in_sec_default 1.25
global.core_energy_maximum_period_in_sec = 
	core_energy_maximum_period_in_sec_default;
#macro core_funny_finger_move_time_in_sec_default 0.1
global.core_funny_finger_move_time_in_sec = 
	core_funny_finger_move_time_in_sec_default;
#macro core_funny_finger_shrink_per_sec_x_1000_default 30
global.core_funny_finger_shrink_per_sec_x_1000 = 
	core_funny_finger_shrink_per_sec_x_1000_default;
#macro core_funny_finger_starting_life_x_100_default 30
global.core_funny_finger_starting_life_x_100 = 
	core_funny_finger_starting_life_x_100_default;
#macro core_energy_value_x_100_default 15
global.core_energy_value_x_100 = 
	core_energy_value_x_100_default;
#macro core_funny_finger_grow_time_in_sec_default 0.35
global.core_funny_finger_grow_time_in_sec = 
	core_funny_finger_grow_time_in_sec_default;
// /Core Mechanics


// Steam
#macro steam_high_scores_table_name "High Scores"
#macro steam_achievement_count 12
// /Steam


#macro not_set -12345

#macro above_window -1000
#macro left_of_window -1000

#macro the_color_of_failure c_black
#macro the_color_of_information c_black

#macro game_fps game_get_speed(gamespeed_fps)

#macro window_height window_get_height()
#macro window_width window_get_width()
#macro window_x_center window_width / 2

#macro playfield_height 512
#macro playfield_count 1
#macro playfield_y ((window_height - playfield_height) / 2)
#macro playfield_bottom_y window_height - (((window_height - playfield_height) / 2))

#macro column_count 7
#macro column_width 48
#macro half_of_empty_columns floor((column_count - funny_finger_count) / 2)

#macro funny_finger_count 3
#macro starting_funny_finger_life 0.3
#macro half_of_width_difference_with_column 8

#macro score_color c_black
#macro score_valid_move_base_value 100
#macro score_grow_to_target_per_frame 10
#macro score_cashout_dialogue_penalty_per_frame 1

#macro sliding_ribbon_y 180
#macro sliding_ribbon_width window_width
#macro sliding_ribbon_height 360
#macro sliding_ribbon_slide_in_speed_in_pixels_per_frame (2 * (window_width / game_fps))
#macro sliding_ribbon_slide_out_speed_in_pixels_per_frame (2 * sliding_ribbon_slide_in_speed_in_pixels_per_frame)
#macro srs_inactive 0
#macro srs_sliding_in 1
#macro srs_ready 2
#macro srs_selection_made 3
#macro srs_sliding_out 4

#macro menu_color_selected c_red
#macro menu_color_unselected c_black
#macro menu_halign fa_center
#macro menu_vertical_spacing 35

#macro gs_cashed_out 0
#macro gs_cashout_dialogue 1
#macro gs_fading_in 2
#macro gs_fading_out 3
#macro gs_game_over 4
#macro gs_playing 5
#macro gs_restarting 6
#macro gs_viewing_high_scores 7

#macro fs_inactive 0
#macro fs_fading_in 1
#macro fs_fading_out 2
#macro fs_done 3