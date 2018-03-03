/// @description Update
if (!menu.active) exit;

scr_Menu_Scroll(menu);
if (scr_Menu_Selection_Made(menu)) {
	scr_Menu_Act_On_Selection(menu);
}


if (keyboard_check_pressed(ord("P"))) {
	tabs_item_index = 
		(tabs_item_index + 1) %
		tabs_item_count;
	
	event_user(0); // load scores for newly selected tab
}

else if (keyboard_check_pressed(ord("Q"))) {
	tabs_item_index =
		(tabs_item_index - 1 + tabs_item_count) %
		tabs_item_count;
		
	event_user(0); // load scoresd for newly selected ta
}