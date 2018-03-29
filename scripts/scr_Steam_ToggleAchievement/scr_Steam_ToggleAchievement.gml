/// @function scr_Steam_ToggleAchievement(ach_index_macro);
with (global.steam) {
	var this_ach_api_name = ach_api_names[argument0];
	
	if (steam_get_achievement(this_ach_api_name)) {
		steam_clear_achievement(this_ach_api_name);
	}
	else {
		steam_set_achievement(this_ach_api_name);
	}

	ds_map_replace(unlocked, this_ach_api_name, steam_get_achievement(this_ach_api_name));
}