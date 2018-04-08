/// @description Incr frames, handle reaching of score thresholds
if (global.steam_overlay_activated) exit;

event_inherited();

if (gs_playing == global.game.state) {
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			ach_The_Hall_Of_Famer,
			ach_The_Living_Legend,
			ach_Fignermukcre
		]
	);

	scr_Steam_PossiblyUnlockNoPressure(id);
}

scr_Scoreboard_AnimateScoreDisplay(id);