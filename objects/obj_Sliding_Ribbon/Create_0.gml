/// @description Init
slide_in_x_target = (window_width - sliding_ribbon_width) / 2;

header_string_y = y + 75;
header_string_x_offset = 
	(sliding_ribbon_width / 2) -
	(scr_Splitsfont_Get_Width(header_string) / 2);
header_string_x = x + header_string_x_offset;

menu.active = false;

slide_tween = instance_create_layer(0, 0, "Instances", obj_SlideTween);
slide_path = scr_SlideTween_Add_Path(
	slide_tween,
	[
		window_width,
		0,
		-window_width * 3
	]
);

with (slide_tween) { 
	close_enough *= 0.05;
	
	slide_proportion_per_frame_current = 0.12;
	slide_proportion_per_frame_min = 0.08;
	slide_proportion_per_frame_max = 0.12;
	
	active = false;
}

bottom_y = y + sliding_ribbon_height;