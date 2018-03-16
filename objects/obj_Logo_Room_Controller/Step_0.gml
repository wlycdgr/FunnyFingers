/// @description Animate logo
for (var i = 0; i < 4; i++) {
	scr_Splitsfont_Rotate_String(slides[slide_index, i]);
}

switch(slide_state) {
case slide_state_sliding_in:
	slide_proportion_per_frame_current = max(
		slide_proportion_per_frame_min, 
		slide_proportion_per_frame_current - slide_proportion_increase_per_frame
	);
	
	var distance = 0;
	for (var i = 0; i < 4; i++) {
		distance = slides_x[slide_index, i] - slide_in_targets_x[slide_index, i];
		slides_x[slide_index, i] -= distance * slide_proportion_per_frame_current;
	}

	if (abs(distance) < close_enough) {
		slide_state = slide_state_sliding_out;
	}
	
	break;
	
case slide_state_sliding_out:
	slide_proportion_per_frame_current = min(
		slide_proportion_per_frame_max, 
		slide_proportion_per_frame_current + slide_proportion_increase_per_frame
	);
	
	var distance = 0;
	for (var i = 0; i < 4; i++) {
		distance = slides_x[slide_index, i] - slide_out_targets_x[slide_index, i];
		slides_x[slide_index, i] -= distance * slide_proportion_per_frame_current;
	}

	if (abs(distance) < close_enough) {
		if (0 == slide_index) {
			slide_index = 1;
			slide_proportion_per_frame_current = slide_proportion_per_frame_max;
			slide_state = slide_state_sliding_in;
		}
		else {
			room_goto(r_MainMenu);
		}
	}
	
	break;
}




//if (keyboard_check_pressed(vk_down)) {
//	tweak_menu_index += 1;
//	if (tweak_menu_index > 19) {
//		tweak_menu_index = 0;
//	}
//}
//else if (keyboard_check_pressed(vk_up)) {
//	tweak_menu_index -= 1;
//	if (tweak_menu_index < 0) {
//		tweak_menu_index = 19;
//	}
//}
//else if (keyboard_check_pressed(vk_right)) {
//	var string_index = floor(tweak_menu_index / 5);
//	var value_index = tweak_menu_index % 5;
	
//	var old_value = tweak_values_1[string_index, value_index];
//	var new_value = old_value + tweak_increments[value_index]; 
	
//	tweak_values_1[string_index, value_index] = new_value;
		
//	if (4 == value_index) { // y position
//		slides_y[slide_index, string_index] = 
//			tweak_values_1[string_index, value_index];
//	}
//	else {
//		script_execute(
//			scripts[value_index],
//			slides[slide_index, string_index],
//			new_value
//		);
		
//		slides_x[slide_index, string_index] = 
//			window_x_center - 
//			(scr_Splitsfont_Get_Width(slides[slide_index, string_index]) / 2);
//	}
//}

//else if (keyboard_check_pressed(vk_left)) {
//	var string_index = floor(tweak_menu_index / 5);
//	var value_index = tweak_menu_index % 5;
	
//	var old_value = tweak_values_1[string_index, value_index];
//	var new_value = old_value - tweak_increments[value_index];
	
//	tweak_values_1[string_index, value_index] = new_value;
		
//	if (4 == value_index) { // y position
//		slides_y[slide_index, string_index] = 
//			tweak_values_1[string_index, value_index];
//	}
//	else {
//		script_execute(
//			scripts[value_index],
//			slides[slide_index, string_index],
//			new_value
//		);
		
//		slides_x[slide_index, string_index] = 
//			window_x_center - 
//			(scr_Splitsfont_Get_Width(slides[slide_index, string_index]) / 2);
//	}
//}

//else if (keyboard_check_pressed(ord("X"))) {
//	draw_tweak_info = !draw_tweak_info;
//}


//else if (keyboard_check_pressed(ord("T"))) {
//	names_angle += 1;
//	scr_Splitsfont_Set_Angle(slides[1, 1], names_angle);
//	scr_Splitsfont_Set_Angle(slides[1, 3], names_angle);
//}