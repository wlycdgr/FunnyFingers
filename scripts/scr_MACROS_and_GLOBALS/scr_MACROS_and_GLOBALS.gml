// Game context
#macro store_version_steam 0
#macro store_version_itch 1

#macro game_fps 60 //game_get_speed(gamespeed_fps)

#macro window_height window_get_height()
#macro window_width window_get_width()
#macro window_x_center window_width / 2
// /Game context

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

global.sf_size = WLY_DefaultSizeAsPropOfScreenHeight * window_height;
global.sf_weight = WLY_DefaultStrokeWeightAsPropOfScreenHeight * window_height;
global.sf_kern = WLY_DefaultKernAsPropOfScreenHeight * window_height;
global.sf_angle = WLY_DefaultAngleInDegs;
global.sf_rotation_speed = WLY_DefaultRotationSpeedInDegsPerSec;

#macro splitsfont_size_menuItem 0.02
#macro splitsfont_weight_menuItem 0.002
#macro splitsfont_size_ribbonMenuHeader 0.06
#macro splitsfont_size_scoreboard 0.02
#macro splitsfont_weight_scoreboard 0.004
// /SPLITSFONT


// Sound
#macro sfx_move_and_reach_maximum_multiplier 0
#macro sfx_scroll_menu 1 // ACTIVE
#macro sfx_crash_into_enemy_and_lose_armor 2 // ACTIVE
#macro sfx_lose_multiplier 3 // ACTIVE
#macro sfx_move_and_increase_multiplier 4 // ACTIVE
#macro sfx_select_menu 5 // ACTIVE
#macro sfx_eat_energy 6 // ACTIVE
#macro sfx_crash_into_enemy_and_DIE 7 // ACTIVE
#macro sfx_run_out_of_energy_and_DIE 8 // ACTIVE
#macro sfx_slide_out 9 // ACTIVE
#macro sfx_achieve_high_score 10 // ACTIVE
// /Sound

// Game Settings
#macro column_count_cool 4
#macro column_count_easy 6
#macro column_count_medium 8
#macro column_count_hard 10
#macro column_count_difficult 12
#macro column_width 48

#macro funny_finger_count_cool 1
#macro funny_finger_count_easy 2
#macro funny_finger_count_medium 3
#macro funny_finger_count_hard 4
#macro funny_finger_count_difficult 5
#macro half_of_width_difference_with_column 8

#macro enemy_maximum_period_in_sec_cool 1.50 // DONE
#macro enemy_maximum_period_in_sec_easy 1.25 //1.00  // DONE
#macro enemy_maximum_period_in_sec_medium 1.1 // 1.0//0.8 //0.75 // DONE
#macro enemy_maximum_period_in_sec_hard 1.0
#macro enemy_maximum_period_in_sec_difficult 0.9

#macro enemy_minimum_period_in_sec_cool 1.25 // DONE
#macro enemy_minimum_period_in_sec_easy 1.17 //0.85 // DONE
#macro enemy_minimum_period_in_sec_medium 1.0 //0.85 //0.65 //0.63 // DONE
#macro enemy_minimum_period_in_sec_hard 0.83
#macro enemy_minimum_period_in_sec_difficult 0.75

#macro energy_maximum_period_in_sec_cool 1.250 // DONE
#macro energy_maximum_period_in_sec_easy 1.05 //0.85  // DONE
#macro energy_maximum_period_in_sec_medium 0.9 //0.63 // DONE
#macro energy_maximum_period_in_sec_hard 0.85
#macro energy_maximum_period_in_sec_difficult 0.75

#macro energy_minimum_period_in_sec_cool 0.75 // DONE
#macro energy_minimum_period_in_sec_easy 0.7 // 0.55 // DONE
#macro energy_minimum_period_in_sec_medium 0.6 //0.38 // DONE
#macro energy_minimum_period_in_sec_hard 0.5
#macro energy_minimum_period_in_sec_difficult 0.45

#macro energy_value_cool 0.10 // DONE
#macro energy_value_easy 0.14 //0.125 // DONE
#macro energy_value_medium 0.1675 // DONE
#macro energy_value_hard 0.19 // 0.15
#macro energy_value_difficult 0.2 // 0.15

#macro move_time_cool 0.14 // DONE
#macro move_time_easy 0.12 // DONE
#macro move_time_medium 0.1 // DONE
#macro move_time_hard 0.08 // DONE
#macro move_time_difficult 0.06 // DONE

