/// @description Update based on state
if (global.steam_overlay_activated) {
	steam_overlay_activated_last_step = true;
	exit;
}

if (steam_overlay_activated_last_step) {
	{ event_user(1); } // on pause
}

steam_overlay_activated_last_step = false;

switch (state) {
case gs_fading_out:
	if (
		srs_inactive == game_over_sliding_ribbon.state &&
		srs_inactive == paused_sliding_ribbon.state &&
		srs_inactive == level_99_unlock_message_sliding_ribbon.state
	) {
		room_goto(r_MainMenu);
	}
	break;
	
case gs_game_over:
	if (srs_selection_made == game_over_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(game_over_sliding_ribbon.menu);
	}
	break;
	
case gs_level_99_unlock_message:
	if (srs_selection_made == level_99_unlock_message_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(level_99_unlock_message_sliding_ribbon.menu);
	}
	break;
	
case gs_paused:
	if (srs_selection_made == paused_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(paused_sliding_ribbon.menu);
	}
	break;
	
case gs_playing:
	if (global.scoreboard.target_points > global.scoreboard.points) { 
		global.scoreboard.points += score_grow_to_target_per_frame;
	}

	for (var i = array_length_1d(playfields) - 1; i > -1; i--){
		if (playfields[i].has_unfunny_finger) 
			{ event_user(0); } // on game over
	}
	
	if (global.input_tracker.is_pause_pressed) 
		{ event_user(1); } // on pause
		
	break;
		
case gs_restarting:
	if (
		srs_inactive == game_over_sliding_ribbon.state &&
		srs_inactive == paused_sliding_ribbon.state &&
		srs_inactive == level_99_unlock_message_sliding_ribbon.state
	) {
		room_restart();
	}
	break;
}