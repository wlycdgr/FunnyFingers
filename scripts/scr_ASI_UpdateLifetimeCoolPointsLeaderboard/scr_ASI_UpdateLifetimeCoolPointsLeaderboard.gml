/// @function scr_ASI_UpdateLifetimeCoolPointsLeaderboard(value_to_add)

if (store_version_steam == global.store_version) {
	var old_value = steam_get_stat_int("stat_lifetime_cool_points");
	
	var new_lifetime_cool_points_value = old_value + argument0;
	
	steam_set_stat_int(
		"stat_lifetime_cool_points",
		new_lifetime_cool_points_value
	);
	
	steam_upload_score(
		steam_leaderboard_cool,
		new_lifetime_cool_points_value
	);
	
	return new_lifetime_cool_points_value;
}

else if (store_version_itch == global.store_version) {
	var old_value = ds_map_find_value(global.itch.high_scores, "stat_lifetime_cool_points");
	
	var new_lifetime_cool_points_value = old_value + argument0;
	
	ds_map_replace(
		global.itch.high_scores, 
		"stat_lifetime_cool_points", 
		new_lifetime_cool_points_value
	);
	
	scr_Itch_SaveHighScores();
	
	return new_lifetime_cool_points_value;
}