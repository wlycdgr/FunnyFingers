/// @function scr_Splitsfont_Draw_String(splitsfont_string, x, y)
var draw_pos_x = argument1;
var draw_pos_y = argument2;
var glyph = 0;
var vertices = 0;
var gld = 0;
var gldatum = 0;
var gld_len = 0;
var svi = 0;
var evi = 0;
var unicode_code = 0;


var glyph_vertex_array = 0;

with (argument0) {
	for (var i = 0; i < length; i++) {
		glyph_vertex_array = glyph_vertex_arrays[i];
		unicode_code = unicodes[i];

		gld = global.splitsfont.glyph_line_data[unicode_code];
		gld_len = global.splitsfont.glyph_line_counts[unicode_code];
		
		for (var j = 0; j < gld_len; j++) {
			gldatum = gld[j];
			svi = gldatum[0];
			evi = gldatum[1];
	
			draw_line_width(
				draw_pos_x + glyph_vertex_array[svi, 0] * px_glyph_size,
				draw_pos_y + glyph_vertex_array[svi, 1] * px_glyph_size,
				draw_pos_x + glyph_vertex_array[evi, 0] * px_glyph_size,
				draw_pos_y + glyph_vertex_array[evi, 1] * px_glyph_size,
				px_glyph_stroke_weight
			);
		}
		
		draw_pos_x += global.splitsfont.glyph_widths[unicode_code] * px_glyph_size;
		draw_pos_x += px_string_kern * kern_multipliers[i];
	}
}