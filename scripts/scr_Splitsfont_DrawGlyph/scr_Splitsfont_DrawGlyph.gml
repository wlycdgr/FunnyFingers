/// @function scr_Splitsfont_DrawGlyph(splitsfont_string, index, x, y)

var stroke_weight = argument0.px_glyph_stroke_weight;
var size = argument0.px_glyph_size;
var color = argument0.color;
var index = argument1;

var glyph = global.splitsfont.glyphs[ord("A")];//global.splitsfont.glyphs[argument0.glyph_indices[argument1]];

var line = -1;

draw_set_color(c_black);
for (var i = 0; i < glyph.line_count; i++) {
	line = glyph.lines[i];
	
	draw_line_width(
		argument2 + line.start_x * size,
		argument3 + line.start_y * size,
		argument2 + line.end_x * size,
		argument3 + line.end_y * size,
		stroke_weight
	);
}

return argument2 + glyph.width * size;