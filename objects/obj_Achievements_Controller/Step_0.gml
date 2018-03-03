/// @description Update
if (!menu.active) exit;

scr_Menu_Scroll(menu);
if (scr_Menu_Selection_Made(menu)) {
	scr_Menu_Act_On_Selection(menu);
}