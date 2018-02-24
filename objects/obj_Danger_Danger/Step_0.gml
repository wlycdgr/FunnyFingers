/// @description Insert description here

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

x = funny_finger.x;

if (funny_finger.life > 0.1) {
	y = above_window;
}
else {
	y =
		(-playfield_height + playfield_y) + 
		playfield_height * ((0.1 - funny_finger.life) / 0.1);
}