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
	
	if (
		steam_high_scores_leaderboard_easy == global.game_settings.steam_high_scores_leaderboard &&
		global.scoreboard.current_high_score >= steam_ach_The_Dabbler_min_unlock_score
	) { 
		steam_set_achievement("ach_1_the_dabbler");
		unlocked[steam_ach_The_Dabbler] = true;
	}
}