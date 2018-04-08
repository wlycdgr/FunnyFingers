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

//var sv = vertices[svi];
//var ev = vertices[evi];

with (new_line) {
	is_active = true;
	start_vertex_index = svi;
	end_vertex_index = evi;
}

new_line.start_x = vertices[svi, 3]; //sv[3]; //vertices[svi].pos_x;
new_line.start_y = vertices[svi, 4]; //sv[4]; //vertices[svi].pos_y;

new_line.end_x = vertices[evi, 3]; //ev[3]; //vertices[evi].pos_x;
new_line.end_y = vertices[evi, 4]; //ev[4]; //vertices[evi].pos_y;

lines[line_count] = new_line;

line_count += 1;