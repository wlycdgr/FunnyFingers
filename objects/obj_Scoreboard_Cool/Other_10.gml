/// @description On Game Over
/// @description Upload high score
var new_lifetime_points =
	steam_get_stat_int("stat_lifetime_cool_points") + 
	global.scoreboard.points;
		
steam_set_stat_int(
	"stat_lifetime_cool_points",
	new_lifetime_points
);
	
steam_upload_score(
	steam_leaderboard_cool,
	new_lifetime_points
);
	
if (new_lifetime_points >= steam_ach_Level_99_points_target) {
	scr_Steam_UnlockAchievement(steam_ach_Level_99);
}