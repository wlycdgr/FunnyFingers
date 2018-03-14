/// @function scr_UnlockAchievement(ach_index)
with (global.steam) { 
	var ach_api_name = ach_api_names[argument0];

	if (!ds_map_find_value(unlocked, ach_api_name)) {
		steam_set_achievement(ach_api_name);
	
		ds_map_replace(unlocked, ach_api_name, true);
	}
}