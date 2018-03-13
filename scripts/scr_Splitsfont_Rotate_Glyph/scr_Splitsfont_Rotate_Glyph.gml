/// @function scr_Splitsfont_Rotate_Glyph(angle_rads, glyph_index);

var angle_cos = cos(argument0);
var angle_sin = sin(argument0);
var v_count = argument0.glyphs[argument1].vertex_count;
var vertex = -1;
for (var j = 0; j < v_count; j++) {
	vertex = argument0.glyphs[argument1].vertices[j];
	vertex.pos_x = vertex.pivot_x + (vertex.x_offset * angle_cos);
	vertex.pos_y = vertex.pivot_y - (vertex.x_offset * angle_sin);
}
