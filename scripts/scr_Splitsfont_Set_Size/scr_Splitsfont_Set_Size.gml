/// @function scr_Splitsfont_Set_Size(splitsfont_string, size_as_prop_of_screen_height)
with (argument0) { 
	var old_size = px_glyph_size;
	var new_size = argument1 * window_height;
	
	px_glyph_size = new_size;
	
	var size_ratio = new_size / (old_size + 0.1); // to prevent division by 0
	
	var glyph_vertex_position = 0;
	var gvc = global.splitsfont.glyph_vertex_counts;
	var vertex_count = 0;
	for (var i = 0; i < length; i++) {
		glyph_vertex_position = glyph_vertex_positions[i];
		
		vertex_count = gvc[unicodes[i]];
		for (var j = 0; j < vertex_count; j++) {
			glyph_vertex_position[j, 0] *= size_ratio;
			glyph_vertex_position[j, 1] *= size_ratio;
		}
		
		glyph_vertex_positions[i] = glyph_vertex_position;
	}
}