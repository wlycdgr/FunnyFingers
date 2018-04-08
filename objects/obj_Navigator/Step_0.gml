/// @description Animate test splitsfont string
if (room == r_Init) {
	scr_Splitsfont_Rotate_String(splitsfont_test);
	scr_Splitsfont_Rotate_String(splitsfont_test_2);
	scr_Splitsfont_Rotate_String(splitsfont_test_3);
	scr_Splitsfont_Rotate_String(splitsfont_test_4);
	scr_Splitsfont_Rotate_String(splitsfont_test_5);

	string_pos_x -= 2;
	
	if (string_pos_x < -2000) {
		string_pos_x = 1300;
	}
}