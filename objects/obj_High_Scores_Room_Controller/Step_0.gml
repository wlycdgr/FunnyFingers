/// @description Update
if (!menu.active) exit;

scr_Menu_Scroll(menu);
if (scr_Menu_Selection_Made(menu)) {
	scr_Menu_Act_On_Selection(menu);
}


// Scroll the leaderboards ribbon
// TODO: generalize Menu scroll function so I can use it for this
if (keyboard_check_pressed(ord("P"))) {
	leaderboards_ribbon_index = 
		(leaderboards_ribbon_index + 1) %
		leaderboards_ribbon_count;
	
	event_user(0); // load scores for newly selected tab
}

else if (keyboard_check_pressed(ord("Q"))) {
	leaderboards_ribbon_index =
		(leaderboards_ribbon_index - 1 + leaderboards_ribbon_count) %
		leaderboards_ribbon_count;
		
	event_user(0); // load scoresd for newly selected ta
}


// Scroll the filters ribbon
// TODO: same todo as for leaderboards ribbon
if (keyboard_check_pressed(ord("O"))) {
	filters_ribbon_index = 
		(filters_ribbon_index + 1) %
		filters_ribbon_count;
	
	event_user(0); // load scores for newly selected tab
}

else if (keyboard_check_pressed(ord("W"))) {
	filters_ribbon_index =
		(filters_ribbon_index - 1 + filters_ribbon_count) %
		filters_ribbon_count;
		
	event_user(0); // load scoresd for newly selected ta
}