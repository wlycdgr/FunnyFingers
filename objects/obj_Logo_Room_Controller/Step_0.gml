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
		distance = slides_x[0, i] - slide_in_targets_x[0, i];
		slides_x[0, i] -= distance * slide_proportion_per_frame_current;
	}

	if (abs(distance) < close_enough) {
		slide_state = slide_state_sliding_out;
	}
	
	break;
	
case slide_state_slowing_down:
	slide_holding_state_counter += 1;
	
	if (slide_holding_state_counter > slide_holding_state_frame_count) {
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
		distance = slides_x[0, i] - slide_out_targets_x[0, i];
		slides_x[0, i] -= distance * slide_proportion_per_frame_current;
	}

	if (abs(distance) < close_enough) {
		room_restart();
	}
	
	break;
}





if (keyboard_check_pressed(vk_down)) {
	tweak_menu_index += 1;
	if (tweak_menu_index > 19) {
		tweak_menu_index = 0;
	}
}
else if (keyboard_check_pressed(vk_up)) {
	tweak_menu_index -= 1;
	if (tweak_menu_index < 0) {
		tweak_menu_index = 19;
	}
}
else if (keyboard_check_pressed(vk_right)) {
	var string_index = floor(tweak_menu_index / 5);
	var value_index = tweak_menu_index % 5;
	
	var old_value = tweak_values[string_index, value_index];
	var new_value = old_value + tweak_increments[value_index]; 
	
	tweak_values[string_index, value_index] = new_value;
		
	if (4 == value_index) { // y position
		slides_y[0, string_index] = 
			tweak_values[string_index, value_index];
	}
	else {
		script_execute(
			scripts[value_index],
			slides[0, string_index],
			new_value
		);
		
		slides_x[0, string_index] = 
			window_x_center - 
			(scr_Splitsfont_Get_Width(slides[0, string_index]) / 2);
	}
}

else if (keyboard_check_pressed(vk_left)) {
	var string_index = floor(tweak_menu_index / 5);
	var value_index = tweak_menu_index % 5;
	
	var old_value = tweak_values[string_index, value_index];
	var new_value = old_value - tweak_increments[value_index];
	
	tweak_values[string_index, value_index] = new_value;
		
	if (4 == value_index) { // y position
		slides_y[0, string_index] = 
			tweak_values[string_index, value_index];
	}
	else {
		script_execute(
			scripts[value_index],
			slides[0, string_index],
			new_value
		);
		
		slides_x[0, string_index] = 
			window_x_center - 
			(scr_Splitsfont_Get_Width(slides[0, string_index]) / 2);
	}
}

else if (keyboard_check_pressed(ord("X"))) {
	draw_tweak_info = !draw_tweak_info;
}

/*
else if (keyboard_check_pressed(ord("T"))) {
	trollcore_angle += 1;
	scr_Splitsfont_Set_Angle(slides[0, 0], trollcore_angle);
}
*/