/// @function scr_Splitsfont_BuildGlyphTemplate(glyph_vertex_data, glyph_line_data)
var new_glyph = instance_create_layer(
	left_of_window, above_window,
	"Splitsfont",
	obj_Splitsfont_Glyph
);

with (new_glyph) {
	is_active = true;

	var vertex_data_length = array_length_1d(argument0);
	for (var i = 0; i < vertex_data_length; i++) {
		scr_Splitsfont_InitGlyphTemplateVertex(argument0[i]);
	}
	
	var line_data_length = array_length_1d(argument1);
	for (var i = 0; i < line_data_length; i++) {
		scr_Splitsfont_InitGlyphTemplateLine(argument1[i]);
	}
	
	width = 0.0;
	for (var i = 0; i < vertex_count; i++) {
		width = max (
			width,
			vertices[i].pos_x
		);
	}
	
	kern_multiplier = 1.0;
}

return new_glyph;