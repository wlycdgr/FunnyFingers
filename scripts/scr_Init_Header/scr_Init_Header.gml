/// @function scr_Init_Header(controller_id, the_header_string);
/// @param {integer} controller_id The id of the controller whose Create event is calling this
/// @param the_header_string What the header should read
draw_set_font(global.font_leaderboards_header);
argument0.header_string = argument1;
argument0.header_string_width = string_width(argument1);
argument0.header_string_x_pos = 
	window_x_center - 
	(argument0.header_string_width / 2);