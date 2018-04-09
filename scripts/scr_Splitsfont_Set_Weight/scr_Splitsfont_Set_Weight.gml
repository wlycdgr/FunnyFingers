/// @function scr_Splitsfont_Set_Weight(splitsfont_string, weight_as_prop_of_screen_height)
with (argument0) { 
	px_glyph_stroke_weight = max(
		1.0,
		argument1 * window_height
	);
}