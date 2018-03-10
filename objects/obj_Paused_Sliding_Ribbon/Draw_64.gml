/// @description Draw
if (srs_inactive = state) exit;

event_inherited();

var info_string = "SCORE: " + string(global.scoreboard.points);

draw_text(window_x_center - string_width(info_string) / 2, y + 100, info_string);