/// @function scr_get_stat_int(stat_name)

if (store_version_steam == global.store_version) {
	return steam_get_stat_int(argument0);
}
else if (store_version_itch == global.store_version) {
	return ds_map_find_value(global.itch.stats, argument0);
}