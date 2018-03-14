/// @description Draw the bar!

draw_set_color(c_black);
draw_rectangle(x, y, x + width, y + 32, true);
draw_rectangle(x, y, x + fill_x, y + 32, false); 

scr_Splitsfont_Draw_String(multiplier_label, x, y + 48);

var multiplier_as_string = string(multiplier);
var multiplier_as_string_len = string_length(multiplier_as_string);
for (var i = 0; i < multiplier_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		global.game.number_strings[ord(string_char_at(multiplier_as_string, i + 1))],
		x + 300 + 25 * i, y + 48
	);
}