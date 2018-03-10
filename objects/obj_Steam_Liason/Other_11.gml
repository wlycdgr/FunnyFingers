/// @description Upload score as appropriate, pop score achievements

switch(global.game_settings.difficulty) {
case game_difficulty_cool:
	var previous_lifetime_points = 
		steam_get_stat_int("stat_lifetime_cool_points");
	var new_lifetime_points =
		previous_lifetime_points +
		global.scoreboard.current_score;
	steam_set_stat_int(
		"stat_lifetime_cool_points",
		new_lifetime_points
	);
	
	steam_upload_score(
		global.game_settings.steam_leaderboard,
		new_lifetime_points
	);
	break;
	
case game_difficulty_easy:
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Dabbler,
		steam_ach_The_Dabbler_unlock_score
	);
	
	scr_Steam_UpdateFramesStatAndLeaderboard("stat_easy_frames");
	
	break;
	
case game_difficulty_medium:
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Qualifier,
		steam_ach_The_Qualifier_unlock_score
	);

	scr_Steam_UpdateFramesStatAndLeaderboard("stat_medium_frames");

	break;
	
case game_difficulty_hard:
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Up_And_Comer,
		steam_ach_The_Up_And_Comer_unlock_score
	);

	scr_Steam_UpdateFramesStatAndLeaderboard("stat_hard_frames");
	
	break;
	
default:
	break;
}





//if (
//	global.scoreboard.current_score > 
//	global.scoreboard.current_high_score
//) {
//	high_score_upload_id = steam_upload_score(
//		global.game_settings.steam_leaderboard,
//		global.scoreboard.current_score
//	);

	
//	//  UPDATE CURRENT HIGH SCORE
//	global.scoreboard.current_high_score = global.scoreboard.current_score;
	
	
//	// check reqs for
//	// FIGNERMUKCRE
//	// and pop if meet
//	if (!unlocked[steam_ach_Fignermukcre]) {
//		if (
//			(
//				steam_leaderboard_difficult == 
//				global.game_settings.steam_leaderboard // we are on DIFFICULT
//			) && // AND
//			(
//				global.scoreboard.current_high_score >= // new high score is OVER FIGNERMUKCRE THRESHOLD
//				steam_ach_Fignermukcre_unlock_score
//			)
//		) { 
//			steam_set_achievement("ach_4_fignermukcre");
//			unlocked[steam_ach_Fignermukcre] = true;
//		}
//	}
//}