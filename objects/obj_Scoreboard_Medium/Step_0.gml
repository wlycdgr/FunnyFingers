/// @description Incr frames, handle reaching of score thresholds
event_inherited();

if (gs_playing == global.game.state) {
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			steam_ach_The_Wildcard,
			steam_ach_The_Up_And_Comer,
			steam_ach_The_Breakout_Performer
		]
	);
	
	scr_Scoreboard_No_Pressure_Check(id);
}