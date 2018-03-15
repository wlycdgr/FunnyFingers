/// @function scr_Splitsfont_Get_Width(splitsfont_string);

with (argument0) {
	total_width = 0.0;
	for (var i = 0; i < length; i++) {
		total_width += glyphs[i].width * px_glyph_size;
		total_width += px_string_kern;
	}
	total_width -= px_string_kern;
}

return argument0.total_width;