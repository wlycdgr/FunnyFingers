/// @function scr_Input_Tracker_NEW(game)
/// @description obj_Input_Tracker default constructor. Returns obj reference.
/// @param {real} game Id of the game controller this input tracker services
input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);

input_tracker.game = argument0;

return input_tracker;