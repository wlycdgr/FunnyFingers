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
#macro steam_achievement_count 11
#macro steam_ach_QWEIOP 0
#macro steam_ach_The_Dabbler 1
#macro steam_ach_The_Qualifier 2
#macro steam_ach_The_Up_And_Comer 3
#macro steam_ach_Fignermuckre 4
#macro steam_ach_Triple_Up 5
#macro steam_ach_Best_Friend 6 
#macro steam_ach_No_Pressure 7
#macro steam_ach_The_Score_Is_Right 8
#macro steam_ach_A_Longest_Word 9
#macro steam_ach_Level_99 10
#macro steam_ach_The_Dabbler_unlock_score 50
#macro steam_ach_The_Qualifier_unlock_score 100
#macro steam_ach_The_Up_And_Comer_unlock_score 200
#macro steam_ach_Fignermukcre_unlock_score 50
#macro steam_ach_Triple_Up_multiple 3
#macro steam_ach_Triple_Up_minimum_previous_high_score 10000 // ten thousand

#macro steam_high_scores_leaderboard_cool "Cool"
#macro steam_high_scores_leaderboard_easy "Easy"
#macro steam_high_scores_leaderboard_medium "Medium"
#macro steam_high_scores_leaderboard_hard "Hard"
#macro steam_high_scores_leaderboard_difficult "Difficult"
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

#macro title_y 150
#macro header_y 75

#macro playfield_height 512
#macro playfield_count 1
#macro playfield_y ((window_height - playfield_height) / 2)
#macro playfield_bottom_y window_height - (((window_height - playfield_height) / 2))

#macro column_count_cool 5
#macro column_count_easy 6
#macro column_count_medium 7
#macro column_count_hard 8
#macro column_count_difficult 9
#macro column_width 48

#macro funny_finger_count_cool 1
#macro funny_finger_count_easy 2
#macro funny_finger_count_medium 3
#macro funny_finger_count_hard 4
#macro funny_finger_count_difficult 5
#macro half_of_width_difference_with_column 8

#macro score_valid_move_base_value 1
#macro score_grow_to_target_per_frame 1
#macro score_cashout_dialogue_penalty_per_frame 0.1
#macro scoreboard_color_cashout_enabled c_green
#macro scoreboard_color_cashout_disabled c_red

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

#macro mb_max_multiplier 100
#macro mb_min_multiplier 1
#macro mb_max_seconds_to_drain 3.0
#macro mb_min_seconds_to_drain 1.0
#macro mb_time_to_drain_reduction_in_seconds_for_successful_move 0.02