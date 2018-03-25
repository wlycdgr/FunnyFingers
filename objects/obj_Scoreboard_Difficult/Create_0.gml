/// @description Init
event_inherited();

current_high_score = 1.0 * steam_get_stat_int("stat_difficult_high_score");

combo_broken = false;
attempted_no_pressure_unlock = false;

unlocked_high = ds_map_find_value(global.steam.unlocked, steam_ach_Fignermukcre);
unlocked_mid = ds_map_find_value(global.steam.unlocked, steam_ach_The_Living_Legend);
unlocked_low = ds_map_find_value(global.steam.unlocked, steam_ach_The_Hall_Of_Famer);
	