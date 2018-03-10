/// @function scr_Steam_UpdateFramesStatAndLeaderboard(stat_name)

if (global.scoreboard.points >= global.scoreboard.cap) {
	var current_best_frames = 
		steam_get_stat_int(argument0);
			
	if (
		-1 == current_best_frames || // no frames leaderboard entry yet
		global.scoreboard.frames < current_best_frames
	) {
		steam_set_stat_int(
			argument0,
			global.scoreboard.frames
		);
			
		steam_upload_score(
			global.game_settings.steam_leaderboard,
			global.scoreboard.frames
		);
	}
}