/// @function scr_Splitsfont_InitGlyphTemplateLine(line_data_array);
// This function is called from the context of the glyph to which this line belongs
// The line_data_array argument has two items: start_vertex_index and end_vertex_index

var new_line = instance_create_layer(
	left_of_window, above_window,
	"Splitsfont",
	obj_Splitsfont_Line
);

var svi = argument0[0];
var evi = argument0[1];

with (new_line) {
	is_active = true;
	start_vertex_index = svi;
	end_vertex_index = evi;
}

new_line.start_x = vertices[svi].pos_x;
new_line.start_y = vertices[svi].pos_y;

new_line.end_x = vertices[evi].pos_x;
new_line.end_y = vertices[evi].pos_y;

lines[line_count] = new_line;

line_count += 1;