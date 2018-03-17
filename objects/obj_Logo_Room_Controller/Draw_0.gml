/// @description Draw the logo
for (var i = 0; i < 4; i++) {
	scr_Splitsfont_Draw_String(
		slides[slide_index, i],
		(x_paths[slide_index, i]).value,
		slides_y[slide_index, i] * window_height
	);
}