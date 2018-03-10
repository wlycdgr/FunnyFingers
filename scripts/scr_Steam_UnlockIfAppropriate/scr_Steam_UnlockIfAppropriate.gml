/// @function scr_Steam_UnlockIfAppropriate(ach_index, target_score)
if (
	!unlocked[argument0] && 
	global.scoreboard.points >= argument1
) {
	steam_set_achievement(ach_api_names[argument0]);
	unlocked[argument0] = true;
}