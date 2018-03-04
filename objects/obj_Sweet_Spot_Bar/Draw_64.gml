/// @description Draw the bar!
scr_Draw_Filled_Rectangle(x, y, width, 20, c_green);

scr_Draw_Filled_Rectangle(
	left_sweet_spot_edge - 2, y,
	2, 20,
	c_red
);

scr_Draw_Filled_Rectangle(
	right_sweet_spot_edge, y,
	2, 20,
	c_red
);

scr_Draw_Filled_Rectangle(
	marker_x, y,
	2, 20,
	c_blue
);

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_text(x, y + 30, "Multiplier x" + string(multiplier));