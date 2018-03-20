/// @description Draw the credits

// Draw control hints
scr_Splitsfont_Draw_String(
	q_main_menu,
	5, 700
);

var number_of_strings_on_this_screen = 
	screen_strings_lengths[screen_index];
for (var i = 0; i < number_of_strings_on_this_screen; i++) {
	scr_Splitsfont_Draw_String(
		screen_strings[screen_index, i],
		screen_string_x_paths[screen_index, i].value,
		screen_string_y_positions[screen_index, i]
	);
}


if (2 != screen_index) exit;


for (var i = 0; i < backer_tween_strings_count; i++) {
	if (-1 == backer_tweens[i]) continue;
	
	scr_Splitsfont_Draw_String(
		backer_tween_strings[i],
		backer_string_x_paths[i].value,
		backer_string_y_positions[i]
	);
}
