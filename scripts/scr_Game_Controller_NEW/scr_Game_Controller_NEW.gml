/// @function scr_Game_Controller_NEW
/// @description obj_Game_Controller default constructor. Returns obj reference.
/// @param {real} playfield_count The number of playfields for this game session
/// @param {real} column_count The number of columns in each playfield
/// @param {real} funny_finger_count The number of avatars in each playfield

game_controller = instance_create_layer(0, 0, "Controllers", obj_Game_Controller);

game_controller.input_tracker = scr_Input_Tracker_NEW(game_controller);

game_controller.playfields = array_create(argument0); // playfield_count
for (var i = 0; i < argument0; i++){ // playfield_count
	game_controller.playfields[i] = scr_Playfield_Controller_NEW(
		game_controller,
		argument1, // column_count
		argument2 // funny_finger_count
	);
}

scr_Game_Controller_Set_Focused_Playfield(game_controller, 0);

return game_controller;