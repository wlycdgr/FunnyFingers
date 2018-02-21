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
	scr_Playfield_Handle_Move_Input(-1, 0);
}

else if (input_tracker.is_rightmost_pressed){
	scr_Playfield_Handle_Move_Input(1, 0);
}

else if (input_tracker.is_second_leftmost_pressed){
	scr_Playfield_Handle_Move_Input(-1, 1);
}

else if (input_tracker.is_second_rightmost_pressed){
	scr_Playfield_Handle_Move_Input(1, 1);
}

else if (input_tracker.is_third_leftmost_pressed){
	scr_Playfield_Handle_Move_Input(-1, 2);
}

else if (input_tracker.is_third_rightmost_pressed){
	scr_Playfield_Handle_Move_Input(1, 2);
}