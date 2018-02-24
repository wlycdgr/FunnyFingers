/// @description if fading

if (fs_done == state) exit;
if (fs_inactive == state) exit;

draw_set_color(c_black);

/*
//draw_set_alpha(0.5);

if (fs_fading_out == state) {
	draw_rectangle(
		window_width - (window_width * opacity), 0, 
		window_width + 100, window_height,
		false
	);
}
else if (fs_fading_in == state) {
	draw_rectangle(
		0, 0,
		window_width * opacity, window_height,
		false
	);
}
*/

draw_set_alpha(opacity);
draw_rectangle(0, 0, window_width, window_height, false);
draw_set_alpha(1.0);