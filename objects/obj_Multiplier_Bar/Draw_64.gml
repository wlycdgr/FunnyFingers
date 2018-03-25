/// @description Draw the bar!
//exit;

draw_set_color(c_black);
draw_rectangle(x, y, x + width, y + 8, true);
draw_rectangle(x, y, x + fill_x, y + 8, false); 

// Move multiplier
scr_Splitsfont_Draw_String(multiplier_label, x, y + 24);

var multiplier_as_string = string(move_multiplier);
var multiplier_as_string_len = string_length(multiplier_as_string);
for (var i = 0; i < multiplier_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[ord(string_char_at(multiplier_as_string, i + 1))],
		x + 25 + 25 * i, y + 24
	);
}

// Column fill multiplier
scr_Splitsfont_Draw_String(multiplier_label, x + width - 100, y + 24);

multiplier_as_string = string(column_fill_multiplier);
multiplier_as_string_len = string_length(multiplier_as_string);
for (var i = 0; i < multiplier_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[ord(string_char_at(multiplier_as_string, i + 1))],
		x + width - 100 + 25 * i, y + 24
	);
}