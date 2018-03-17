/// @description Update
if (0 == sf_strings_count) exit;

var values_count = 6 * sf_strings_count;

if (keyboard_check_pressed(ord("K"))) {
	menu_index = (menu_index + 1) % values_count;
}
else if (keyboard_check_pressed(ord("I"))) {
	menu_index = 
		((menu_index - 1) + values_count) % 
		values_count;
}

else if (keyboard_check_pressed(ord("L"))) {
	var string_index = floor(menu_index / values_count);
	var value_index = menu_index % values_count;
	
	var new_value =
		values[menu_index] + 
		increments[value_index];
	
	values[menu_index] = new_value;
		
	if (5 == value_index) { // y position
		sf_strings[string_index] = 
			values[menu_index] * window_height;
	}
	else {
		script_execute(
			scripts[menu_index],
			sf_strings[string_index],
			new_value
		);
		
		sf_string_x_positions[string_index] = 
			window_x_center -
			(scr_Splitsfont_Get_Width(sf_strings[string_index] / 2));
	}
}

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