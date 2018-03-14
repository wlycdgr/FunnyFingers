/// @description Incr frames, handle reaching of score thresholds
event_inherited();

if (gs_playing == global.game.state) {
	frames += 1;
	
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id,
		[
			[steam_ach_The_Hall_Of_Famer, "stat_difficult_frames_low", steam_leaderboard_difficult_frames_low],
			[steam_ach_The_Living_Legend, "stat_difficult_frames_mid", steam_leaderboard_difficult_frames_mid],
			[steam_ach_Fignermukcre, "stat_difficult_frames_high", steam_leaderboard_difficult_frames_high]
		]
	);
	
	scr_Scoreboard_No_Pressure_Check(id);
}