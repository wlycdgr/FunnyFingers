/// @description Draw the ribbon
if (srs_inactive == state) exit;

// Draw the ribbon background
scr_Draw_Filled_Rectangle(slide_path.value, y, sliding_ribbon_width, sliding_ribbon_height, c_white);

// Draw the ribbon borders
scr_Draw_Horizontal_Line(slide_path.value, y, sliding_ribbon_width, 5);
scr_Draw_Horizontal_Line(slide_path.value, bottom_y, sliding_ribbon_width, 5);

// Draw header
scr_Splitsfont_Draw_String(
	header_string,
	header_string_x, header_string_y
);

// Draw the ribbon menu
scr_Menu_Draw(menu);