/// @description Init
event_inherited();

current_high_score = 1.0 * scr_ASI_GetStatInt("stat_easy_high_score");
	
unlocked_high = scr_ASI_IsAchievementUnlocked(ach_The_Qualifier);
unlocked_mid = scr_ASI_IsAchievementUnlocked(ach_The_Lucky_Loser);
unlocked_low = scr_ASI_IsAchievementUnlocked(ach_The_Challenger);

high_score_tweened = false;