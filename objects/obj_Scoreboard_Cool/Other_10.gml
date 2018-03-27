/// @description On Game Over
/// @description Upload high score
var new_lifetime_points = 
	scr_ASI_UpdateLifetimeCoolPointsLeaderboard("stat_lifetime_cool_points", global.scoreboard.points);

if (
	new_lifetime_points >= ach_Level_99_points_target &&
	already_unlocked_level_99
) {
	scr_ASI_UnlockAchievement(ach_Level_99);
	
	level_99_unlocked_this_time = true;
}
	
//if (
//	(new_lifetime_points >= steam_ach_Level_99_points_target) && 
//	!already_unlocked_level_99
//) {
//	scr_Steam_UnlockAchievement(steam_ach_Level_99);
	
//	level_99_unlocked_this_time = true;
//}