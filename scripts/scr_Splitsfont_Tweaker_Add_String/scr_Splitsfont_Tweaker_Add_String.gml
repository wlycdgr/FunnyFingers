/// scr_Splitsfont_Tweaker_Add_String(tweaker_id, string_id);
with(argument0) {
	var starting_values_index = sf_strings_count * 7;
	for (var i = 0; i < 7; i++) {
		values[starting_values_index + i] = defaults[i];
	}

	sf_strings[sf_strings_count] = argument1;

	sf_string_y_positions[sf_strings_count] = defaults[5];
	sf_string_x_positions[sf_strings_count] = 
		window_x_center - 
		(scr_Splitsfont_Get_Width(argument1) / 2);
	
	sf_strings_count += 1;
}