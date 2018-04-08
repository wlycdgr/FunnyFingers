/// @description On Game Over
/// @description Upload high score
var new_lifetime_points = 
	scr_Steam_UpdateLifetimeCoolPointsLeaderboard(global.scoreboard.points);

if (
	new_lifetime_points >= ach_Level_99_points_target &&
	!already_unlocked_level_99
) {
	scr_Steam_UnlockAchievement(ach_Level_99);
	
	level_99_unlocked_this_time = true;
}