/// @function scr_Splitsfont_Draw_String(splitsfont_string, x, y)
var draw_pos_x = argument1;
var draw_pos_y = argument2;

for (var i = 0; i < argument0.length; i++) {
	draw_pos_x = 
		scr_Splitsfont_Draw_Glyph(argument0, i, draw_pos_x, draw_pos_y);
	draw_pos_x += argument0.px_string_kern;
}