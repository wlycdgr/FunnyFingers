with (global.game_settings) {
	if (difficulty < steam_ach_No_Pressure_minimum_difficulty_requirement) return;
}

with (global.steam) {
	if (unlocked[steam_ach_No_Pressure]) return;

	steam_set_achievement("ach_7_no_pressure");
	unlocked[steam_ach_No_Pressure] = true;
}