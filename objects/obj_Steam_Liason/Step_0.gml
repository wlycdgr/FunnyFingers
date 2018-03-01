/// @description
event_user(0);

if (
	keyboard_check(vk_control) &&
	keyboard_check(ord("A"))
) {
	
	if (keyboard_check_pressed(ord("0"))) { scr_Toggle_Steam_Achievement("ach_0_qweiop"); }
	else if (keyboard_check_pressed(ord("1"))) { scr_Toggle_Steam_Achievement("ach_1_qualifier"); }
}