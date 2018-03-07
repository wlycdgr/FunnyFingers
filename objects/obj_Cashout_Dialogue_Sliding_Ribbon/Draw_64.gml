/// @description Draw
if (srs_inactive = state) exit;

event_inherited();

var info_string = 
	"SCORE: " + string(global.scoreboard.current_score) + 
	" I " +
	string(global.scoreboard.current_high_score) + ": HIGH SCORE";

draw_text(window_x_center - string_width(info_string) / 2, y + 100, info_string);