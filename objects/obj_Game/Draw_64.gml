/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font_score);
draw_set_color(score_color);
draw_set_halign(fa_left);
draw_text(
	5, 5, 
	"SCORE: " + 
	string(floor(global.scoreboard.current_score)) + 
	" / " +
	string(floor(global.scoreboard.current_high_score))
);