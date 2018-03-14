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
	draw_text(
		5, 25,
		"FRAMES: " + string(global.scoreboard.frames)
	);
}