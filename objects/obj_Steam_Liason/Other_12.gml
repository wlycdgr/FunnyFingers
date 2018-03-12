/// @description On hit high points target
/// @description Upload score as appropriate, pop score achievements

switch(global.game_settings.difficulty) {
case game_difficulty_easy:
	scr_Steam_UnlockAchievement(steam_ach_The_Qualifier);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_easy_frames_high", 
		steam_leaderboard_easy_frames_high
	);

	break;
	
case game_difficulty_medium:
	scr_Steam_UnlockAchievement(steam_ach_The_Breakout_Performer);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_medium_frames_high",
		steam_leaderboard_medium_frames_high
	);
	
	break;

case game_difficulty_hard:
	scr_Steam_UnlockAchievement(steam_ach_The_Champion);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_hard_frames_high",
		steam_leaderboard_hard_frames_high
	);
	
	break;
	
case game_difficulty_difficult:
	scr_Steam_UnlockAchievement(steam_ach_Fignermukcre);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_difficult_frames_high",
		steam_leaderboard_difficult_frames_high
	);
	
	break;

default:
	break;
}