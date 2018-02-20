/// @function scr_Game_Controller_NEW
/// @description obj_Game_Controller default constructor. Returns obj reference.
/// @param {real} playfield_count The number of playfields for this game session
/// @param {real} column_count The number of columns in each playfield
/// @param {real} funny_finger_count The number of avatars in each playfield

game_controller = instance_create_layer(0, 0, "Controllers", obj_Game_Controller);

for (i = 0; i < argument0; i++){ // playfield_count
	game_controller.playfields[i] = scr_Playfield_NEW(
		game_controller,
		argument1, // column_count
		argument2 // funny_finger_count
	);
}

return game_controller;