/// @description Insert description here
// You can write your code in this editor
if (
	keyboard_check(vk_control) &&
	keyboard_check_pressed(ord("S"))
) {
	off = !off;
	
	if (off) { sound_on_off_string = "OFF"; }
	else { sound_on_off_string = "ON"; }
}