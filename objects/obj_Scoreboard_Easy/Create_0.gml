/// @description Init
event_inherited();

current_high_score = steam_get_stat_int("stat_easy_high_score");
	
unlocked_high = scr_Steam_IsAchievementUnlocked(ach_The_Qualifier);
unlocked_mid = scr_Steam_IsAchievementUnlocked(ach_The_Lucky_Loser);
unlocked_low = scr_Steam_IsAchievementUnlocked(ach_The_Challenger);

high_score_tweened = false;