/// @description Draw score
draw_set_color(scoreboard_color_default);
draw_set_halign(fa_left);

draw_text(
	5, 5, 
	"SCORE: " + string(floor(global.scoreboard.points))
);

if (should_display_frames) {
	draw_text(
		5, 25,
		"FRAMES: " + string(global.scoreboard.frames)
	);
}