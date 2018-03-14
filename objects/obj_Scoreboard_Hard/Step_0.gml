/// @description Incr frames, handle reaching of score thresholds
event_inherited();

if (gs_playing == global.game.state) {
	frames += 1;
	
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id,
		[
			[steam_ach_The_Pro, "stat_hard_frames_low", steam_leaderboard_hard_frames_low],
			[steam_ach_The_Contender, "stat_hard_frames_mid", steam_leaderboard_hard_frames_mid],
			[steam_ach_The_Champion, "stat_hard_frames_high", steam_leaderboard_hard_frames_high]
		]
	);
	
	scr_Scoreboard_No_Pressure_Check(id);
}