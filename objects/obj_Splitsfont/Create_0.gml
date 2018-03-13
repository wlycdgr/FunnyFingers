/// @description Init
WLY_HighestOrdCode = 96;

glyph_vertex_data = array_create(WLY_HighestOrdCode, -1);
vertex_data[ord("A")] = [
	[0.3, 0.0, 0.0],
	[0.35, 0.6, -0.19],
	[0.35, 0.6, 0.19],
	[0.35, 1.0, -0.35],
	[0.35, 1.0, 0.35]
];

glyph_line_data = array_create(WLY_HighestOrdCode, -1);
glyph_line_data[ord("A")] = [
	[3, 0],
	[0, 4],
	[1, 2]
];

glyphs = array_create(WLY_HighestOrdCode, -1);

for (var i = 0; i < WLY_HighestOrdCode; i++) {
	if (-1 == glyph_vertex_data[i]) continue;
	
	glyphs[i] = scr_Splitsfont_BuildGlyphTemplate(
		glyph_vertex_data[i],
		glyph_line_data[i]
	);
}