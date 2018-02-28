/// @description Update
if (menu_selection_made) exit;

scr_Update_Menu(id);

if (keyboard_check_pressed(ord("P"))) {
	tabs_item_index = 
		(tabs_item_index + 1) %
		tabs_item_count;
	
	event_user(0); // load scoresd for newly selected tab
}

else if (keyboard_check_pressed(ord("Q"))) {
	tabs_item_index =
		(tabs_item_index - 1 + tabs_item_count) %
		tabs_item_count;
		
	event_user(0); // load scoresd for newly selected ta
}