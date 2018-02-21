/// @function scr_Playfield_Handle_Input(playfield, input_tracker)
/// @description Implements movement logic
/// @param playfield Id of the playfield accepting the input
/// @param input_tracker Id of object that tracks current input state

playfield = argument0;
input_tracker = argument1;

// We can only recognize one input at a time
// The priority order is
// leftmost
// rightmost
// second leftmost
// second rightmost
// third leftmost
// ....


if (input_tracker.is_leftmost_pressed){
	
	// identify correct funny finger
	target = 1;
	counter = 0;
	ff_index = -1;
	for (i = 0; i < array_length_1d(playfield.columns); i++){
		if (!playfield.columns[i].occupied) continue;
		
		counter += 1;
		
		if (counter == target){
			ff_index = playfield.columns[i].funny_finger_index;
			break;
		}
	}
	
	// identify target column (if any available)
	ff_target_column = -1;
	ff = playfield.funny_fingers[ff_index];
	for (i = ff.source_column - 1; i > -1; i--){
		if (!playfield.columns[i].occupied){
			ff_target_column = i;
			break;
		}
	}
	
	if (-1 == ff_target_column){
		ff.target_column = ff.source_column;
	}
	else {
		ff.target_column = ff_target_column;
	}

	ff.is_moving = true;
	playfield.accepting_move_input = false;
}

else if (input_tracker.is_rightmost_pressed){
	playfield.columns[0].x += 100;
}

else if (input_tracker.is_second_leftmost_pressed){
}

else if (input_tracker.is_second_rightmost_pressed){
}

else if (input_tracker.is_third_leftmost_pressed){
}

else if (input_tracker.is_third_rightmost_pressed){
}