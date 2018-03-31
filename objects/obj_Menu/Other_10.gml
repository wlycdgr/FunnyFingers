/// @description Insert description here
// You can write your code in this editor

if (room == r_Gameplay) {
	scroll_down = keyboard_check_pressed(vk_down);
	scroll_up = keyboard_check_pressed(vk_up);
}

else {
	scroll_down = 
		keyboard_check_pressed(vk_down) || 
		keyboard_check_pressed(ord("S")) ||
		keyboard_check_pressed(ord("K"));
	scroll_up =
		keyboard_check_pressed(vk_up) ||
		keyboard_check_pressed(ord("W")) ||
		keyboard_check_pressed(ord("I"));
}

select = 
	keyboard_check_pressed(vk_enter) ||
	keyboard_check_pressed(vk_space);