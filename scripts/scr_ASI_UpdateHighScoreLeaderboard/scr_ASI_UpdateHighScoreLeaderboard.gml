/// @function scr_ASI_UpdateHighScoreLeaderboard(stat_name);

if (store_version_steam == global.store_version) {
	var leaderboard_id = 0;
	switch(argument0){
	case "stat_easy_high_score":
		leaderboard_id = steam_leaderboard_easy_high_scores;
		break;
		
	case "stat_medium_high_score":
		leaderboard_id = steam_leaderboard_medium_high_scores;
		break;
		
	case "stat_hard_high_score":
		leaderboard_id = steam_leaderboard_hard_high_scores;
		break;
		
	case "stat_difficult_high_score":
		leaderboard_id = steam_leaderboard_difficult_high_scores;
		break;
		
	default:
		// better than a crash, I guess.....
		leaderboard_id = steam_leaderboard_easy_high_scores;
		break;
	}
	
	scr_Steam_UpdateHighScoreLeaderboard(argument0, leaderboard_id);
}

else if (store_version_itch == global.store_version) {
	var current_high_score = ds_map_find_value(
		global.itch.high_scores,
		argument0
	);
	
	if (global.scoreboard.points > current_high_score) {
		ds_map_replace(
			global.itch.high_scores,
			argument0,
			current_high_score
		);
	}
	
	scr_Itch_SaveHighScores();
}