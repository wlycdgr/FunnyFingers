/// @function scr_Ithc_UnlockAchievement(ach_index)
with (global.itch) {
	var ach_api_name = ach_api_names[argument0];
	
	var is_already_unlocked = ds_map_find_value(
		unlocked,
		ach_api_name
	);
	
	if (!is_already_unlocked) {
		ds_map_replace(
			unlocked,
			ach_api_name,
			true
		);
		
		scr_Itch_SaveAchievements();
		
		scr_AchievementUnlockPopup_NEW(ach_names[argument0]);
	}
}