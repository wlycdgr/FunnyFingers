/// @description Draw the credits

// Draw control hints
scr_Splitsfont_Draw_String(
	space_main_menu,
	5, 700
);

scr_Splitsfont_Draw_String(hs_header, hs_header_x, hs_header_y);
scr_Splitsfont_Draw_String(hs_value_string, hs_value_string_x, hs_value_string_y);
scr_Splitsfont_Draw_String(
	runner_up_value_string,
	runner_up_value_string_x,
	runner_up_value_string_y
);

// Draw menu
scr_Menu_Draw(hs_menu);
