/// @description Init

space_main_menu = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(space_main_menu, "SPACEBAR: MAIN MENU");
scr_Splitsfont_Set_Tweaks(space_main_menu, [0.015, 0.0015, 0.01, 0, 0]);

// MENU
menu_labels[0] = "RESET COOL SCORES";
menu_labels[1] = "RESET EASY SCORES";
menu_labels[2] = "RESET MEDIUM SCORES";
menu_labels[3] = "RESET HARD SCORES";
menu_labels[4] = "RESET DIFFICULT SCORES";
menu_labels[5] = "MAIN MENU";
main_menu_labels[0] = "TUTORIAL";
main_menu_labels[1] = "PLAY";
main_menu_labels[2] = "HIGH SCORES";
main_menu_labels[3] = "CREDITS";
main_menu_labels[4] = "EXIT";

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
