/// @function scr_Splitsfont_InitGlyphTemplateVertex(vertex_data_array)pivot_x, pivot_y, x_offset);
// This function is called from the context of the glyph to which this vertex belongs
// The array has 3 items: pivot_x, pivot_y, x_offset

var new_vertex = instance_create_layer(
	left_of_window, above_window,
	"Splitsfont",
	obj_Splitsfont_Vertex
);

with (new_vertex) {
	is_active = true;
	pivot_x = argument0[0];
	pivot_y = argument0[1];
	x_offset = argument0[2];
	pos_x = pivot_x + x_offset;
	pos_y = pivot_y;
}

vertices[vertex_count] = new_vertex;

vertex_count += 1;