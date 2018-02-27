/// @description Initiate move
is_moving = true;

target_x = 
	playfield.columns[target_column].x + 
	half_of_width_difference_with_column;
	
source_x = 
	playfield.columns[source_column].x +
	half_of_width_difference_with_column;
	
move_amount_in_pixels_per_frame =
	(target_x - source_x) / 
	(game_fps * global.core_funny_finger_move_time_in_sec);
