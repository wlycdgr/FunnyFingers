/// @description Update

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

// Check for death / sadness / game over
for (var i = global.game_settings.funny_finger_count - 1; i > -1; i--){
	if (funny_fingers[i].is_not_funny_anymore){
		has_unfunny_finger = true;
		exit;
	}
}

// If this playfield is out of focus, we are done
if (!focused) exit;

// Check to see whether any funny finger is moving
// If so, 
// * reset multiplier if there is move input
// * reset TYPERWRITER index if there is move input
// * otherwise, do not accept any more move input and return
for (var i = global.game_settings.funny_finger_count - 1; i > -1; i--){
	if (funny_fingers[i].is_moving) {
		if (
			global.input_tracker.is_leftmost_pressed ||
			global.input_tracker.is_rightmost_pressed ||
			(global.game_settings.difficulty > game_difficulty_cool && 
				(global.input_tracker.is_second_leftmost_pressed ||
				 global.input_tracker.is_second_rightmost_pressed)
			) ||
			(global.game_settings.difficulty > game_difficulty_easy &&
				(global.input_tracker.is_third_leftmost_pressed ||
				 global.input_tracker.is_third_rightmost_pressed)
			) ||
			(global.game_settings.difficulty > game_difficulty_medium &&
				(global.input_tracker.is_fourth_leftmost_pressed ||
				 global.input_tracker.is_fourth_rightmost_pressed)
			) ||
			(global.game_settings.difficulty > game_difficulty_hard &&
				(global.input_tracker.is_fifth_leftmost_pressed ||
				 global.input_tracker.is_fifth_rightmost_pressed)
			)
		) {
			with (multiplier_bar) { event_user(12); } // reset multiplier
			
			if (game_difficulty_difficult == global.game_settings.difficulty) {
				TYPEWRITER_letters_index = 0;
			}
		}
		
		exit;
	}
}


// If this playfield IS focused AND IS currently accepting move input,
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
			multiplier_bar.multiplier * 
			score_valid_move_base_value;
	}
	else {
		with (multiplier_bar) { event_user(12); } // reset multiplier!
	}
	
	with (targeted_ff) { event_user(2); } // Initiate move
	
	
	// If we are at max difficulty, check to see if we are typing TYPEWRITER
	if (
		game_difficulty_difficult == global.game_settings.difficulty &&
		!global.steam.unlocked[steam_ach_A_Longest_Word]
	) {
		if (targeted_ff.source_column != targeted_ff.target_column) {
			if (keyboard_check_pressed(ord(TYPEWRITER_letters[TYPEWRITER_letters_index]))) {
				TYPEWRITER_letters_index += 1;
				if (TYPEWRITER_letters_index == TYPEWRITER_letters_length) {
					scr_Steam_UnlockAchievement_ALongestWord();
				}
			}
			else {
				TYPEWRITER_letters_index = 0; // start over!
			}
		}
		
		else {
			TYPEWRITER_letters_index = 0;
		}
	}
}