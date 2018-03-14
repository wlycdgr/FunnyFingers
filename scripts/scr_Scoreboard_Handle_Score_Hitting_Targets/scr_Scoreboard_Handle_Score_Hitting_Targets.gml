/// @function scr_Scoreboard_Handle_Score_Hitting_Targets(scoreboard, ach_stat_and_leaderboard_info_array);

// Sample call:
/*
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		[steam_ach_The_Challenger, "stat_easy_frames_low", steam_leaderboard_easy_frames_low],
		[steam_ach_The_Lucky_Loser, "stat_easy_frames_mid", steam_leaderboard_easy_frames_mid],
		[steam_ach_The_Qualifier, "stat_easy_frames_high", steam_leaderboard_easy_frames_high]
	);
*/

with (argument0) {
	if (
		points >= steam_ach_unlock_score_high &&
		!submitted_frames_high
	) {
		scr_Scoreboard_UnlockAndUpdate(argument1[2]);
		submitted_frames_high = true;
	}
	
	else if (
		points >= steam_ach_unlock_score_mid &&
		!submitted_frames_mid
	) {
		scr_Scoreboard_UnlockAndUpdate(argument1[1]);
		submitted_frames_mid = true;
	}
	
	else if (
		points >= steam_ach_unlock_score_low &&
		!submitted_frames_low
	) {
		scr_Scoreboard_UnlockAndUpdate(argument1[0]);
		submitted_frames_low = true;
	}
}