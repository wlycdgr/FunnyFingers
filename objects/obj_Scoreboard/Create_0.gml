/// @description Init
points = 0;
frames = 0;

target_points = 0;

current_rank = 0;
current_high_score = 0;
current_lowest_frame_count = 0;

capped = 
	game_difficulty_easy == global.game_settings.difficulty ||
	game_difficulty_medium == global.game_settings.difficulty ||
	game_difficulty_hard == global.game_settings.difficulty;
	
cap = steam_leaderboard_score_cap_easy;
if (game_difficulty_medium == global.game_settings.difficulty) {
	cap = steam_leaderboard_score_cap_medium;
}
else if (game_difficulty_hard == global.game_settings.difficulty) {
	cap = steam_leaderboard_score_cap_hard;
}