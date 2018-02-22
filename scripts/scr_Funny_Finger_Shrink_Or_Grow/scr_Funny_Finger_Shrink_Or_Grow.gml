/// @param funny_finger The funny finger that is shrinking or growing	

// 'playfield' also in scope from calling script

funny_finger = argument0;

// Poor funny finger!
if (funny_finger.is_shrinking){
	funny_finger.life -= playfield.funny_finger_shrink_per_second / game_get_speed(gamespeed_fps);
}
// Funny finger has recently ingested some energy!!
else {
	funny_finger.life += 0.002;
	if (funny_finger.life > funny_finger.target_life){
		funny_finger.life = funny_finger.target_life;
		funny_finger.is_shrinking = true;
	}
}


funny_finger.y =  
	playfield_bottom_y - 
	(playfield_height * funny_finger.life);

// If funny finger life is above danger threshold,
// move danger indicator out of sight
if (funny_finger.life > 0.1){
	funny_finger.danger_danger.y = above_window;
}
// Otherwise, position it on the playfield
// to draw attention
// and create panic!!!!!!!!!!!!!!!!!!!!!!!!!!
else {
	funny_finger.danger_danger.y = 
		-332 +
		512 * ((0.1 - funny_finger.life)/0.1);
}


if (funny_finger.life <= 0.0){
	funny_finger.life = 0.0;
	funny_finger.not_funny_anymore = true;
}