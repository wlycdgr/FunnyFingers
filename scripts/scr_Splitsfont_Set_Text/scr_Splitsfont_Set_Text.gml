/// @function scr_Splitsfont_Set_Text(splitsfont_string, text)

if (argument0.text_already_set) return; // TODO don't allow resetting text until we have erasing code
 
var text_length = string_length(argument1);
var unicode_code = 0;

var glyph_vertex_data = global.splitsfont.glyph_vertex_data;
var glyph_line_data = global.splitsfont.glyph_line_data;

with (argument0) { 
	for (var i = 0; i < text_length; i++) {
		unicode_code = ord(string_char_at(argument1, i+1));
	
		glyphs[i] = scr_Splitsfont_Build_Glyph(
			unicode_code,
			glyph_vertex_data[unicode_code],
			glyph_line_data[unicode_code]
		);
	}

	length = text_length;

	text_already_set = true;
}