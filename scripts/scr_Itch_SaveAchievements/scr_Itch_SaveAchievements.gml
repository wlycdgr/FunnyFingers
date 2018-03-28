/// @function scr_Itch_SaveAchievements
with (global.itch) {
	var ach_unlocked_bool = false;
	var ach_unlocked_real = 0;
	
	var achievements_ini_file = ini_open("achievements.ini");
	
	for (var i = 0; i < ach_count; i++) {
		ach_unlocked_bool = ds_map_find_value(
			unlocked,
			ach_api_names[i]
		);
		
		if (ach_unlocked_bool) {
			ach_unlocked_real = ach_unlock_keys[i];
		}
		else {
			ach_unlocked_real = 0;
		}
		
		ini_write_real(
			"achievements", 
			ach_api_names[i],
			ach_unlocked_real
		);
	}
	
	ini_close();
}