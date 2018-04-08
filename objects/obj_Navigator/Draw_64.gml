/// @description Insert description here
// You can write your code in this editor
if (is_debug){
	draw_set_halign(fa_left);
	
	draw_text(5, 50, "DEBUG MODE ON");
	draw_text(5, 65, "CTRL down?: " + (is_ctrl_down ? "yup" : "nope"));
	draw_text(5, 80, "CTRL N for next room CTRL B for previous");
	draw_text(5, 95, "CTRL D to toggle DEBUG MODE");
	draw_text(5, 110, "Room: " + room_get_name(room));
}

if (room == r_Init) {
	scr_Splitsfont_Draw_String(splitsfont_test, string_pos_x, string_pos_y);
	scr_Splitsfont_Draw_String(splitsfont_test_2, string_pos_x, string_pos_y + 125);
	scr_Splitsfont_Draw_String(splitsfont_test_3, string_pos_x, string_pos_y + 250);
	scr_Splitsfont_Draw_String(splitsfont_test_4, string_pos_x, string_pos_y - 125);
	scr_Splitsfont_Draw_String(splitsfont_test_5, string_pos_x, string_pos_y - 250);
}

draw_text(1100, 680, "fps_real: " + string(fps_real));
draw_text(1100, 700, "fps: " + string(fps));