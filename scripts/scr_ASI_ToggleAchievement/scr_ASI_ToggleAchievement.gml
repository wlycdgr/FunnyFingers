/// @function scr_ASI_Toggle_Achievement(ach_api_name);

if (store_version_steam == global.store_version) {
	scr_Steam_ToggleAchievement(argument0);
}

else if (store_version_itch == global.store_version) {
	scr_Itch_ToggleAchievement(argument0);
}