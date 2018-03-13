/// @function scr_Splitsfont_AnimateString(splitsfont_string)

argument0.current_angle_degrees +=
	argument0.rotation_dir * 
	(argument0.rotation_speed_degrees_per_sec / game_fps);
	
argument0.current_angle_degrees =
	argument0.current_angle_degrees %
	360;

var angle_in_rads = argument0.current_angle_degrees * (pi / 180);
var rotation_alignment = argument0.rotation_alignment;
var angle_cos = 0;
var angle_sin = 0;
var glyph = 0;
var v_count = 0;
var line_count = 0;
var vertex = -1;
var line = -1;

for (var i = 0; i < argument0.length; i++) {
	angle_cos = cos(angle_in_rads);
	angle_sin = sin(angle_in_rads);
	
	glyph = argument0.glyphs[i];
	
	v_count = glyph.vertex_count;
	for (var j = 0; j < v_count; j++) {
		vertex = glyph.vertices[j];
		vertex.pos_x = vertex.pivot_x + (vertex.x_offset * angle_cos);
		vertex.pos_y = vertex.pivot_y + (vertex.x_offset * angle_sin);
		
		//argument0.glyphs[i].vertices[j] = vertex;
	}
	
	line_count = glyph.line_count;
	for (var k = 0; k < line_count; k++) {
		line = glyph.lines[k];
		
		line.start_x = glyph.vertices[line.start_vertex_index].pos_x;
		line.start_y = glyph.vertices[line.start_vertex_index].pos_y;
		
		line.end_x = glyph.vertices[line.end_vertex_index].pos_x;
		line.end_y = glyph.vertices[line.end_vertex_index].pos_y;
	}
	
	angle_in_rads *= rotation_alignment;
}