/// @description Init
slide_in_x_target = (window_width - sliding_ribbon_width) / 2;

scr_Splitsfont_Set_Size(header_string, splitsfont_size_ribbonMenuHeader);

header_string_y = y + 50;
header_string_x_offset = 
	(sliding_ribbon_width / 2) -
	(scr_Splitsfont_Get_Width(header_string) / 2);
header_string_x = x + header_string_x_offset;

menu.active = false;