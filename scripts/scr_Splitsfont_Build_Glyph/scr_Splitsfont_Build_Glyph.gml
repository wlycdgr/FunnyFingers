/// @function scr_Splitsfont_BuildGlyphTemplate(unicode_code, glyph_vertex_data, glyph_line_data)
var new_glyph = instance_create_layer(
	left_of_window, above_window,
	"Splitsfont",
	obj_Splitsfont_Glyph
);

with (new_glyph) {
	is_active = true;

	vertex_count = global.splitsfont.glyph_vertex_counts[argument0];
	var new_vertex = -1;
	var vertex_data = -1;
	for (var i = 0; i < vertex_count; i++) {
		//vertices[i] = argument1[i];
		vertex_data = argument1[i];
		
		//new_vertex[0] = vertex_data[0];
		//new_vertex[1] = vertex_data[1];
		//new_vertex[2] = vertex_data[2];
		//new_vertex[3] = vertex_data[0] + vertex_data[2];
		//new_vertex[4] = vertex_data[1];
		
		//new_vertex = instance_create_layer(
		//	left_of_window, above_window,
		//	"Splitsfont",
		//	obj_Splitsfont_Vertex
		//	);

		//with (new_vertex) {
		//	is_active = true;
		//	pivot_x = vertex_data[0];
		//	pivot_y = vertex_data[1];
		//	x_offset = vertex_data[2];
		//	//pos_x = argument0[3];
		//	pos_x = pivot_x + x_offset;
		//	pos_y = pivot_y;
		//}

		//vertices[i] = new_vertex;
		
		vertices[i, 0] = vertex_data[0];
		vertices[i, 1] = vertex_data[1];
		vertices[i, 2] = vertex_data[2];
		vertices[i, 3] = vertex_data[0] + vertex_data[2];
		vertices[i, 4] = vertex_data[1];
	}
	
	var line_data_length = global.splitsfont.glyph_line_counts[argument0];
	for (var i = 0; i < line_data_length; i++) {
		scr_Splitsfont_Build_GlyphLine(argument2[i]);
	}
	
	width = global.splitsfont.glyph_widths[argument0];
	
	//kern_multiplier = global.splitsfont.kern_multipliers[argument0];
	
	if (argument0 == ord("F")) {
		kern_multiplier = 0.75;
	}
	else {
		kern_multiplier = 1.0;
	}
}

return new_glyph;