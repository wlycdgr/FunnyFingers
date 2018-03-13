/// @function scr_Splitsfont_Set_Text(splitsfont_string, text)

var text_length = string_length(argument1);

for (var i = 0; i < text_length; i++) {
	argument0.glyph_indices[i] = 
		global.splitsfont.glyphs[ord(string_char_at(argument1, i))];
}

argument0.length = text_length;