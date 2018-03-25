/// @description On game over

with (global.scoreboard) { event_user(0); } // on game over - upload score

if (
	game_difficulty_cool == global.game_settings.difficulty &&
	global.scoreboard.level_99_unlocked_this_time
) {	
	with (level_99_unlock_message_sliding_ribbon) { event_user(0); }
	state = gs_level_99_unlock_message;
}

else {
	with (game_over_sliding_ribbon) { event_user(0); }
	state = gs_game_over;
}