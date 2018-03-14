/// @description Animate test splitsfont string
if (room == r_Init) {
	scr_Splitsfont_Rotate_String(splitsfont_test);

	string_pos_x -= 2;
	
	if (string_pos_x < -2000) {
		string_pos_x = 1300;
	}
}