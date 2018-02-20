/// @description Set input flags
// You can write your code in this editor
is_exit_pressed = keyboard_check_pressed(vk_escape);

// Funny Fingers movement
is_leftmost_pressed = keyboard_check_pressed(ord("Q"));
is_second_leftmost_pressed = keyboard_check_pressed(ord("W"));
is_third_leftmost_pressed = keyboard_check_pressed(ord("E"));

is_rightmost_pressed = keyboard_check_pressed(ord("P"));
is_second_rightmost_pressed = keyboard_check_pressed(ord("O"));
is_third_rightmost_pressed = keyboard_check_pressed(ord("I"));