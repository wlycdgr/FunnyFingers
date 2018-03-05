/// @description Upload score

if (
	global.scoreboard.current_score > 
	global.scoreboard.current_high_score
) {
	high_score_upload_id = steam_upload_score(
		global.game_settings.steam_high_scores_leaderboard,
		global.scoreboard.current_score
	);
	
	global.scoreboard.current_high_score = global.scoreboard.current_score;
}