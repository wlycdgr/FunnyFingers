/// @function scr_ASI_PossiblyUnlockNoPressure(scoreboard_id)
with (argument0) {
	if (
		points >= ach_No_Pressure_points_target &&
		!attempted_no_pressure_unlock &&
		!combo_broken
	) {
		scr_Steam_UnlockAchievement(ach_No_Pressure);
		
		attempted_no_pressure_unlock = true;
	}
}