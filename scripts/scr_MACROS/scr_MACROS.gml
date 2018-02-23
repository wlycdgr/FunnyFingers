#macro not_set -12345

#macro above_window -1000
#macro left_of_window -1000

#macro starting_funny_finger_life 0.3
#macro funny_finger_shrink_per_second 0.025

#macro game_over_menu_slide_per_frame 2 * (window_get_width() / game_get_speed(gamespeed_fps))

#macro playfield_height 512

#macro playfield_count 1
#macro column_count 7
#macro column_width 48
#macro funny_finger_count 3
#macro half_of_empty_columns floor((column_count - funny_finger_count) / 2)

#macro window_height window_get_height()
#macro window_width window_get_width()

#macro ribbon_menu_y 180

#macro playfield_y ((window_height - playfield_height) / 2)
#macro playfield_bottom_y window_height - (((window_height - playfield_height) / 2))
