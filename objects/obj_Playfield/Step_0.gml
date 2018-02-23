/// @description Insert description here
// You can write your code in this editor

// Check for death / sadness / game over
for (var i = funny_finger_count - 1; i > -1; i--){
	if (funny_fingers[i].is_not_funny_anymore){
		has_unfunny_finger = true;
		exit;
	}
}

// If this playfield is out of focus, we are done
if (!focused) exit;

// Check to see whether any funny finger is moving
// If so, don't accept more move input
for (var i = funny_finger_count - 1; i > -1; i--){
	if (funny_fingers[i].is_moving) exit;
}

// If this playfield IS focused AND IS currently accepting move input,
// check for that input and handle it if necessary
var ff_move_direction = 0;
var index = 0;
	
if (global.input_tracker.is_leftmost_pressed) { ff_move_direction = -1; }
else if (global.input_tracker.is_rightmost_pressed) { ff_move_direction = 1; }
else if (global.input_tracker.is_second_leftmost_pressed) { ff_move_direction = -1; index = 1 }
else if (global.input_tracker.is_second_rightmost_pressed ){ ff_move_direction = 1; index = 1; }
else if (global.input_tracker.is_third_leftmost_pressed) { ff_move_direction = -1; index = 2; }
else if (global.input_tracker.is_third_rightmost_pressed){ ff_move_direction = 1; index = 2; }
	
if (0 != ff_move_direction){
	// Identify the funny finger that we should try to move
	var targeted_ff = -1;
		
	var index_counter = 0;
	var index_target = index;
	if (1 == ff_move_direction){
		index_target = (funny_finger_count - 1) - index;
	}
		
	for (var i = 0; i < column_count; i++){
		if (!columns[i].occupied) continue;
			
		if (index_counter == index_target){
			targeted_ff = columns[i].funny_finger_id;
		}
			
		index_counter += 1;
	}

	// Identify the column to move to,
	// or note that none are available
	var target_column_index = -1;
	if (-1 == ff_move_direction) { // trying to move left
		for (var i = targeted_ff.source_column - 1; i > -1; i--){
			if (!columns[i].occupied) {
				target_column_index = i;
				break;
			}
		}
	}
	else if (1 == ff_move_direction) { // trying to move right
		for (var i = targeted_ff.source_column + 1; i < column_count; i++){
			if (!columns[i].occupied){
				target_column_index = i;
				break;
			}
		}
	}
		
	// Let the targeted funny finger know which column to move to
	// Note down that it is now moving
	// and that we are ignoring new move input until the current move is done
	if (-1 == target_column_index)
		{ targeted_ff.target_column = targeted_ff.source_column; }
	else 
		{ targeted_ff.target_column = target_column_index; }

	targeted_ff.is_moving = true;
}