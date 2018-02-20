/// @function scr_Playfield_NEW(game_controller, column_count, funny_finger_count)
/// @description obj_Playfield default constructor. Returns obj reference.
/// @param {real} game_controller Reference to the game controller that will manage this playfield
/// @param {real} column_count The number of columns this playfield should have
/// @param {real} funny_finger_count The number of avatars this playfield should have

playfield = instance_create_layer(0, 0, "Instances", obj_Playfield_Controller);

playfield.game_controller = argument0;
playfield.focused = false;

for (i = 0; i < argument1; i++) { // column_count
	playfield.columns[i] = scr_Column_NEW(playfield);
}

for (i = 0; i < argument2; i++){
	playfield.funny_fingers[i] = scr_Funny_Finger_NEW(playfield);
}
	
return playfield;