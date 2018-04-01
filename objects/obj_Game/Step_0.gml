///// @description Update based on state

//for (var i = 0; i < moves_length; i++){
//	if (keyboard_check_pressed(left_ord_codes[i])) {
//		left_target_rotation_speeds[i] = min(
//			max_rotation_speed,
//			left_current_rotation_speeds[i] + rotation_speed_move_bump
//		);
	
//		left_target_weights[i] = min(
//			max_weight,
//			left_current_weights[i] + weight_move_bump
//		);
//	}
//}

//for (var i = 0; i < moves_length; i++) {
//	if (left_current_rotation_speeds[i] < left_target_rotation_speeds[i]) {
//		left_current_rotation_speeds[i] += rotation_speed_move_bump_speed;
//	}
//	else {
//		left_target_rotation_speeds[i] = 0;
		
//		left_current_rotation_speeds[i] = max(
//			0,
//			left_current_rotation_speeds[i] - rotation_speed_falloff
//		);
//	}
	
//	if (left_current_weights[i] < left_target_weights[i]) {
//		left_current_weights[i] += weight_move_bump_speed;
//	}
//	else {
//		left_target_weights[i] = left_min_weights[i];
		
//		left_current_weights[i] = max(
//			left_target_weights[i],
//			left_current_weights[i] - weight_falloff
//		);
//	}
//}

//for (var i = 0; i < moves_length; i++) {
//	scr_Splitsfont_Set_RotationSpeed(
//		left_moves[i],
//		left_current_rotation_speeds[i]
//	);
	
//	scr_Splitsfont_Set_Weight(
//		left_moves[i],
//		left_current_weights[i]
//	);
	
//	scr_Splitsfont_Rotate_String(left_moves[i]);
//}


////	max_rotation_speed = 1440;
////rotation_speed_falloff = 36;
////rotation_speed_move_bump = 360;
////rotation_speed_move_bump_speed = 72;

////for (var i = 0; i < 5; i++) {
////	left_current_rotation_speeds[i] = 0;
////	left_target_rotation_speeds[i] = 0;
////}


//if (global.steam_overlay_activated) {
//	steam_overlay_activated_last_step = true;
//	exit;
//}

//if (steam_overlay_activated_last_step) {
//	{ event_user(1); } // on pause
//}

//steam_overlay_activated_last_step = false;

//switch (state) {
//case gs_fading_out:
//	if (
//		srs_inactive == game_over_sliding_ribbon.state &&
//		srs_inactive == paused_sliding_ribbon.state &&
//		srs_inactive == level_99_unlock_message_sliding_ribbon.state
//	) {
//		scr_Fade_To(r_MainMenu);
//	}
//	break;
	
//case gs_game_over:
//	if (srs_selection_made == game_over_sliding_ribbon.state) {
//		scr_Menu_Act_On_Selection(game_over_sliding_ribbon.menu);
//	}
//	break;
	
//case gs_level_99_unlock_message:
//	if (srs_selection_made == level_99_unlock_message_sliding_ribbon.state) {
//		scr_Menu_Act_On_Selection(level_99_unlock_message_sliding_ribbon.menu);
//	}
//	break;
	
//case gs_paused:
//	if (srs_selection_made == paused_sliding_ribbon.state) {
//		scr_Menu_Act_On_Selection(paused_sliding_ribbon.menu);
//	}
//	break;
	
//case gs_playing:
//	if (global.scoreboard.target_points > global.scoreboard.points) { 
//		global.scoreboard.points += score_grow_to_target_per_frame;
//	}

//	for (var i = array_length_1d(playfields) - 1; i > -1; i--){
//		if (playfields[i].has_unfunny_finger) 
//			{ event_user(0); } // on game over
//	}
	
//	if (global.input_tracker.is_pause_pressed) 
//		{ event_user(1); } // on pause
		
//	break;
		
//case gs_restarting:
//	if (
//		srs_inactive == game_over_sliding_ribbon.state &&
//		srs_inactive == paused_sliding_ribbon.state &&
//		srs_inactive == level_99_unlock_message_sliding_ribbon.state
//	) {
//		room_restart();
//	}
//	break;
//}