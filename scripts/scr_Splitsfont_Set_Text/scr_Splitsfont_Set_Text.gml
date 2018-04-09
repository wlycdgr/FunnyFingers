/// @function scr_Splitsfont_Set_Text(splitsfont_string, text)

if (argument0.text_already_set) return; // TODO don't allow resetting text until we have erasing code
 
var text_length = string_length(argument1);
var unicode_code = 0;
var vertices = 0;
var glyph_vertex_position = 0;

var sf = global.splitsfont;

var glyph_vertex_data = sf.glyph_vertex_data;
var glyph_vertex_datum = 0;
var glyph_vertex_datum_row = 0;

var glyph_vertex_counts = sf.glyph_vertex_counts;
var glyph_vertex_count = 0;

with (argument0) { 
	for (var i = 0; i < text_length; i++) {
		unicode_code = ord(string_char_at(argument1, i+1));
		unicodes[i] = unicode_code;
		
		glyph_vertex_count = glyph_vertex_counts[unicode_code];
		glyph_vertex_datum = glyph_vertex_data[unicode_code];
		vertices = 0;
		glyph_vertex_position = 0;
		for (var j = 0; j < glyph_vertex_count; j++) {
			glyph_vertex_datum_row = glyph_vertex_datum[j];
			vertices[j, 0] = glyph_vertex_datum_row[0] + glyph_vertex_datum_row[2];
			vertices[j, 1] = glyph_vertex_datum_row[1];
			
			glyph_vertex_position[j, 0] = vertices[j, 0] * px_glyph_size;
			glyph_vertex_position[j, 1] = vertices[j, 1] * px_glyph_size;
		}
		glyph_vertex_arrays[i] = vertices;
		glyph_vertex_positions[i] = glyph_vertex_position;
	}

	length = text_length;

	text_already_set = true;
}