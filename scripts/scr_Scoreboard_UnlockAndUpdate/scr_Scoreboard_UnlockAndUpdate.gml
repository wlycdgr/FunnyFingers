/// @funcetion scr_Scoreboard_UnlockAndUpdate(ach_stat_and_leaderboard_names_array);
var steam_info = argument0;
scr_Steam_UnlockAchievement(steam_info[0]);
scr_Steam_UpdateFramesLeaderboard(steam_info[1], steam_info[2]);