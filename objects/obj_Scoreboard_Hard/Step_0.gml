/// @description Incr frames, handle reaching of score thresholds
if (global.steam_overlay_activated) exit;

event_inherited();

if (gs_playing == global.game.state) {
	
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			ach_The_Pro,
			ach_The_Contender,
			ach_The_Champion
		]
	);
	
	scr_Steam_PossiblyUnlockNoPressure(id);
}

scr_Scoreboard_AnimateScoreDisplay(id);