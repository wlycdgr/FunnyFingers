/// @description Draw the bar!

if (fill_x > 0.0) { 
	draw_rectangle(x, y, x + fill_x, y_bottom, false); 
}

// Move multiplier
scr_Splitsfont_Draw_String(multiplier_label, 15, move_multiplier_y);
scr_MultiplierBar_DrawMultiplier(id, move_multiplier, move_multiplier_number_x_positions);

// Column fill multiplier
scr_Splitsfont_Draw_String(multiplier_label, column_fill_multiplier_X_x, move_multiplier_y);
scr_MultiplierBar_DrawMultiplier(id, column_fill_multiplier, column_fill_multiplier_number_x);