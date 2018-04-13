/// @description Draw the credits

switch(screen_index) {
case 0: // QWEIOP screen
	scr_Splitsfont_Draw_String(
		use_string,
		use_string_x_path.value, use_string_y
	);
	
	for (var i = 0; i < qweiop_length; i++) {
		scr_Splitsfont_Draw_String(
			qweiop_strings[i],
			qweiop_string_x_positions[i], qweiop_strings_y
		);
	}
	
	scr_Splitsfont_Draw_String(
		to_move_string,
		to_move_string_x_path.value, to_move_string_y
	);
	
	break;
	
case 1: // EXCELLENT WORK screen
	scr_Splitsfont_Draw_String(
		excellent_work_string,
		excellent_work_string_x_path.value, excellent_work_string_y
	);
	
	break;
	
case 2: // GOOD LUCK screen
	scr_Splitsfont_Draw_String(
		good_luck_string,
		good_luck_string_x_path.value, good_luck_string_y
	);
	
	break;
	
default:
	break;
}