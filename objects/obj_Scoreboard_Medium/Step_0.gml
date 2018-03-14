/// @description Incr frames, handle reaching of score thresholds
event_inherited();

if (gs_playing == global.game.state) {
	frames += 1;
	
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id,
		[
			[steam_ach_The_Wildcard, "stat_medium_frames_low", steam_leaderboard_medium_frames_low],
			[steam_ach_The_Up_And_Comer, "stat_medium_frames_mid", steam_leaderboard_medium_frames_mid],
			[steam_ach_The_Breakout_Performer, "stat_medium_frames_high", steam_leaderboard_medium_frames_high]
		]
	);
	
	scr_Scoreboard_No_Pressure_Check(id);
}