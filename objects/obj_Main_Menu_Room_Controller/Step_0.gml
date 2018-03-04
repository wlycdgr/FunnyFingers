/// @description Scroll, select, act on selections
if (!main_menu.active && !difficulty_menu.active) exit;

var current_menu = main_menu;
if (difficulty_menu.active) current_menu = difficulty_menu;

scr_Menu_Scroll(current_menu) {
	if (scr_Menu_Selection_Made(current_menu)) {
		scr_Menu_Act_On_Selection(current_menu);
	}
}