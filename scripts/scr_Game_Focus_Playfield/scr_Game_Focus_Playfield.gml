/// @function scr_Game_Focus_Playfield(game, playfield_index)
/// @description Sets which playfield will receive input events
/// @param {real} game Id of the game controller
/// @param {real} playfield_index The playfield's index in the game controller's playfields array
for (i = array_length_1d(argument0.playfields) - 1; i > -1; i--){
	argument0.playfields[i].focused = false;
}

argument0.playfields[argument1].focused = true;

argument0.focused_playfield = argument0.playfields[argument1];
