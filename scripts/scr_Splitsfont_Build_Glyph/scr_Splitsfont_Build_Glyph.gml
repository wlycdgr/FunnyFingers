/// @function scr_Splitsfont_BuildGlyphTemplate(unicode_code, glyph_vertex_data, glyph_line_data)
var new_glyph = instance_create_layer(
	left_of_window, above_window,
	"Splitsfont",
	obj_Splitsfont_Glyph
);

with (new_glyph) {
	is_active = true;

	vertex_count = global.splitsfont.glyph_vertex_counts[argument0];
	var vertex_data = -1;
	for (var i = 0; i < vertex_count; i++) {
		vertex_data = argument1[i];
		
		vertices[i, 0] = vertex_data[0];
		vertices[i, 1] = vertex_data[1];
		vertices[i, 2] = vertex_data[2];
		vertices[i, 3] = vertex_data[0] + vertex_data[2];
		vertices[i, 4] = vertex_data[1];
	}
	
	line_count = global.splitsfont.glyph_line_counts[argument0];
	var line_data = -1;
	for (var i = 0; i < line_count; i++) {
		line_data = argument2[i];
		
		lines[i, 0] = line_data[0]; // svi
		lines[i, 1] = line_data[1]; // evi

//		scr_Splitsfont_Build_GlyphLine(argument2[i]);
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