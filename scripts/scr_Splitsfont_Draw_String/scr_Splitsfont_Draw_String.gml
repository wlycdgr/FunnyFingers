/// @function scr_Splitsfont_Draw_String(splitsfont_string, x, y)
var draw_pos_x = argument1;
var draw_pos_y = argument2;

with (argument0) {
	for (var i = 0; i < length; i++) {
		draw_pos_x = 
			scr_Splitsfont_Draw_Glyph(id, i, draw_pos_x, draw_pos_y);
		draw_pos_x += px_string_kern * glyphs[i].kern_multiplier;
	}
}