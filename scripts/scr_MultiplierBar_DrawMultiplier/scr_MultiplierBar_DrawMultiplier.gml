/// @function scr_MultiplierBar_DrawMultiplier(multiplier_bar_id, multiplier, positions_array);

with (argument0) { 
	var multiplier_as_string = string(argument1);
	var multiplier_as_string_len = string_length(multiplier_as_string);
	for (var i = 0; i < multiplier_as_string_len; i++) {
		scr_Splitsfont_Draw_String(
			number_strings[real(string_char_at(multiplier_as_string, i + 1))],
			argument2[i], move_multiplier_y
		);
	}
}