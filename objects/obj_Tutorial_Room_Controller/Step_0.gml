///// @description Update string tweens, rotate strings, change screens

if (keyboard_check_pressed(vk_space)) {
	room_goto(r_MainMenu);
}

else {
	switch (screen_index) { 
	case 0: //	QWEIOP screen
		if (screen_0_tween.paused) {
			if (keyboard_check_pressed(vk_anykey)) {
				if (keyboard_check_pressed(ord(qweiop_letters[qweiop_index]))) {
					scr_Splitsfont_Set_Weight(qweiop_strings[qweiop_index], qweiop_selected_weight);
				
					qweiop_index += 1;
		
					// SEQUENCE COMPLETE!
					if (qweiop_index >= qweiop_length) {
						scr_Steam_UnlockAchievement(steam_ach_QWEIOP);
						screen_0_tween.paused = false;
					}
				}
	
				else {
					for (var i = 0; i < qweiop_length; i++) {
						scr_Splitsfont_Set_Weight(first_sequence[i], qweiop_unselected_weight);
					}
				
					qweiop_index = 0;
				}			
			}
		}
		
		else if (screen_0_tween.complete) {
			screen_0_tween.active = false;
			screen_1_tween.active = true;
			screen_index = 1;
		}
		
		else {
			for (var i = 0; i < qweiop_length; i++) {
				qweiop_string_x_positions[i] = 
					qweiop_string_x_path.value +
					qweiop_string_x_offsets[i];
			}
		}
		
		break;
		
	case 1: // EXCELLENT WORK screen
		if (screen_1_tween.paused) {
			screen_1_tween.paused = false;
		}
		
		else if (screen_1_tween.complete) {
			screen_1_tween.active = false;
			screen_2_tween.active = true;
			screen_index = 2;
		}
		
		break;
		
	case 2: // GOOD LUCK screen
		if (screen_2_tween.paused) {
			screen_2_tween.paused = false;
		}
		
		else if (screen_2_tween.complete) {
			screen_2_tween.active = false;
			room_goto(r_MainMenu);
		}
		
		break
	}
}