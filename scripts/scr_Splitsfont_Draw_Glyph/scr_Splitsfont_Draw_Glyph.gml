/// @function scr_Splitsfont_DrawGlyph(splitsfont_string, index, x, y)

var stroke_weight = argument0.px_glyph_stroke_weight;
var size = argument0.px_glyph_size;
var index = argument1;

var glyph = argument0.glyphs[argument1];

var vertices = glyph.vertices;

var line = -1;
var svi = 0;
var evi = 0;

for (var j = 0; j < glyph.line_count; j++) {
	svi = glyph.lines[j, 0];
	evi = glyph.lines[j, 1];
	//line = glyph.lines[j];
	//svi = line[0];
	//evi = line[1];
	
	draw_line_width(
		argument2 + vertices[svi, 3] * size, //line.start_x * size,
		argument3 + vertices[svi, 4] * size, //line.start_y * size,
		argument2 + vertices[evi, 3] * size, //line.end_x * size,
		argument3 + vertices[evi, 4] * size, //line.end_y * size,
		stroke_weight
	);
}

return argument2 + glyph.width * size;