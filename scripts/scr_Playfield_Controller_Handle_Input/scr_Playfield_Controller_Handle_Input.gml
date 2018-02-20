/// @function scr_Playfield_Controller_Handle_Input(playfield_controller, input_tracker)
/// @description Implements movement logic
/// @param playfield_controller Id of the playfield accepting the input
/// @param input_tracker Id of object that tracks current input state

playfield_controller = argument0;
input_tracker = argument1;

if (input_tracker.is_leftmost_pressed){
	playfield_controller.columns[0].x -= 100;
}

else if (input_tracker.is_rightmost_pressed){
	playfield_controller.columns[0].x += 100;
}