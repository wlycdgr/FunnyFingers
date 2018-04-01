/// @description Update
if (0 == sf_strings_count) exit;

for (var i = 0; i < sf_strings_count; i++) { 
	scr_Splitsfont_Rotate_String(sf_strings[i]);
}

var values_count = 7 * sf_strings_count;
if (keyboard_check_pressed(ord("K"))) {
	menu_index = (menu_index + 1) % values_count;
}
else if (keyboard_check_pressed(ord("I"))) {
	menu_index = 
		((menu_index - 1) + values_count) % 
		values_count;
}

else if (
	keyboard_check(ord("O")) ||
	keyboard_check_pressed(ord("L"))
) {
	var string_index = floor(menu_index / 7);
	var value_index = menu_index % 7;
	
	var new_value =
		values[menu_index] + 
		increments[value_index];
	
	values[menu_index] = new_value;
		
	if (5 == value_index) { // y position
		sf_string_y_positions[string_index] =
			values[menu_index] * window_height;
	}
	
	else if (6 == value_index) {
		sf_string_x_positions[string_index] =
			values[menu_index] * window_width;
	}
	
	else {
		script_execute(
			scripts[value_index],
			sf_strings[string_index],
			new_value
		);
	}
}

else if (
	keyboard_check(ord("U")) ||
	keyboard_check_pressed(ord("J"))
) {
	//scr_Splitsfont_Tweaker_Increment(id, -1);
	
	var string_index = floor(menu_index / 7);
	var value_index = menu_index % 7;
	
	var new_value =
		values[menu_index] - 
		increments[value_index];
	
	values[menu_index] = new_value;
		
	if (5 == value_index) { // y position
		sf_string_y_positions[string_index] =
			values[menu_index] * window_height;
	}
	
	else if (6 == value_index) {
		sf_string_x_positions[string_index] =
			values[menu_index] * window_width;
	}
	
	else {
		script_execute(
			scripts[value_index],
			sf_strings[string_index],
			new_value
		);
	}
}

else if (keyboard_check_pressed(ord("X"))) {
	draw_tweak_info = !draw_tweak_info;
}
	