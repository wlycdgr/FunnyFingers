/// @function scr_Scoreboard_No_Pressure_Check(scoreboard_id)

with (argument0) {
	if (
		points >= steam_ach_No_Pressure_points_target &&
		!attempted_no_pressure_unlock &&
		!combo_broken
	) {
		scr_Steam_UnlockAchievement(steam_ach_No_Pressure);
		
		attempted_no_pressure_unlock = true;
	}
}