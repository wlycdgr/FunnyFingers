/// @description Init
event_inherited();

current_high_score = 1.0 * steam_get_stat_int("stat_easy_high_score");
	
unlocked_high = ds_map_find_value(global.steam.unlocked, steam_ach_The_Qualifier);
unlocked_mid = ds_map_find_value(global.steam.unlocked, steam_ach_The_Lucky_Loser);
unlocked_low = ds_map_find_value(global.steam.unlocked, steam_ach_The_Challenger);