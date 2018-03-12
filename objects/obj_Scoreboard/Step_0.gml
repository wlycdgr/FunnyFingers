/// @description Incr frames, handle reaching of score thresholds
if (game_difficulty_cool == global.game_settings.difficulty) exit;

var game_state = global.game.state;

if (gs_paused == game_state) {
	frames += 1;
}

else if (gs_playing == game_state) {
	frames += 1;
	
	if (
		points >= steam_ach_unlock_score_high &&
		!submitted_frames_high
	) {
		with (global.steam) { event_user(2); }
		submitted_frames_high = true;
	}
	
	else if (
		points >= steam_ach_unlock_score_med &&
		!submitted_frames_mid
	) {
		with (global.steam) { event_user(3); }
		submitted_frames_mid = true;
	}
	
	else if (
		points >= steam_ach_unlock_score_low &&
		!submitted_frames_low
	) {
		with (global.steam) { event_user(4); }
		submitted_frames_low = true;
	}
}