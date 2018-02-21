/// @function scr_Game_NEW
/// @description obj_Game default constructor. Returns obj reference.
/// @param {real} playfield_count The number of playfields for this game session
/// @param {real} column_count The number of columns in each playfield
/// @param {real} funny_finger_count The number of avatars in each playfield

game = instance_create_layer(0, 0, "Controllers", obj_Game);

game.input_tracker = scr_Input_Tracker_NEW(game);

playfield_column_width = 48;
playfield_height = 512;
window_width = window_get_width();
window_height = window_get_height();

game.playfields = array_create(argument0); // playfield_count
for (var i = 0; i < argument0; i++){ // playfield_count
	playfield_x = (
		((i + 1) * (window_width / (argument0 + 1))) - // space playfields evenly horizontally across window
		((argument1 * playfield_column_width) / 2) // center them relative to the spacings
	);
	
	playfield = scr_Playfield_NEW(
		playfield_x,
		((window_height - playfield_height) / 2), // y
		playfield_height
	);
	
	scr_Playfield_Create_And_Position_Columns(
		playfield, 
		argument1, // column_count
		playfield_column_width
	);
	
	scr_Playfield_Create_And_Place_Funny_Fingers(playfield, argument2);
	
	playfield.energy_generator = scr_Entity_Generator_NEW(
		obj_Energy, 
		45, 60, // period min/max, in frames
		30, 300//60, 90 // speed min/max, in pixels per second
	);
	
	playfield.enemy_generator = scr_Entity_Generator_NEW(
		obj_Enemy, 
		75, 90, // period min/max, in frames
		45, 60 // speed min/max, in pixels per second
	);
	
	game.playfields[i] = playfield;
}

scr_Game_Focus_Playfield(game, 0);

game.is_game_over = false;

return game;