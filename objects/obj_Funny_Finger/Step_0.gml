/// @description Insert description here

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
	not_funny_anymore = true;
}