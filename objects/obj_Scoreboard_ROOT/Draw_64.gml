/// @description Draw the score info
exit;

draw_set_color(scoreboard_color_default);

// score
scr_Splitsfont_Draw_String(
	score_label_string,
	15, 15,
);

var score_as_string = string(floor(points));
var score_as_string_len = string_length(score_as_string);
for (var i = 0; i < score_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[ord(string_char_at(score_as_string, i + 1))],
		175 + 50 * i, 5
	);
}


// frames
if (should_display_frames) {
	scr_Splitsfont_Draw_String(
		frames_label_string,
		15, 60
	);
	var frames_as_string = string(floor(global.scoreboard.frames));
	var frames_as_string_len = string_length(frames_as_string);
	for (var i = 0; i < frames_as_string_len; i++) {
		scr_Splitsfont_Draw_String(
			number_strings[ord(string_char_at(frames_as_string, i + 1))],
			200 + 50 * i, 50
		);
	}
}