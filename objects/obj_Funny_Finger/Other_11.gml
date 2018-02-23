/// @description Move
// You can write your code in this editor

target_x =
	playfield.columns[target_column].x + 
	half_of_width_difference_with_column;
	
source_x = 
	playfield.columns[source_column].x +
	half_of_width_difference_with_column;
	
x += (target_x - source_x) / 10.0; // TODO macro this speed

// Has the funny finger reached/overshot the target column?
if (
	(target_x >= source_x && x >= target_x) ||
	(target_x <= source_x && x <= target_x)
){
	// Yes, the funny finger has reached the target column!
	
	x = target_x;
	
	// clear the column that the funny finger was in
	playfield.columns[source_column].occupied = false;
	playfield.columns[source_column].funny_finger_id = -1;
	
	// fill the column that the funny finger now is in
	playfield.columns[target_column].occupied = true;
	playfield.columns[target_column].funny_finger_id = id;
	
	source_column = target_column;
	
	is_moving = false;
}