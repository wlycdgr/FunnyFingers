/// @description Init
slide_in_x_target = (window_width - sliding_ribbon_width) / 2;

//header_font_size = splitsfont_size_ribbonMenuHeader;
//header_font_weight = 0.001;
//header_font_kern = 0.01;
//header_font_angle = 0;

//scr_Splitsfont_Set_Tweaks(header_string, [header_font_size, header_font_weight, header_font_kern, header_font_angle, 0]);
////scr_Splitsfont_Set_Size(header_string, splitsfont_size_ribbonMenuHeader);

header_string_y = y + 75;
header_string_x_offset = 
	(sliding_ribbon_width / 2) -
	(scr_Splitsfont_Get_Width(header_string) / 2);
header_string_x = x + header_string_x_offset;

menu.active = false;