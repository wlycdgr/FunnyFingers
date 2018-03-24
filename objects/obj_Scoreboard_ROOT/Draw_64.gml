/// @description Draw the score info
draw_set_color(scoreboard_color_default);

// score
//scr_Splitsfont_Draw_String(
//	score_label_string,
//	15, 15,
//);

var score_as_string = string(floor(points));
var score_as_string_len = string_length(score_as_string);
for (var i = 0; i < score_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[ord(string_char_at(score_as_string, i + 1))],
		15 + 15 * i, 15
	);
}