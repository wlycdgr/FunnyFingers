/// @description Draw the logo
scr_Splitsfont_Draw_String(funny_fingers, 300, funny_fingers_y);

for (var i = 0; i < backer_tween_strings_count; i++) {
	if (-1 == backer_tweens[i]) continue;
	
	scr_Splitsfont_Draw_String(
		backer_tween_strings[i],
		backer_tween_x_paths[i].value,
		backer_tween_y_positions[i]
	);
}