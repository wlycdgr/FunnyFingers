/// @description Init
is_active = true;

glyphs = -1;

length = 0;

total_width = 0.0;

current_angle_degrees = WLY_DefaultAngleInDegs;

px_glyph_size = WLY_DefaultSizeAsPropOfScreenHeight * window_height;
px_glyph_stroke_weight = WLY_DefaultStrokeWeightAsPropOfScreenHeight * window_height;
px_string_kern = WLY_DefaultKernAsPropOfScreenHeight * window_height;
color = c_black;
rotation_alignment = WLY_DefaultRotationAlignment;
rotation_dir = WLY_DefaultRotationDirection;
rotation_speed_degrees_per_sec = WLY_DefaultRotationSpeedInDegsPerSec;
render_style = WLY_DefaultRenderStyle;

text_already_set = false;