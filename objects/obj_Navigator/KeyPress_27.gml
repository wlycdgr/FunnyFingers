/// @description QUIT
// You can write your code in this editor
if (
	room == r_Gameplay &&
	!is_undefined(global.scoreboard) &&
	!is_undefined(global.steam)
) {
	with (global.steam) { event_user(1); }
}

game_end();