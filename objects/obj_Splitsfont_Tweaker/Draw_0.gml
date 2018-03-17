/// @description Draw strings

for (var i = 0; i < sf_strings_count; i++) {
	scr_Splitsfont_Draw_String(
		sf_strings[i],
		sf_string_x_positions[i],
		sf_string_y_positions[i]
	);
}