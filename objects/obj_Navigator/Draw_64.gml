/// @description Insert description here
// You can write your code in this editor
if (is_debug){
	draw_set_halign(fa_left);
	
	draw_text(5, 50, "DEBUG MODE ON");
	draw_text(5, 65, "CTRL down?: " + (is_ctrl_down ? "yup" : "nope"));
	draw_text(5, 80, "Room: " + room_get_name(room));
}

scr_Splitsfont_Draw_String(splitsfont_test, string_pos_x, string_pos_y);
scr_Splitsfont_Draw_String(splitsfont_test_2, string_pos_x, 100);
scr_Splitsfont_Draw_String(splitsfont_test_3, string_pos_x, 450);
scr_Splitsfont_Draw_String(splitsfont_test_4, string_pos_x, 550);
scr_Splitsfont_Draw_String(splitsfont_test_5, string_pos_x, 650);

draw_text(5, 5, string(fps));