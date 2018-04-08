/// @description Init
is_active = true;

glyphs = -1;

length = 0;

total_width = 0.0;

//current_angle_degrees = WLY_DefaultAngleInDegs;

current_angle_degrees = global.sf_angle;

px_glyph_size = global.sf_size;
px_glyph_stroke_weight = global.sf_weight;
px_string_kern = global.sf_kern;

//px_glyph_size = WLY_DefaultSizeAsPropOfScreenHeight * window_height;
//px_glyph_stroke_weight = WLY_DefaultStrokeWeightAsPropOfScreenHeight * window_height;
//px_string_kern = WLY_DefaultKernAsPropOfScreenHeight * window_height;

rotation_speed_degrees_per_sec = global.sf_rotation_speed;

rotation_alignment = WLY_DefaultRotationAlignment;
rotation_dir = WLY_DefaultRotationDirection;
//rotation_speed_degrees_per_sec = WLY_DefaultRotationSpeedInDegsPerSec;
render_style = WLY_DefaultRenderStyle;

text_already_set = false;

color = c_black;