/// @description Update based on state

switch (state) {
case gs_cashed_out:
	if (srs_inactive == cashout_dialogue_sliding_ribbon.state) {
		with (high_scores_sliding_ribbon) { event_user(0); }
		state = gs_viewing_high_scores;
	}
	break;
	
case gs_cashout_dialogue:
	global.scoreboard.current_score = max(
		global.scoreboard.target_score,
		(
			global.scoreboard.current_score - 
			score_cashout_dialogue_penalty_per_frame
		)
	);

	if (srs_selection_made == cashout_dialogue_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(cashout_dialogue_sliding_ribbon.menu);
	}
	break;
	
case gs_game_over:
	if (srs_selection_made == game_over_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(game_over_sliding_ribbon.menu);
	}
	break;
	
case gs_playing:
	if (global.scoreboard.target_score > global.scoreboard.current_score) 
		{ global.scoreboard.current_score += score_grow_to_target_per_frame; }
	
	for (var i = array_length_1d(playfields) - 1; i > -1; i--){
		if (playfields[i].has_unfunny_finger) 
			{ event_user(0); } // on game over
	}
	if (global.input_tracker.is_cashout_dialogue_pressed) 
		{ event_user(1); } // on cashout dialogue request
	break;
		
case gs_restarting:
	if (
		srs_inactive == game_over_sliding_ribbon.state &&
		srs_inactive == cashout_dialogue_sliding_ribbon.state &&
		srs_inactive == high_scores_sliding_ribbon.state
	) {
		room_restart();
	}
	break;
	
case gs_viewing_high_scores:
	if (srs_selection_made == high_scores_sliding_ribbon.state) {
		scr_Menu_Act_On_Selection(high_scores_sliding_ribbon.menu);
	}
	break;
}