/// @description Update

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

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
else if (global.input_tracker.is_rightmost_pressed) { ff_move_direction = 1; index = 2}
else if (global.input_tracker.is_second_leftmost_pressed) { ff_move_direction = -1; index = 1 }
else if (global.input_tracker.is_second_rightmost_pressed ){ ff_move_direction = 1; index = 1; }
else if (global.input_tracker.is_third_leftmost_pressed) { ff_move_direction = -1; index = 2; }
else if (global.input_tracker.is_third_rightmost_pressed){ ff_move_direction = 1; }
	
if (0 != ff_move_direction){
	// Identify the funny finger that we should try to move
	var index_counter = 0;
	for (var i = 0; i < column_count; i++) {
		if (!columns[i].occupied) continue;
		if (index_counter == index) { 
			var targeted_ff = columns[i].funny_finger_id;
			break;
		}	
		index_counter += 1;
	}
	
	// Notde down that it is moving
	targeted_ff.is_moving = true;

	// Identify the column to move to,
	// if one is available
	var target_column_index = -1;
	if (-1 == ff_move_direction) { // trying to move left
		for (var i = targeted_ff.source_column - 1; i > -1; i--){
			if (!columns[i].occupied) {
				targeted_ff.target_column = i;
				break;
			}
		}
	}
	else if (1 == ff_move_direction) { // trying to move right
		for (var i = targeted_ff.source_column + 1; i < column_count; i++){
			if (!columns[i].occupied){
				targeted_ff.target_column = i;
				break;
			}
		}
	}
}