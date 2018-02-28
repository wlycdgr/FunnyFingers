/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("B"))) {
	with (global.fader) {
		event_user(0);
		target_room = r_MainMenu;
	}
}