/// @function scr_Set_Stat_Int(stat_name, stat_value);

if (store_version_steam == global.store_version) {
	steam_set_stat_int(
		argument0,
		argument1
	);
}

else if (store_version_itch == global.store_version) {
	ds_map_replace(global.itch.stats, argument0, argument1);
}