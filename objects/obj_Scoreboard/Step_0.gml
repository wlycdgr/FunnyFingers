/// @description Incr frames, handle reaching of score thresholds
if (global.steam_overlay_activated) exit;

if (game_difficulty_cool == global.game_settings.difficulty) exit;

var game_state = global.game.state;

if (gs_playing == game_state) {
	frames += 1;
	
	if (
		points >= steam_ach_unlock_score_high &&
		!attempted_no_pressure_unlock &&
		!combo_broken
	) {
		if (
			game_difficulty_medium == global.game_settings.difficulty ||
			game_difficulty_hard == global.game_settings.difficulty ||
			game_difficulty_difficult == global.game_settings.difficulty
		) {
			
			scr_Steam_UnlockAchievement(steam_ach_No_Pressure);
			
			attempted_no_pressure_unlock = true;
		}
	}
	
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