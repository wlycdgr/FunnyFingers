/// @description Draw the credits

// Draw control hints
scr_Splitsfont_Draw_String(
	space_main_menu,
	5, 700
);

// Draw strings
for (var i = 0; i < 6; i++) {
	scr_Splitsfont_Draw_String(
		first_sequence[i],
		first_sequence_x + 75 * i, window_height * 0.5
	);
}