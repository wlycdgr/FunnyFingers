/// @function scr_Playfield_NEW(game_controller, column_count, funny_finger_count)
/// @description obj_Playfield default constructor. Returns obj reference.
/// @param {real} game_controller Reference to the game controller that will manage this playfield
/// @param {real} column_count The number of columns this playfield should have
/// @param {real} funny_finger_count The number of avatars this playfield should have

playfield = instance_create_layer(0, 0, "Instances", obj_Playfield);

playfield.game_controller = argument0;

for (i = 0; i < argument1; i++) { // column_count
	playfield.columns[i] = scr_Column_NEW(playfield);
}

playfield.funny_fingers_controller = 
	scr_Funny_Fingers_Controller_NEW(playfield, argument2); // funny_finger_count
	
return playfield;