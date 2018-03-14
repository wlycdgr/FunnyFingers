/// @description Incr frames, handle reaching of score thresholds
event_inherited();

if (gs_playing == global.game.state) {
	frames += 1;
	
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			[steam_ach_The_Challenger, "stat_easy_frames_low", steam_leaderboard_easy_frames_low],
			[steam_ach_The_Lucky_Loser, "stat_easy_frames_mid", steam_leaderboard_easy_frames_mid],
			[steam_ach_The_Qualifier, "stat_easy_frames_high", steam_leaderboard_easy_frames_high]
		]
	);
}