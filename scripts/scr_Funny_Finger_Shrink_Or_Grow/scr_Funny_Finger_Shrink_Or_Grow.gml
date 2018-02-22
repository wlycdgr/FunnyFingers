/// @param funny_finger The funny finger that is shrinking or growing	

// 'playfield' also in scope from calling script

funny_finger = argument0;

if (funny_finger.is_shrinking){
	funny_finger.life -= playfield.funny_finger_shrink_per_second / game_get_speed(gamespeed_fps);
	
	funny_finger.y =  
		playfield.bottom_y - 
		(playfield.height * funny_finger.life);
}

if (funny_finger.life <= 0.0){
	funny_finger.life = 0.0;
	funny_finger.not_funny_anymore = true;
}