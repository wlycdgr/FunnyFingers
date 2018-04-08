/// @function scr_Splitsfont_Get_Width(splitsfont_string);

with (argument0) {
	// TODO
	// improve logic to:
	// if (need to recalc)
	//		recalc
	//		save
	//		reset need to recalc flag
	//		return
	// else
	//		return current
	
	// (and set need to recalc flag whenever we change size, kern, weight)
	
	total_width = 0.0;
	var glyph_widths = global.splitsfont.glyph_widths;
	for (var i = 0; i < length; i++) {
		total_width += glyph_widths[unicodes[i]] * px_glyph_size;
		total_width += px_string_kern;
	}
	total_width -= px_string_kern;
}

return argument0.total_width;