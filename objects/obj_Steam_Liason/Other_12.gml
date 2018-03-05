/// @description Load current high score
user_high_score_get_id = steam_download_scores_around_user(
	global.game_settings.steam_high_scores_leaderboard,
	0, 0
);