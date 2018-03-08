/// @description Increment multiplier & unlock No Pressure if appropriate
multiplier = min(mb_max_multiplier, multiplier + 1);

if (multiplier >= steam_ach_No_Pressure_multiplier_value_requirement) {
	scr_Steam_UnlockAchievement_NoPressure();
}
	