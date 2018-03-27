/// @description Draw the bar!

draw_set_color(c_black);
draw_rectangle(x, y, x + width, y + 8, true);
draw_rectangle(x, y, x + fill_x, y + 8, false); 

// Move multiplier
scr_Splitsfont_Draw_String(multiplier_label, 15, move_multiplier_y);

var multiplier_as_string = string(move_multiplier);
var multiplier_as_string_len = string_length(multiplier_as_string);
for (var i = 0; i < multiplier_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[ord(string_char_at(multiplier_as_string, i + 1))],
		move_multiplier_number_x_positions[i], move_multiplier_y
	);
}

// Column fill multiplier
scr_Splitsfont_Draw_String(multiplier_label, column_fill_multiplier_X_x, move_multiplier_y);

multiplier_as_string = string(column_fill_multiplier);
multiplier_as_string_len = string_length(multiplier_as_string);
for (var i = 0; i < multiplier_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[ord(string_char_at(multiplier_as_string, i + 1))],
		column_fill_multiplier_number_x[i], move_multiplier_y
	);
}