/// @description Draw the score info
var score_as_string = string(floor(points));
var score_as_string_len = string_length(score_as_string);
for (var i = 0; i < score_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[real(string_char_at(score_as_string, i + 1))],
		15 + sqrt(current_size / normal_size) * 15 * i, 15
	);
}

