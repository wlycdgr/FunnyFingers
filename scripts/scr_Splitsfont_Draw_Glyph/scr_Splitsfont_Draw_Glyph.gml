/// @function scr_Splitsfont_DrawGlyph(splitsfont_string, index, x, y)

var stroke_weight = argument0.px_glyph_stroke_weight;
var size = argument0.px_glyph_size;
var index = argument1;

var glyph = argument0.glyphs[argument1];

var line = -1;

for (var j = 0; j < glyph.line_count; j++) {
	line = glyph.lines[j];
	
	draw_line_width(
		argument2 + line.start_x * size,
		argument3 + line.start_y * size,
		argument2 + line.end_x * size,
		argument3 + line.end_y * size,
		stroke_weight
	);
}

return argument2 + glyph.width * size;