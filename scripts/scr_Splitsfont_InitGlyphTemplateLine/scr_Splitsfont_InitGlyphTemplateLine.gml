/// @function scr_Splitsfont_InitGlyphTemplateLine(line_data_array);
// This function is called from the context of the glyph to which this line belongs
// The line_data_array argument has two items: start_vertex_index and end_vertex_index

var new_line = instance_create_layer(
	left_of_window, above_window,
	"Splitsfont",
	obj_Splitsfont_Line
);

with (new_line) {
	is_active = true;
	start_vertex_index = argument0[0];
	end_vertex_index = argument0[1];
}

lines[line_count] = new_line;

line_count += 1;