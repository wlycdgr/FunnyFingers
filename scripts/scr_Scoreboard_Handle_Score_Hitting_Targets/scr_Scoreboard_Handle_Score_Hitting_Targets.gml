/// @function scr_Scoreboard_Handle_Score_Hitting_Targets(scoreboard, ach_stat_and_leaderboard_info_array);

// Sample call:
/*
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			ach_The_Challenger,
			ach_The_Lucky_Loser,
			ach_The_Qualifier
		]
	);
*/
with (argument0) {
	if (
		points >= ach_unlock_score_high &&
		!unlocked_high
	) {
		scr_Steam_UnlockAchievement(argument1[2]);
		unlocked_high = true;
	}
	
	else if (
		points >= ach_unlock_score_mid &&
		!unlocked_mid
	) {
		scr_Steam_UnlockAchievement(argument1[1]);
		unlocked_mid = true;
	}
	
	else if (
		points >= ach_unlock_score_low &&
		!unlocked_low
	) {
		scr_Steam_UnlockAchievement(argument1[0]);
		unlocked_low = true;
	}
}