/// @function scr_Draw_Header(controller_id)
/// @param {integer} controller_id The id of the controller whose Draw event is calling this

draw_set_font(global.font_leaderboards_header);
draw_set_color(the_color_of_information);
draw_text(
	argument0.header_string_x_pos,
	playfield_y,
	argument0.header_string
);
