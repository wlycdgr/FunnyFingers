/// @description Insert description here
// You can write your code in this editor
if (global.scoreboard.current_score > global.scoreboard.current_high_score) {
	draw_set_color(scoreboard_color_new_high_score);
}
else {
	draw_set_color(scoreboard_color_default);
}
draw_set_halign(fa_left);

draw_text(
	5, 5, 
	"SCORE: " + 
	string(floor(global.scoreboard.current_score)) + 
	" / " +
	string(floor(global.scoreboard.current_high_score))
);