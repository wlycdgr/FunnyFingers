/// @function scr_Itch_ToggleAchievement(ach_index_macro)

with (global.itch) {
	var this_ach_api_name = ach_api_names[argument0];
	
	var is_currently_unlocked = ds_map_find_value(unlocked, this_ach_api_name);
	
	if (!is_currently_unlocked) {
		scr_AchievementUnlockPopup_NEW(ach_names[argument0]);
	}
	
	ds_map_replace(
		unlocked,
		this_ach_api_name,
		!is_currently_unlocked
	);

	scr_Itch_SaveAchievements();
}