#macro shrink_per_sec_cool 0.04 // DONE
#macro shrink_per_sec_easy 0.036 // DONE
#macro shrink_per_sec_medium 0.033 // DONE
#macro shrink_per_sec_hard 0.03
#macro shrink_per_sec_difficult 0.028

#macro game_difficulty_cool 0
#macro game_difficulty_easy 1
#macro game_difficulty_medium 2
#macro game_difficulty_hard 3
#macro game_difficulty_difficult 4
// /Game Settings


// Core Mechanics 
#macro mb_starting_max_multiplier 10
#macro mb_max_multiplier_armor_loss_bump 10
#macro mb_min_multiplier 1
#macro mb_seconds_to_drain 2.0

#macro core_enemy_speed_per_sec_min_default 150 //125
global.core_enemy_speed_per_sec_min = 
	core_enemy_speed_per_sec_min_default;
#macro core_enemy_speed_per_sec_max_default 200 // 175
global.core_enemy_speed_per_sec_max = 
	core_enemy_speed_per_sec_max_default;
#macro core_energy_speed_per_sec_min_default 250 //225
global.core_energy_speed_per_sec_min = 
	core_energy_speed_per_sec_min_default;
#macro core_energy_speed_per_sec_max_default 300 // 275
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
#macro core_funny_finger_shrink_per_sec_x_1000_default 40 //30
global.core_funny_finger_shrink_per_sec_x_1000 = 
	core_funny_finger_shrink_per_sec_x_1000_default;
#macro core_funny_finger_starting_life_x_100_default 30
global.core_funny_finger_starting_life_x_100 = 
	core_funny_finger_starting_life_x_100_default;
#macro core_energy_value_x_100_default 10 // 15
global.core_energy_value_x_100 = 
	core_energy_value_x_100_default;
#macro core_funny_finger_grow_time_in_sec_default 0.35
global.core_funny_finger_grow_time_in_sec = 
	core_funny_finger_grow_time_in_sec_default;
// /Core Mechanics


// Achievement and leaderboard info
// Steam, Itch, ....
#macro ach_count 15

#macro ach_The_Challenger 0
#macro ach_The_Lucky_Loser 1
#macro ach_The_Qualifier 2
#macro ach_The_Wildcard 3
#macro ach_The_Up_And_Comer 4
#macro ach_The_Breakout_Performer 5
#macro ach_The_Pro 6
#macro ach_The_Contender 7
#macro ach_The_Champion 8
#macro ach_The_Hall_Of_Famer 9
#macro ach_The_Living_Legend 10
#macro ach_Fignermukcre 11
#macro ach_No_Pressure 12
#macro ach_Level_99 13
#macro ach_QWEIOP 14

#macro ach_unlock_score_low 3000 // 3,000 three thousand
#macro ach_unlock_score_mid 10000 //  10,000 ten thousand
#macro ach_unlock_score_high 35000 // 35,000 thirty five thousand

#macro ach_No_Pressure_points_target ach_unlock_score_high
#macro ach_Level_99_points_target 2452814 // 2,452,814

#macro steam_leaderboard_cool "Lifetime Cool Points"
#macro steam_leaderboard_easy_high_scores "Easy High Scores"
#macro steam_leaderboard_medium_high_scores "Medium High Scores"
#macro steam_leaderboard_hard_high_scores "Hard High Scores"
#macro steam_leaderboard_difficult_high_scores "Difficult High Scores"
// /Achievement and leaderboard info


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
#macro menu_vertical_spacing 0.05 * window_height
#macro menu_item_splitsfont_size 0.025
#macro menu_item_splitsfont_kern 0.02
#macro menu_item_splitsfont_rotationSpeed 0.0
#macro menu_item_splitsfont_angle 0.0
#macro menu_item_state_unselected -1
#macro menu_item_state_selected 1
#macro menu_item_font_weight_min 0.001
#macro menu_item_font_weight_max 0.004
#macro menu_item_font_weight_change_proportion_per_frame 0.2
#macro menu_is_tweened true
#macro menu_is_not_tweened false

#macro gs_fading_in 0
#macro gs_fading_out 1
#macro gs_game_over 2
#macro gs_level_99_unlock_message 3
#macro gs_paused 4
#macro gs_playing 5
#macro gs_restarting 6

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

// GAME OVER RIBBON STATES
#macro gors_cool 0
#macro gors_new_high_score 1
#macro gors_too_bad 2


