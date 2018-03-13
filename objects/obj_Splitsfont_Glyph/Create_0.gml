/// @description Insert description here
// You can write your code in this editor
WLY_MaxVertices = 16;
WLY_MaxLines = 16;

is_active = false;

vertices = array_create(WLY_MaxVertices, -1);
vertex_count = 0;

lines = array_create(WLY_MaxLines, -1);
line_count = 0;

width = 0.0;
derived_px_width = 0.0;
kern_multiplier = 0.0;
angle_rad = 0.0;