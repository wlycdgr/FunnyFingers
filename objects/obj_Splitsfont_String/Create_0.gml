/// @description Init
unicodes = 0;
glyph_vertex_arrays = 0;
kern_multipliers = 0;

length = 0;
total_width = 0.0;

current_angle_degrees = global.sf_angle;
px_glyph_size = global.sf_size;
px_glyph_stroke_weight = global.sf_weight;
px_string_kern = global.sf_kern;
rotation_speed_degrees_per_sec = global.sf_rotation_speed;
rotation_alignment = -1;
rotation_dir = -1;

text_already_set = false;

color = c_black;