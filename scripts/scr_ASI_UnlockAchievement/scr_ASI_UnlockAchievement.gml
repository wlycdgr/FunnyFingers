/// @function scr_ASI_UnlockAchievement(ach_name_macro)

if (store_version_steam == global.store_version) {
	scr_Steam_UnlockAchievement(argument0);
}

else if (store_version_itch == global.store_version) {
	scr_Itch_UnlockAchievement(argument0);
}