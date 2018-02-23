/// @description Insert description here
// You can write your code in this editor

if (is_game_over){
	scr_Handle_Ribbon_Menu_Selection(game_over_menu);
}
else if (is_paused){
	scr_Handle_Ribbon_Menu_Selection(pause_menu);
}
else {
	for (var i = array_length_1d(playfields) - 1; i > -1; i--){
		// Is the game over?
		if (playfields[i].has_unfunny_finger){
			is_game_over = true;
			with (game_over_menu) { event_user(0); } // start sliding out
			exit;
		}
	}
	
	if (keyboard_check_pressed(vk_enter)){ // use input handler, this is stub
		is_paused = true;
		with (pause_menu) { event_user(0); }
		exit;
	}
}
