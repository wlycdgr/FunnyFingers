/// @description Set input flags
// You can write your code in this editor
is_exit_pressed = keyboard_check_pressed(vk_escape);
is_pause_pressed = keyboard_check_pressed(vk_space);

// Funny Fingers movement
is_leftmost_pressed = keyboard_check_pressed(ord("Q"));
is_second_leftmost_pressed = keyboard_check_pressed(ord("W"));
is_third_leftmost_pressed = keyboard_check_pressed(ord("E"));
is_fourth_leftmost_pressed = keyboard_check_pressed(ord("R"));
is_fifth_leftmost_pressed = keyboard_check_pressed(ord("T"));

is_rightmost_pressed = keyboard_check_pressed(ord("P"));
is_second_rightmost_pressed = keyboard_check_pressed(ord("O"));
is_third_rightmost_pressed = keyboard_check_pressed(ord("I"));
is_fourth_rightmost_pressed = keyboard_check_pressed(ord("U"));
is_fifth_rightmost_pressed = keyboard_check_pressed(ord("Y"));