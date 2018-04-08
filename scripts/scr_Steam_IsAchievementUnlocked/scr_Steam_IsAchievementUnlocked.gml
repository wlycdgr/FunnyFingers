/// @function scr_Steam_IsAchievementUnlocked(ach_name_macro);
return ds_map_find_value(
	global.steam.unlocked,
	global.steam.ach_api_names[argument0]
);
