/// @description Update based on state

switch (state) {
case gs_game_over:
	if (rms_selection_made == game_over_menu.state) {
		scr_Handle_Ribbon_Menu_Selection(game_over_menu);
	}
	break;

case gs_paused:
	if (global.game_score > global.target_score) {
		global.game_score -= score_pause_penalty_per_frame;
	}
	
	if (rms_selection_made == pause_menu.state) {
		scr_Handle_Ribbon_Menu_Selection(pause_menu);
	}
	break;
	
case gs_playing:
	if (global.target_score > global.game_score) 
		{ global.game_score += score_grow_to_target_per_frame; }
	
	for (var i = array_length_1d(playfields) - 1; i > -1; i--){
		if (playfields[i].has_unfunny_finger) 
			{ event_user(0); } // on game over
	}
	if (keyboard_check_pressed(vk_enter)) 
		{ event_user(1); } // on pause
	break;
		
case gs_restarting:
	if (
		rms_inactive == game_over_menu.state &&
		rms_inactive == pause_menu.state
	) {
		room_restart();
	}
	break;
}