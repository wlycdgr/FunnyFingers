/// @description Init
event_inherited();

frames = 0;

combo_broken = false;
attempted_no_pressure_unlock = false;

unlocked_high = ds_map_find_value(global.steam.unlocked, steam_ach_The_Breakout_Performer);
unlocked_mid = ds_map_find_value(global.steam.unlocked, steam_ach_The_Up_And_Comer);
unlocked_low = ds_map_find_value(global.steam.unlocked, steam_ach_The_Wildcard);