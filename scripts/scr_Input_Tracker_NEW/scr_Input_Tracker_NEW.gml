/// @function scr_Input_Tracker(game_controller)
/// @description obj_Input_Tracker default constructor
/// @param {real} game_controller Id of the game controller this input tracker services
input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);

input_tracker.controller = argument0;

input_tracker.is_exit_pressed = false;

return input_tracker;