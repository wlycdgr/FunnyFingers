/// @function scr_Funny_Finger_Move(playfield, funny_finger_index)
/// @description Animate a funny finger's move to a different column
/// @param {real} playfield Id of the playfield this is all happening on
/// @param {real} funny_finger_index funny_fingers index of the funny finger to animate

moving_ff = argument0.funny_fingers[argument1];

target_x = argument0.columns[moving_ff.target_column].x;
source_x = argument0.columns[moving_ff.source_column].x;

delta_x = (target_x - source_x) / 10.0;

moving_ff.x += delta_x;

if (
	(target_x >= source_x && moving_ff.x >= target_x) ||
	(target_x <= source_x && moving_ff.x <= target_x)
){
	// clear the column that the funny finger was in
	argument0.columns[moving_ff.source_column].occupied = false;
	argument0.columns[moving_ff.source_column].funny_finger_index = -1;
	
	argument0.columns[moving_ff.target_column].occupied = true;
	argument0.columns[moving_ff.target_column].funny_finger_index = argument1;
	
	moving_ff.source_column = moving_ff.target_column;
	moving_ff.is_moving = false;
	argument0.accepting_move_input = true;
}
	