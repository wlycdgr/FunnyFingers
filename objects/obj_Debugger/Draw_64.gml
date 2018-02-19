/// @description Insert description here
// You can write your code in this editor
if (is_debug){
	draw_text(5, 50, "DEBUG MODE ON");
	draw_text(5, 65, "CTRL down?: " + (is_ctrl_down ? "yup" : "nope"));
	draw_text(5, 80, "Room: " + room_get_name(room));
}