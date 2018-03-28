/// @function scr_Itch_ToggleAchievement(ach_api_name)

with (global.itch) {
	var current_unlock_value = ds_map_find_value(unlocked, argument0);
	
	ds_map_replace(
		unlocked,
		argument0,
		!current_unlock_value
	);

	scr_Itch_SaveAchievements();
}