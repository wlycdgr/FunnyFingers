/// @function scr_SlideTween_Add_Default_Path(tween_id, string_id, direction);

var half_of_string_width = scr_Splitsfont_Get_Width(argument1) / 2;

var start_pos = -window_width * argument2;
var end_pos = slide_three_window_widths * argument2;

var default_path = scr_SlideTween_Add_Path(
	argument0,
	[
		start_pos,
		window_x_center - half_of_string_width,
		end_pos
	]
);

return default_path;


