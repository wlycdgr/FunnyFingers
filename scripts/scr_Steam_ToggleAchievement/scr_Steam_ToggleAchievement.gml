/// @param {String} steam_achievement_api_name The Steam api name of the achievement to toggle
with (global.steam) {
	if (steam_get_achievement(argument0)) {
		steam_clear_achievement(argument0);
	}
	else {
		steam_set_achievement(argument0);
	}

	ds_map_replace(unlocked, argument0, steam_get_achievement(argument0));
}