/// @function scr_Game_Controller_Set_Focused_Playfield(game_controller, playfield_index)
/// @description Sets which playfield will receive input events
/// @param {real} game_controller Id of the game controller
/// @param {real} playfield_index The playfield's index in the playfields array
for (i = array_length_1d(argument0.playfields) - 1; i > -1; i--){
	argument0.playfields[i].focused = false;
}

argument0.playfields[argument1].focused = true;

argument0.focused_playfield = game_controller.playfields[argument1];
