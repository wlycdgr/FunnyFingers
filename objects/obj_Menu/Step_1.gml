/// @description Navigation input detection
if (!active) exit;

scroll_down = 
	keyboard_check_pressed(vk_down) || 
	keyboard_check_pressed(ord("S")) ||
	keyboard_check_pressed(ord("K"));
scroll_up =
	keyboard_check_pressed(vk_up) ||
	keyboard_check_pressed(ord("W")) ||
	keyboard_check_pressed(ord("I"));
select = 
	keyboard_check_pressed(vk_enter) ||
	keyboard_check_pressed(vk_space);
