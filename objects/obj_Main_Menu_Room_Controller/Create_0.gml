/// @description Init
twitching_up = false;
twitching_down = false;
funny_size = 0.181;

target_size = funny_size;
current_size = funny_size;
twitch_per_frame = 0;

funny = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(funny, "FUNNY");
scr_Splitsfont_Set_Tweaks(funny, [funny_size, 0.062, 0.078, 0, 0]);
funny_center = 15 + window_x_center;
funny_x  = funny_center - scr_Splitsfont_Get_Width(funny) / 2;
funny_y = 0.11 * window_height;

fingers = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(fingers, "FINGERS");
scr_Splitsfont_Set_Tweaks(fingers, [0.122, 0.008, 0.059, 0, 17]);
fingers_x  = window_x_center - scr_Splitsfont_Get_Width(fingers) / 2;
fingers_y = 0.36 * window_height;

title_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
title_tween.close_enough *= 0.01;

title_x_paths[0] = scr_SlideTween_Add_Path(
	title_tween,
	[
		window_width,
		funny_x,
		-slide_three_window_widths
	]
);
title_x_paths[1] = scr_SlideTween_Add_Default_Path(title_tween, fingers, slide_right);



// MAIN MENU
main_menu_labels[0] = "TUTORIAL";
main_menu_labels[1] = "PLAY";
main_menu_labels[2] = "CREDITS";
main_menu_labels[3] = "EXIT";

/*
if (scr_ASI_IsAchievementUnlocked(ach_QWEIOP)) {
	main_menu_labels[0] = "PLAY";
}
*/

main_menu = scr_Menu_NEW(
	window_x_center, 0.75 * window_height,
	main_menu_labels,
	menu_is_tweened
);

// DIFFICULTY SELECTION MENU
difficulty_menu_labels[0] = "COOL";
difficulty_menu_labels[1] = "EASY";

if (scr_ASI_IsAchievementUnlocked(ach_The_Qualifier)) { difficulty_menu_labels[2] = "MEDIUM"; }
else { difficulty_menu_labels[2] = "??????"; }

if (scr_ASI_IsAchievementUnlocked(ach_The_Breakout_Performer)) { difficulty_menu_labels[3] = "HARD"; }
else { difficulty_menu_labels[3] = "????"; }

if (scr_ASI_IsAchievementUnlocked(ach_The_Champion)) { difficulty_menu_labels[4] = "DIFFICULT"; }
else { difficulty_menu_labels[4] = "?????????"; }

difficulty_menu_labels[5] = "BACK";

difficulty_menu = scr_Menu_NEW(
	window_x_center, 0.65 * window_height,
	difficulty_menu_labels,
	menu_is_tweened
);
difficulty_menu.active = false;