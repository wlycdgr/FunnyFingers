/// @description Draw the logo
scr_Splitsfont_Draw_String(funny_fingers, 300, funny_fingers_y);

for (var i = 0; i < backer_count; i++) {
	var y_pos = backer_list_y_top + backer_string_y_offsets[i];
	
	if (y_pos < -200) continue;
	if (y_pos > window_height) continue;
	
	scr_Splitsfont_Draw_String(
		backer_strings[i],
		backer_string_x_positions[i],
		y_pos
	);
}
