/// @description Update
// If the Steam overlay is activated, suspend all opertions
if (global.steam_overlay_activated) exit;

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

// Check for death / sadness / game over / movement
var the_very_funny_finger = 0;
for (var i = global.game_settings.funny_finger_count - 1; i > -1; i--){
	the_very_funny_finger = funny_fingers[i];
	
	if (the_very_funny_finger.is_not_funny_anymore){
		has_unfunny_finger = true;
		exit;
	}
	
	if (the_very_funny_finger.is_moving) {
		exit;
	}
}

// If this playfield is out of focus, we are done
if (!focused) exit;

// If this playfield 
//	IS focused AND 
//  IS currently accepting move input AND
//  NO AVATAR IS CURRENTLY MOVING
// check for that input and handle it if necessary
var ff_move_direction = 0;
var index = 0;

if (global.input_tracker.is_leftmost_pressed) { ff_move_direction = -1; }

else if (global.input_tracker.is_rightmost_pressed) {
	ff_move_direction = 1;
	index = global.game_settings.funny_finger_count - 1;
}

else if (
	global.input_tracker.is_second_leftmost_pressed &&
	global.game_settings.funny_finger_count > 1
) {
	ff_move_direction = -1;
	index = 1;
}

else if (
	global.input_tracker.is_second_rightmost_pressed &&
	global.game_settings.funny_finger_count > 1
) {
	ff_move_direction = 1;
	index = global.game_settings.funny_finger_count - 2;
}

else if (
	global.input_tracker.is_third_leftmost_pressed &&
	global.game_settings.funny_finger_count > 2
) {
	ff_move_direction = -1;
	index = 2;
}

else if (
	global.input_tracker.is_third_rightmost_pressed &&
	global.game_settings.funny_finger_count > 2
) {
	ff_move_direction = 1;
	index = global.game_settings.funny_finger_count - 3;
}

else if (
	global.input_tracker.is_fourth_leftmost_pressed &&
	global.game_settings.funny_finger_count > 3
) {
	ff_move_direction = -1;
	index = 3;
}

else if (
	global.input_tracker.is_fourth_rightmost_pressed &&
	global.game_settings.funny_finger_count > 3
) {
	ff_move_direction = 1;
	index = global.game_settings.funny_finger_count - 4;
}

else if (
	global.input_tracker.is_fifth_leftmost_pressed &&
	global.game_settings.funny_finger_count > 4
) {
	ff_move_direction = -1;
	index = 4;
}

else if (
	global.input_tracker.is_fifth_rightmost_pressed &&
	global.game_settings.funny_finger_count > 4
) {
	ff_move_direction = 1;
	index = global.game_settings.funny_finger_count - 5;
}

	
if (0 != ff_move_direction){
	// Identify the funny finger that we should try to move
	var index_counter = 0;
	for (var i = 0; i < global.game_settings.column_count; i++) {
		if (!columns[i].occupied) continue;
		if (index_counter == index) { 
			var targeted_ff = columns[i].funny_finger_id;
			break;
		}	
		index_counter += 1;
	}
	
	// Identify the column to move to,
	// if one is available
	if (-1 == ff_move_direction) { // trying to move left
		for (var i = targeted_ff.source_column - 1; i > -1; i--){
			if (!columns[i].occupied) {
				targeted_ff.target_column = i;
				break;
			}
		}
	}
	else if (1 == ff_move_direction) { // trying to move right
		for (var i = targeted_ff.source_column + 1; i < global.game_settings.column_count; i++){
			if (!columns[i].occupied){
				targeted_ff.target_column = i;
				break;
			}
		}
	}
	
	// award points & possibly increment multiplier
	// in case of valid move
	if (targeted_ff.source_column != targeted_ff.target_column) {		
		// increase multiplier
		with (multiplier_bar) { event_user(0); } 
		
		global.scoreboard.target_points += 
			multiplier_bar.move_multiplier * 
			multiplier_bar.column_fill_multiplier * 
			score_valid_move_base_value;
	}
	else {
		with (multiplier_bar) { event_user(12); } // reset multiplier!
	}
	
	with (targeted_ff) { event_user(2); } // Initiate move
}