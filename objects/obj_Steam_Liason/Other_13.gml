/// @description On hit mid points target
/// @description Upload score as appropriate, pop score achievements
switch(global.game_settings.difficulty) {
case game_difficulty_easy:
	scr_Steam_UnlockAchievement(steam_ach_The_Lucky_Loser);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_easy_frames_mid", 
		steam_leaderboard_easy_frames_mid
	);

	break;
	
case game_difficulty_medium:
	scr_Steam_UnlockAchievement(steam_ach_The_Up_And_Comer);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_medium_frames_mid",
		steam_leaderboard_medium_frames_mid
	);
	
	break;

case game_difficulty_hard:
	scr_Steam_UnlockAchievement(steam_ach_The_Contender);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_hard_frames_mid",
		steam_leaderboard_hard_frames_mid
	);
	
	break;
	
case game_difficulty_difficult:
	scr_Steam_UnlockAchievement(steam_ach_The_Living_Legend);
	scr_Steam_UpdateFramesLeaderboard(
		"stat_difficult_frames_mid",
		steam_leaderboard_difficult_frames_mid
	);
	
	break;

default:
	break;
}