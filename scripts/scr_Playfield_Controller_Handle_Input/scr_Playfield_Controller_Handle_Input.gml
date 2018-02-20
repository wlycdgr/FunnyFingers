/// @function scr_Playfield_Controller_Handle_Input(playfield_controller, input_tracker)
/// @description Implements movement logic
/// @param playfield_controller Id of the playfield accepting the input
/// @param input_tracker Id of object that tracks current input state

playfield_controller = argument0;
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
	playfield_controller.columns[0].x -= 100;
}

else if (input_tracker.is_rightmost_pressed){
	playfield_controller.columns[0].x += 100;
}

else if (input_tracker.is_second_leftmost_pressed){
}

else if (input_tracker.is_second_rightmost_pressed){
}

else if (input_tracker.is_third_leftmost_pressed){
}

else if (input_tracker.is_third_rightmost_pressed){
}