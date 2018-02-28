/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font_leaderboards_header);
draw_set_color(the_color_of_information);
var header_string = "LEADERBOARDS";
var header_string_width = string_width(header_string);
draw_text(
	window_x_center - (header_string_width / 2),
	playfield_y,
	header_string
);