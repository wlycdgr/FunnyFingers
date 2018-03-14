/// @function scr_Steam_UpdateHighScoreLeaderboard(stat_name, leaderboard_name)
with (global.steam) {
	var current_high_score = steam_get_stat_int(argument0);

	if (global.scoreboard.points > current_high_score) {
		steam_set_stat_int(
			argument0,
			global.scoreboard.points
		);
	
		steam_upload_score(
			argument1,
			global.scoreboard.points
		);
	}
}