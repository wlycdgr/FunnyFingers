// Game context
#macro game_fps game_get_speed(gamespeed_fps)

#macro window_height window_get_height()
#macro window_width window_get_width()
#macro window_x_center window_width / 2
// /Game context


// Game Settings
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

#macro game_difficulty_cool 0
#macro game_difficulty_easy 1
#macro game_difficulty_medium 2
#macro game_difficulty_hard 3
#macro game_difficulty_difficult 4
// /Game Settings

// SPLITSFONT
#macro SPLITSFONT_RotationAlignment_ChorusLine 1
#macro SPLTISFONT_RotationAlignment_Argyle -1
#macro SPLITSFONT_RotationDirection_CW -1
#macro SPLITSFONT_RenderStyle_Vertical 0
#macro WLY_DefaultAngleInDegs 30.0
#macro WLY_DefaultSizeAsPropOfScreenHeight 0.1
#macro WLY_DefaultStrokeWeightAsPropOfScreenHeight 0.01
#macro WLY_DefaultKernAsPropOfScreenHeight 0.02
#macro WLY_DefaultRotationAlignment SPLTISFONT_RotationAlignment_Argyle
#macro WLY_DefaultRotationDirection SPLITSFONT_RotationDirection_CW
#macro WLY_DefaultRotationSpeedInDegsPerSec 0.0
#macro WLY_DefaultRenderStyle SPLITSFONT_RenderStyle_Vertical

#macro splitsfont_size_menuItem 0.02
#macro splitsfont_weight_menuItem 0.002
#macro splitsfont_size_ribbonMenuHeader 0.06
#macro splitsfont_size_scoreboard 0.02
#macro splitsfont_weight_scoreboard 0.004
// /SPLITSFONT

// Core Mechanics 
#macro mb_max_multiplier 10000000
#macro mb_min_multiplier 1
#macro mb_max_seconds_to_drain 3.0
#macro mb_min_seconds_to_drain 3.0
#macro mb_time_to_drain_reduction_in_seconds_for_successful_move 0.02

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
#macro steam_achievement_count 15

#macro steam_ach_The_Challenger 0
#macro steam_ach_The_Lucky_Loser 1
#macro steam_ach_The_Qualifier 2
#macro steam_ach_The_Wildcard 3
#macro steam_ach_The_Up_And_Comer 4
#macro steam_ach_The_Breakout_Performer 5
#macro steam_ach_The_Pro 6
#macro steam_ach_The_Contender 7
#macro steam_ach_The_Champion 8
#macro steam_ach_The_Hall_Of_Famer 9
#macro steam_ach_The_Living_Legend 10
#macro steam_ach_Fignermukcre 11
#macro steam_ach_No_Pressure 12
#macro steam_ach_Level_99 13
#macro steam_ach_QWEIOP 14

#macro steam_ach_unlock_score_low 100 // 1k
#macro steam_ach_unlock_score_mid 250 //  3k
#macro steam_ach_unlock_score_high 500 // 10k


#macro steam_ach_No_Pressure_points_target steam_ach_unlock_score_high
#macro steam_ach_Level_99_points_target 100 //2452814 // 2,452,814


#macro steam_leaderboard_cool "Lifetime Cool Points"
#macro steam_leaderboard_easy "Easy Times"
#macro steam_leaderboard_medium "Medium Times"
#macro steam_leaderboard_hard "Hard Times"
#macro steam_leaderboard_difficult "High Scores"

#macro steam_leaderboard_easy_frames_low "Easy Times 1K"
#macro steam_leaderboard_easy_frames_mid "Easy Times 3K"
#macro steam_leaderboard_easy_frames_high "Easy Times 10K"
#macro steam_leaderboard_medium_frames_low "Medium Times 1K"
#macro steam_leaderboard_medium_frames_mid "Medium Times 3K"
#macro steam_leaderboard_medium_frames_high "Medium Times 10K"
#macro steam_leaderboard_hard_frames_low "Hard Times 1K"
#macro steam_leaderboard_hard_frames_mid "Hard Times 3K"
#macro steam_leaderboard_hard_frames_high "Hard Times 10K"
#macro steam_leaderboard_difficult_frames_low "Difficult Times 1K"
#macro steam_leaderboard_difficult_frames_mid "Difficult Times 3K"
#macro steam_leaderboard_difficult_frames_high "Difficult Times 10K"
#macro steam_leaderboard_easy_high_scores "Easy High Scores"
#macro steam_leaderboard_medium_high_scores "Medium High Scores"
#macro steam_leaderboard_hard_high_scores "Hard High Scores"
#macro steam_leaderboard_difficult_high_scores "Difficult High Scores"
// /Steam


#macro not_set -12345

#macro above_window -1000
#macro left_of_window -1000

#macro the_color_of_failure c_black
#macro the_color_of_information c_black



#macro title_y 150
#macro header_y 75

#macro playfield_height 512
#macro playfield_count 1
#macro playfield_y ((window_height - playfield_height) / 2)
#macro playfield_bottom_y window_height - (((window_height - playfield_height) / 2))





#macro score_valid_move_base_value 1
#macro score_grow_to_target_per_frame 1
#macro scoreboard_color_new_high_score c_green
#macro scoreboard_color_default c_black

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
#macro menu_vertical_spacing (splitsfont_size_menuItem * window_height * 1.5)

#macro gs_fading_in 0
#macro gs_fading_out 1
#macro gs_game_over 2
#macro gs_paused 3
#macro gs_playing 4
#macro gs_restarting 5

#macro fs_inactive 0
#macro fs_fading_in 1
#macro fs_fading_out 2
#macro fs_done 3

#macro slide_state_sliding_in 0
#macro slide_state_slowing_down 1
#macro slide_state_sliding_out 2
#macro slide_left - 1
#macro slide_right 1
#macro slide_three_window_widths window_width * 3 


// ROOM STATE TRACKER
#macro rs_setting_up_room 0
#macro rs_normal_room_operations 1
#macro rs_room_change_requested 2
#macro rs_breaking_down_room 3


