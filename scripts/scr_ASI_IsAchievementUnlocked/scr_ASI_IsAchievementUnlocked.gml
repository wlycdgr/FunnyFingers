/// @function scr_ASI_IsAchievementUnlocked(ach_name_macro);

if (store_version_steam == global.store_version) {
	return ds_map_find_value(
		global.steam.unlocked,
		global.steam.ach_api_names[argument0]
	);
}

else if (store_version_itch == global.store_version) {
	return ds_map_find_value(
		global.itch.unlocked,
		global.itch.ach_api_names[argument0]
	);
}