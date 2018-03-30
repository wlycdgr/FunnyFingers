///// @description Draw the credits

scr_Splitsfont_Draw_String(
	hs_header, 
	hs_header_x_path.value, hs_header_y
);

for (i = 0; i < cool_leaderboard_length; i++) {
	scr_Splitsfont_Draw_String(
		cool_scores[i],
		score_x, score_y_positions[i]
	);
	
	scr_Splitsfont_Draw_String(
		cool_names[i],
		cool_name_x_positions[i], name_y_positions[i]
	);
}

// Draw menu
scr_Menu_Draw(hs_menu);