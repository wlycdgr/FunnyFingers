/// @description Move
// You can write your code in this editor
x += move_amount_in_pixels_per_frame;

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