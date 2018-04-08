/// @description Incr frames, handle reaching of score thresholds
if (global.steam_overlay_activated) exit;

if (gs_playing == global.game.state) {
	if (target_points > points) {
		points += score_grow_to_target_per_frame;
		
		current_rotate_speed = min(720, current_rotate_speed + rotate_speed_bump);
	}
}

current_rotate_speed = max(0, current_rotate_speed - rotate_speed_decrease_per_frame);

var number_string = 0;
for (var i = 0; i < 10; i++) {
	number_string = number_strings[i];
	
	scr_Splitsfont_Set_RotationSpeed(number_string, current_rotate_speed);
	
	scr_Splitsfont_Rotate_String(number_string);
}


