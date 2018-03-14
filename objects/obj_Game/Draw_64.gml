/// @description Draw score
draw_set_color(scoreboard_color_default);
draw_set_halign(fa_left);

scr_Splitsfont_Draw_String(
	score_label_string,
	5, 5,
);

var score_as_string = string(floor(global.scoreboard.points));
var score_as_string_len = string_length(score_as_string);
for (var i = 0; i < score_as_string_len; i++) {
	scr_Splitsfont_Draw_String(
		number_strings[ord(string_char_at(score_as_string, i + 1))],
		175 + 50 * i, 5
	);
}

if (should_display_frames) {
	scr_Splitsfont_Draw_String(
		frames_label_string,
		5, 50
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