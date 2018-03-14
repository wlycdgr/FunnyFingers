/// @function scr_Steam_UpdateFramesLeaderboard(stat_name, leaderboard_name)
with (global.steam) {
	var current_best_frames = steam_get_stat_int(argument0);

	if (global.scoreboard.frames < current_best_frames) {
		steam_set_stat_int(
			argument0,
			global.scoreboard.frames
		);
	
		steam_upload_score(
			argument1,
			global.scoreboard.frames
		);
	}
}