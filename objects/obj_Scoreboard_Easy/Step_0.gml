/// @description Incr frames, handle reaching of score thresholds
if (global.steam_overlay_activated) exit;

event_inherited();

if (gs_playing == global.game.state) {
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			ach_The_Challenger,
			ach_The_Lucky_Loser,
			ach_The_Qualifier
		]
	);
}

scr_Scoreboard_AnimateScoreDisplay(id);