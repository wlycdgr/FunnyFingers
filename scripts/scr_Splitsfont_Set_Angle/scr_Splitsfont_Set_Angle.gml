/// @function scr_Splitsfont_Set_Angle(splitsfont_string, angle_in_degrees);

with (argument0) {
	var angle_in_rads = argument1 * degrees_to_rad;
	var angle_cos = cos(angle_in_rads);
	var angle_sin = sin(angle_in_rads);
	var glyph_unicode = 0;
	var vertex_count = 0;
	var glyph_vertices = -1;
	var glyph_vertex_position = -1;
	var static_vertex_data = 0;
	var static_vertex_datum = 0;
	
	var sf = global.splitsfont;
	var gvd = sf.glyph_vertex_data;
	var gvc = sf.glyph_vertex_counts;
	
	for (var i = 0; i < length; i++) {	
		glyph_unicode = unicodes[i];
		glyph_vertices = glyph_vertex_arrays[i];
		glyph_vertex_position = glyph_vertex_positions[i];
	
		static_vertex_data = gvd[glyph_unicode];
	
		vertex_count = gvc[glyph_unicode];
		for (var j = 0; j < vertex_count; j++) {
			static_vertex_datum = static_vertex_data[j];
		
			glyph_vertices[j, 0] = 
				(static_vertex_datum[0] +
				(static_vertex_datum[2] * angle_cos));
			
			glyph_vertices[j, 1] = 
				(static_vertex_datum[1] +
				(static_vertex_datum[2] * angle_sin));
				
			glyph_vertex_position[j, 0] = glyph_vertices[j, 0] * px_glyph_size;
			glyph_vertex_position[j, 1] = glyph_vertices[j, 1] * px_glyph_size;
		}
	
		glyph_vertex_arrays[i] = glyph_vertices;
		glyph_vertex_positions[i] = glyph_vertex_position;
	
		angle_sin *= rotation_alignment;
	}
}