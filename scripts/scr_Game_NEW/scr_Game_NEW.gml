/// @function scr_Game_NEW
/// @description obj_Game default constructor. Returns obj reference.
/// @param {real} playfield_count The number of playfields for this game session
/// @param {real} column_count The number of columns in each playfield
/// @param {real} funny_finger_count The number of avatars in each playfield

game = instance_create_layer(0, 0, "Controllers", obj_Game);

game.input_tracker = scr_Input_Tracker_NEW(game);

game.playfields = array_create(argument0); // playfield_count
for (var i = 0; i < argument0; i++){ // playfield_count
	new_playfield = scr_Playfield_NEW(300, 300, 500);
	scr_Playfield_Create_And_Position_Columns(new_playfield, argument1, 64);
	scr_Playfield_Create_And_Place_Funny_Fingers(new_playfield, argument2);
	game.playfields[i] = new_playfield;
}

scr_Game_Focus_Playfield(game, 0);

return game;