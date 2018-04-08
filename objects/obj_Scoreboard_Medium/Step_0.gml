/// @description Incr frames, handle reaching of score thresholds
if (global.steam_overlay_activated) exit;

event_inherited();

if (gs_playing == global.game.state) {
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			ach_The_Wildcard,
			ach_The_Up_And_Comer,
			ach_The_Breakout_Performer
		]
	);
	
	scr_Steam_PossiblyUnlockNoPressure(id);
}

scr_Scoreboard_AnimateScoreDisplay(id);