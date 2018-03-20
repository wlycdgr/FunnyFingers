/// @description Draw the ribbon
if (srs_inactive = state) exit;

// Draw the ribbon background
scr_Draw_Filled_Rectangle(x, y, sliding_ribbon_width, sliding_ribbon_height, c_white);

// Draw the ribbon borders
scr_Draw_Horizontal_Line(x, y, sliding_ribbon_width, 5);
scr_Draw_Horizontal_Line(x, y + sliding_ribbon_height, sliding_ribbon_width, 5);

// Draw header
scr_Splitsfont_Draw_String(
	header_string,
	header_string_x, header_string_y
);

// Draw the ribbon menu
scr_Menu_Draw(menu);


//draw_text(5, 600, "size: " + string(header_font_size * 100));
//draw_text(5, 620, "weight: " + string(header_font_weight * 100));
//draw_text(5, 640, "kern: " + string(header_font_kern * 100));
//draw_text(5, 660, "angle: " + string(header_font_kern * 100));
//draw_text(5, 680, "relative y: " + string(header_string_y - y));