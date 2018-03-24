/// @description Init
event_inherited();

combo_broken = false;
attempted_no_pressure_unlock = false;

unlocked_high = ds_map_find_value(global.steam.unlocked, steam_ach_Fignermukcre);
unlocked_mid = ds_map_find_value(global.steam.unlocked, steam_ach_The_Living_Legend);
unlocked_low = ds_map_find_value(global.steam.unlocked, steam_ach_The_Hall_Of_Famer);
	