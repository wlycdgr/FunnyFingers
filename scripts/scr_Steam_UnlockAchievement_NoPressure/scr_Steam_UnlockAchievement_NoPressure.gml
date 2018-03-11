with (global.game_settings) {
	if (difficulty < steam_ach_No_Pressure_minimum_difficulty_requirement) return;
}

with (global.steam) {
	var ach_api_name = ach_api_names[steam_ach_No_Pressure];
	
	if (ds_map_find_value(unlocked, ach_api_name)) return;

	steam_set_achievement(ach_api_name);
	
	ds_map_replace(unlocked, ach_api_name, true);
}