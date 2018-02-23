/// @function scr_Game_Focus_Playfield(playfield)
/// @description Sets which playfield will receive input events
/// @param {real} playfield The playfield to make focused
for (i = playfield_count - 1; i > -1; i--){
	if (argument0 == global.game.playfields[i]) {
		global.game.playfields[i].focused = true;
		global.game.focused_playfield = global.game.playfields[i];
	}
	else {
		global.game.playfields[i].focused = false;
	}
}
