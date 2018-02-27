/// @description Update

// If the game is paused, over, etc we should not update
if (gs_playing != global.game.state) exit;

// If dead, die :(
if (life <= 0.0) {
	is_not_funny_anymore = true;
	exit;
}

if (is_moving) event_user(1); // move

if (is_shrinking) {
	life -= shrink_per_frame;
}
else {
	life += 0.002; // TODO macro this
	if (life >= target_life) { is_shrinking = true; }
}
		
event_user(0); // update y pos

