/// @description Update string tweens, rotate strings, change screens

if (keyboard_check_pressed(ord("Q"))) {
	room_goto(r_MainMenu);
}

// only "FUNNY FINGERS" rotates
if (0 == screen_index) {
	scr_Splitsfont_Rotate_String(screen_strings[screen_index, 0]);
}

if (
	0 == screen_index ||
	1 == screen_index
) {
	if (screen_string_tweens[screen_index].paused) {
		pause_counter_value += 1;
		if (pause_counter_value >= pause_counter_limit) {
			screen_string_tweens[screen_index].paused = false;
			pause_counter_value = 0;
		}
	}
	else if (screen_string_tweens[screen_index].complete) {
		screen_string_tweens[screen_index].active = false;
		screen_index += 1;
		screen_string_tweens[screen_index].active = true;
		
		if (2 == screen_index) {
			for (var i = 0; i < backer_tween_strings_count; i++) {
				backer_tweens[i].active = true;
			}
		}
	}
}

else if (2 == screen_index) {
	var finished = true;
	for (var i = 0; i < backer_tween_strings_count; i++) {
		if (-1 == backer_tweens[i]) {
			if (backer_string_index < backer_list_length) {
				var backer_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
				backer_tween.close_enough *= 0.05;
		
				backer_string_x_paths[i] = scr_SlideTween_Add_Default_Path(
					backer_tween, 
					backer_strings[backer_string_index], 
					backer_tween_directions[i]
				);
			
				backer_tweens[i] = backer_tween;
			
				backer_tween_strings[i] = backer_strings[backer_string_index];
			
				backer_tween_pauses[i] = backer_bonuses[backer_string_index];
			
				backer_string_index += 1;
			}
		}
	
		else if (backer_tweens[i].paused) {
			if (backer_tween_pauses[i] <= 0) {
				backer_tweens[i].paused = false;
			}
			else {
				backer_tween_pauses[i] -= 1;
			}
			
			finished = false;
		}
	
		else if (backer_tweens[i].complete) {
			instance_destroy(backer_string_x_paths[i]);
			instance_destroy(backer_tweens[i]);
		
			backer_string_x_paths[i] = -1;
			backer_tweens[i] = -1;
			
			finished = false;
		}
		
		else {
			finished = false;
		}
	}
	
	if (backer_string_index < backer_list_length) {
		finished = false;
	}
	
	if (finished) {
		if (screen_string_tweens[screen_index].paused) {
			screen_string_tweens[screen_index].paused = false;
		}
		else if (screen_string_tweens[screen_index].complete) {
			screen_string_tweens[screen_index].active = false;
			screen_index += 1;
			screen_string_tweens[screen_index].active = true;
			screen_index = 3
		}
	}
}

else if (3 == screen_index) {
	if (screen_string_tweens[screen_index].paused) {
		pause_counter_value += 1;
		if (pause_counter_value >= pause_counter_limit) {
			screen_string_tweens[screen_index].paused = false;
			pause_counter_value = 0;
		}
	}
	else if (screen_string_tweens[screen_index].complete) {
		room_goto(r_MainMenu);
	}
}