/// @function scr_Splitsfont_Set_Angle(splitsfont_string, angle_in_degrees);

var angle_in_rads = argument1 * (pi / 180);
var rotation_alignment = argument0.rotation_alignment;
var angle_cos = 0;
var angle_sin = 0;
var glyph = 0;
var v_count = 0;
var line_count = 0;
var svi = 0;
var evi = 0;
var vertex = -1;
var line = -1;
var glyph_vertices = -1;

for (var i = 0; i < argument0.length; i++) {
	angle_cos = cos(angle_in_rads);
	angle_sin = sin(angle_in_rads);
	
	glyph = argument0.glyphs[i];
	glyph_vertices = glyph.vertices;
	
	v_count = glyph.vertex_count;
	for (var j = 0; j < v_count; j++) {
		//vertex = glyph.vertices[j];
		glyph_vertices[j, 3] = glyph_vertices[j, 0] + (glyph_vertices[j, 2] * angle_cos);
		glyph_vertices[j, 4] = glyph_vertices[j, 1] + (glyph_vertices[j, 2] * angle_sin);
		
		//vertex[3] = vertex[0] + (vertex[2] * angle_cos);
		//vertex[4] = vertex[1] + (vertex[2] * angle_sin);
		//vertex.pos_x = vertex.pivot_x + (vertex.x_offset * angle_cos);
		//vertex.pos_y = vertex.pivot_y + (vertex.x_offset * angle_sin);
		
		//argument0.glyphs[i].vertices[j] = vertex;
	}
	
	line_count = glyph.line_count;
	for (var k = 0; k < line_count; k++) {
		line = glyph.lines[k];

		svi = line.start_vertex_index;
		evi = line.end_vertex_index;
		
		line.start_x = glyph_vertices[svi, 3];
		line.start_y = glyph_vertices[svi, 4];
		//line.start_x = glyph.vertices[svi].pos_x;
		//line.start_y = glyph.vertices[line.start_vertex_index].pos_y;
		
		line.end_x = glyph_vertices[evi, 3];
		line.end_y = glyph_vertices[evi, 4];
		//line.end_x = ev[3];
		//line.end_y = ev[4];
		//line.end_x = glyph.vertices[line.end_vertex_index].pos_x;
		//line.end_y = glyph.vertices[line.end_vertex_index].pos_y;
	}
	
	glyph.vertices = glyph_vertices;
	
	angle_in_rads *= rotation_alignment;
}