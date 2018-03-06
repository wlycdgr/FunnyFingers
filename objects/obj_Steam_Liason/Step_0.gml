/// @description
event_user(0);

if (
	keyboard_check(vk_control) &&
	keyboard_check(ord("A"))
) {
	if (keyboard_check_pressed(ord("0"))) { scr_Toggle_Achievement("ach_0_qweiop"); }
	else if (keyboard_check_pressed(ord("1"))) { scr_Toggle_Achievement("ach_1_the_dabbler"); }
	else if (keyboard_check_pressed(ord("2"))) { scr_Toggle_Achievement("ach_2_the_qualifier"); }
	else if (keyboard_check_pressed(ord("3"))) { scr_Toggle_Achievement("ach_3_the_up_and_comer"); }
	else if (keyboard_check_pressed(ord("4"))) { scr_Toggle_Achievement("ach_4_fignermukcre"); }
	else if (keyboard_check_pressed(ord("5"))) { scr_Toggle_Achievement("ach_5_triple_up"); }
	else if (keyboard_check_pressed(ord("6"))) { scr_Toggle_Achievement("ach_6_best_friend"); }
	else if (keyboard_check_pressed(ord("7"))) { scr_Toggle_Achievement("ach_7_no_pressure"); }
	else if (keyboard_check_pressed(ord("8"))) { scr_Toggle_Achievement("ach_8_the_score_is_right"); }
	else if (keyboard_check_pressed(ord("9"))) { scr_Toggle_Achievement("ach_9_a_longest_word"); }
	else if (keyboard_check_pressed(ord("Z"))) { scr_Toggle_Achievement("ach_10_a_level_99"); }
	
	else if (keyboard_check_pressed(ord("V"))) { draw_debug = !draw_debug; }
}