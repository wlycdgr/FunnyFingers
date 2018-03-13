/// @description Init
WLY_HighestOrdCode = 96;

glyph_vertex_data = array_create(WLY_HighestOrdCode, -1);
glyph_vertex_data[ord("A")] = [
	[0.3, 0.0, 0.0],
	[0.35, 0.6, -0.19],
	[0.35, 0.6, 0.19],
	[0.35, 1.0, -0.35],
	[0.35, 1.0, 0.35]
];
glyph_vertex_data[ord("C")] = [
	[0.275, 0.0, -0.275],
	[0.275, 0.0, 0.275],
	[0.275, 1.0, -0.275],
	[0.275, 1.0, 0.275]
];
glyph_vertex_data[ord("E")] = [
	[0.3, 0.0, -0.3],
	[0.3, 0.55, -0.3],
	[0.3, 1.0, -0.3],
	[0.3, 1.0, 0.3],
	[0.3, 0.55, 0.2],
	[0.3, 0.0, 0.3]
];
glyph_vertex_data[ord("G")] = [
	[0.275, 0.0, -0.275],
	[0.275, 1.0, -0.275],
	[0.275, 1.0, 0.275],
	[0.275, 0.55, 0.275],
	[0.275, 0.55, 0.025],
	[0.275, 0.0, 0.275]
];
glyph_vertex_data[ord("H")] = [
]
glyph_vertex_data[ord("I")] = [
];
glyph_vertex_data[ord("L")] = [
];
glyph_vertex_data[ord("M")] = [
];
glyph_vertex_data[ord("N")] = [
];
glyph_vertex_data[ord("O")] = [
];
glyph_vertex_data[ord("R")] = [
]
glyph_vertex_data[ord("T")] = [
]
glyph_vertex_data[ord("U")] = [
]
glyph_vertex_data[ord("V")] = [
];
glyph_vertex_data[ord("W")] = [
]
glyph_vertex_data[ord("Y")] = [
]
glyph_vertex_data[vk_space] = [
];


glyph_line_data = array_create(WLY_HighestOrdCode, -1);
glyph_line_data[ord("A")] = [
	[3, 0],
	[0, 4],
	[1, 2]
];
glyph_line_data[ord("C")] = [
	[0, 1],
	[2, 0],
	[2, 3]
];
glyph_line_data[ord("E")] = [
];
glyph_line_data[ord("G")] = [
];
glyph_line_data[ord("H")] = [
]
glyph_line_data[ord("I")] = [
];
glyph_line_data[ord("L")] = [
];
glyph_line_data[ord("M")] = [
];
glyph_line_data[ord("N")] = [
];
glyph_line_data[ord("O")] = [
];
glyph_line_data[ord("R")] = [
]
glyph_line_data[ord("T")] = [
]
glyph_line_data[ord("U")] = [
]
glyph_line_data[ord("V")] = [
];
glyph_line_data[ord("W")] = [
]
glyph_line_data[ord("Y")] = [
]
glyph_line_data[vk_space] = [
];


glyphs = array_create(WLY_HighestOrdCode, -1);

for (var i = 0; i < WLY_HighestOrdCode; i++) {
	if (-1 == glyph_vertex_data[i]) continue;
	
	glyphs[i] = scr_Splitsfont_BuildGlyphTemplate(
		glyph_vertex_data[i],
		glyph_line_data[i]
	);
}