/// @description Upload high score

switch(global.game_settings.difficulty) {
case game_difficulty_cool:
	var new_lifetime_points =
		steam_get_stat_int("stat_lifetime_cool_points") + 
		global.scoreboard.current_score;
		
	steam_set_stat_int(
		"stat_lifetime_cool_points",
		new_lifetime_points
	);
	
	steam_upload_score(
		global.game_settings.steam_leaderboard,
		new_lifetime_points
	);
	
	break;
	
case game_difficulty_easy:
	scr_Steam_UpdateHighScoreLeaderboard(
		"stat_easy_high_score",
		steam_leaderboard_easy_high_scores
	);
	
	break;
	
case game_difficulty_medium:
	scr_Steam_UpdateHighScoreLeaderboard(
		"stat_medium_high_score",
		steam_leaderboard_medium_high_scores
	);

	break;
	
case game_difficulty_hard:
	scr_Steam_UpdateHighScoreLeaderboard(
		"stat_hard_high_score",
		steam_leaderboard_hard_high_scores
	);

	break;

case game_difficulty_difficult:
	scr_Steam_UpdateHighScoreLeaderboard(
		"stat_difficult_high_score",
		steam_leaderboard_difficult_high_scores
	);

	break;

default:
	break;
}