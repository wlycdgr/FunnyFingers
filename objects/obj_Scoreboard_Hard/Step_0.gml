/// @description Incr frames, handle reaching of score thresholds
event_inherited();

if (gs_playing == global.game.state) {
	
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			steam_ach_The_Pro,
			steam_ach_The_Contender,
			steam_ach_The_Champion
		]
	);
	
	scr_Scoreboard_No_Pressure_Check(id);
}