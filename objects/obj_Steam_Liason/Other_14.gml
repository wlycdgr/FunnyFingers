/// @description On hit low points target
/// @description Upload score as appropriate, pop score achievements
switch(global.game_settings.difficulty) {
case game_difficulty_easy:
	scr_Steam_UnlockAchievement(steam_ach_The_Challenger);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_easy_frames_low", 
		steam_leaderboard_easy_frames_low
	);

	break;
	
case game_difficulty_medium:
	scr_Steam_UnlockAchievement(steam_ach_The_Wildcard);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_medium_frames_low",
		steam_leaderboard_medium_frames_low
	);
	
	break;

case game_difficulty_hard:
	scr_Steam_UnlockAchievement(steam_ach_The_Pro);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_hard_frames_low",
		steam_leaderboard_hard_frames_low
	);
	
	break;
	
case game_difficulty_difficult:
	scr_Steam_UnlockAchievement(steam_ach_The_Hall_Of_Famer);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_difficult_frames_low",
		steam_leaderboard_difficult_frames_low
	);
	
	break;

default:
	break;
}
