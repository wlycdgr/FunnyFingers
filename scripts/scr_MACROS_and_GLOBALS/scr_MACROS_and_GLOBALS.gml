// Core Mechanics 
#macro core_enemy_speed_per_sec_min_default 125
global.core_enemy_speed_per_sec_min = core_enemy_speed_per_sec_min_default;

#macro core_enemy_speed_per_sec_max_default 175
global.core_enemy_speed_per_sec_max = core_enemy_speed_per_sec_max_default;



#macro core_energy_speed_per_sec_min_default 225
global.core_energy_speed_per_sec_min = core_energy_speed_per_sec_min_default;

#macro core_energy_speed_per_sec_max_default 275
global.core_energy_speed_per_sec_max = core_energy_speed_per_sec_max_default;



#macro core_enemy_minimum_period_in_sec_default 1.25
global.core_enemy_minimum_period_in_sec = core_enemy_minimum_period_in_sec_default;

#macro core_enemy_maximum_period_in_sec_default 1.5
global.core_enemy_maximum_period_in_sec = core_enemy_maximum_period_in_sec_default;



#macro core_energy_minimum_period_in_sec_default 0.75
global.core_energy_minimum_period_in_sec = core_energy_minimum_period_in_sec_default;

#macro core_energy_maximum_period_in_sec_default 1.25
global.core_energy_maximum_period_in_sec = core_energy_maximum_period_in_sec_default;



#macro core_funny_finger_move_time_in_sec_default 0.1
global.core_funny_finger_move_time_in_sec = core_funny_finger_move_time_in_sec_default;



#macro core_funny_finger_shrink_per_sec_x_1000_default 35
global.core_funny_finger_shrink_per_sec_x_1000 = 
	core_funny_finger_shrink_per_sec_x_1000_default;
	
	
	
#macro core_funny_finger_starting_life_x_100_default 25
global.core_funny_finger_starting_life_x_100 = 
	core_funny_finger_starting_life_x_100_default;
	
	

#macro core_energy_value_x_100_default 15
global.core_energy_value_x_100 = core_energy_value_x_100_default;



#macro core_funny_finger_grow_time_in_sec_default 0.25
global.core_funny_finger_grow_time_in_sec = core_funny_finger_grow_time_in_sec_default;
// /Core Mechanics




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
#macro score_pause_penalty_per_frame 1

#macro ribbon_menu_y 180
#macro ribbon_menu_width window_width
#macro ribbon_menu_height 360
#macro ribbon_menu_slide_in_speed_in_pixels_per_frame (2 * (window_width / game_fps))
#macro ribbon_menu_slide_out_speed_in_pixels_per_frame (2 * ribbon_menu_slide_in_speed_in_pixels_per_frame)
#macro menu_color_selected c_red
#macro menu_color_unselected c_black
#macro rms_inactive 0
#macro rms_sliding_in 1
#macro rms_in_place_and_active 2
#macro rms_selection_made 3
#macro rms_sliding_out 4

#macro gs_playing 0
#macro gs_paused 1
#macro gs_game_over 2
#macro gs_fading_out 3
#macro gs_fading_in 4
#macro gs_restarting 5

#macro fs_inactive 0
#macro fs_fading_in 1
#macro fs_fading_out 2
#macro fs_done 3
