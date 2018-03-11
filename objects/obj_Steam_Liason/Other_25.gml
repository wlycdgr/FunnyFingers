/// @description Handle debug input
if (
	keyboard_check(vk_control) &&
	keyboard_check(ord("X"))
) {
	if (keyboard_check_pressed(ord("0"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Challenger]); }
	else if (keyboard_check_pressed(ord("1"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Lucky_Loser]); }
	// 2 does not work for some reason????
	else if (keyboard_check_pressed(ord("3"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Qualifier]); }
	else if (keyboard_check_pressed(ord("4"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Wildcard]); }
	else if (keyboard_check_pressed(ord("5"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Up_And_Comer]); }
	else if (keyboard_check_pressed(ord("6"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Breakout_Performer]); }
	else if (keyboard_check_pressed(ord("7"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Pro]); }
	else if (keyboard_check_pressed(ord("8"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Contender]); }
	else if (keyboard_check_pressed(ord("9"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Champion]); }
	else if (keyboard_check_pressed(ord("A"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Hall_Of_Famer]); }
	else if (keyboard_check_pressed(ord("S"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_The_Living_Legend]); }
	else if (keyboard_check_pressed(ord("D"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_Fignermukcre]); }
	else if (keyboard_check_pressed(ord("F"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_Best_Friend]); }
	else if (keyboard_check_pressed(ord("G"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_No_Pressure]); }
	else if (keyboard_check_pressed(ord("H"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_Level_99]); }
	else if (keyboard_check_pressed(ord("J"))) { scr_Toggle_Achievement(ach_api_names[steam_ach_QWEIOP]); }
	
	else if (keyboard_check_pressed(ord("V"))) { draw_debug = !draw_debug; }
}