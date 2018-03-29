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
	with (global.itch) { 
		var current_high_score = ds_map_find_value(stats, argument0);
	
		if (global.scoreboard.points > current_high_score) {
			ds_map_replace(stats, argument0, global.scoreboard.points);
			ds_map_replace(has_stat_been_updated_since_last_save, argument0, true);
			scr_Itch_SaveHighScores();
		}
	}
}