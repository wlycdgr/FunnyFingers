/// @description Insert description here

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

if (is_moving) event_user(1); // move

if (is_shrinking) {
	life -= funny_finger_shrink_per_second / game_get_speed(gamespeed_fps);
}
else {
	life += 0.002; // TODO macro this
	if (life >= target_life) { is_shrinking = true; }
}
		
event_user(0); // update y pos

// If dead, die :(
if (life <= 0.0) {
	is_not_funny_anymore = true;
}