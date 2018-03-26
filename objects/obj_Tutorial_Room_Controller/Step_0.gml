/// @description Update string tweens, rotate strings, change screens

if (keyboard_check_pressed(vk_space)) {
	room_goto(r_MainMenu);
}

else if (keyboard_check_pressed(vk_anykey)) {
	if (keyboard_check_pressed(ord(first_sequence_letters[first_sequence_index]))) {
		scr_Splitsfont_Set_Weight(first_sequence[first_sequence_index], 0.02);
		
		first_sequence_index += 1;
		
		if (first_sequence_index >= 6) {
			room_goto(r_MainMenu);
		}
	}
	
	else {
		for (var i = 0; i < 6; i++) {
			scr_Splitsfont_Set_Weight(first_sequence[i], 0.01);
		}
		
		first_sequence_index = 0;
	}
}

first_sequence_x -= 3;