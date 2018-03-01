/// @param {String} steam_achievement_api_name The Steam api name of the achievement to toggle
if (steam_get_achievement(argument0)) {
	steam_clear_achievement(argument0);
}
else {
	steam_set_achievement(argument0);
}

ds_map_set(achievement_states, argument0, steam_get_achievement(argument0));