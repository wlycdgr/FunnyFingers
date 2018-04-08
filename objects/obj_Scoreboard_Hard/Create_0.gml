/// @description Init
event_inherited();

current_high_score = steam_get_stat_int("stat_hard_high_score");

combo_broken = false;
attempted_no_pressure_unlock = false;

unlocked_high = scr_Steam_IsAchievementUnlocked(ach_The_Champion);
unlocked_mid = scr_Steam_IsAchievementUnlocked(ach_The_Contender);
unlocked_low = scr_Steam_IsAchievementUnlocked(ach_The_Pro);

	