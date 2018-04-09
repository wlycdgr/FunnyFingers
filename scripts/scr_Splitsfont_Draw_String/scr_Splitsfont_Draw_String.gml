/// @function scr_Splitsfont_Draw_String(splitsfont_string, x, y)
with (argument0) {
	var draw_pos_x = argument1;
	var draw_pos_y = argument2;
	
	var sf = global.splitsfont;
	var glyph_widths = sf.glyph_widths;
	var kern_multipliers = sf.kern_multipliers;
	var gld = sf.glyph_line_data;
	var gldatum = 0;
	var gldatum_row = 0;
	var glcounts = sf.glyph_line_counts;
	var glcount = 0;
	
	var svi = 0;
	var evi = 0;
	
	var unicode_code = 0;
	
	var glyph_vertex_position = 0;
	
	for (var i = 0; i < length; i++) {
		glyph_vertex_position = glyph_vertex_positions[i];
		
		unicode_code = unicodes[i];

		gldatum = gld[unicode_code];
		glcount = glcounts[unicode_code];
		
		for (var j = 0; j <glcount; j++) {
			gldatum_row = gldatum[j];
			svi = gldatum_row[0];
			evi = gldatum_row[1];
	
			draw_line_width(
				draw_pos_x + glyph_vertex_position[svi, 0],
				draw_pos_y + glyph_vertex_position[svi, 1],
				draw_pos_x + glyph_vertex_position[evi, 0],
				draw_pos_y + glyph_vertex_position[evi, 1],
				px_glyph_stroke_weight
			);
		}
		
		draw_pos_x += glyph_widths[unicode_code] * px_glyph_size;
		draw_pos_x += px_string_kern * kern_multipliers[unicode_code];
	}
}