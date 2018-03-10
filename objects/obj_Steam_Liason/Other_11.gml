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
	
//	// check reqs for
//	// THE SCORE IS RIGHT
//	// and pop if met
//	if (!unlocked[steam_ach_The_Score_Is_Right]) {
//		if (
//			global.scoreboard.current_score ==
//			global.scoreboard.current_high_score + 1
//		) {
//			steam_set_achievement("ach_8_the_score_is_right");
//			unlocked[steam_ach_The_Score_Is_Right] = true;
//		}
//	}
	
//	//  UPDATE CURRENT HIGH SCORE
//	global.scoreboard.current_high_score = global.scoreboard.current_score;
	
//	// check reqs for
//	// THE DABBLER
//	// and pop if meet
//	if (!unlocked[steam_ach_The_Dabbler]) {
//		if (
//			(
//				steam_leaderboard_easy == 
//				global.game_settings.steam_leaderboard // we are on EASY
//			) && // AND
//			(
//				global.scoreboard.current_high_score >= // new high socre is OVER DABBLER THRESHOLD
//				steam_ach_The_Dabbler_unlock_score
//			)
//		) { 
//			steam_set_achievement("ach_1_the_dabbler");
//			unlocked[steam_ach_The_Dabbler] = true;
//		}
//	}
	
//	// check reqs for
//	// THE QUALIFIER
//	// and pop if meet
//	if (!unlocked[steam_ach_The_Qualifier]) {
//		if (
//			(
//				steam_leaderboard_medium == 
//				global.game_settings.steam_leaderboard // we are on MEDIUM
//			) && // AND
//			(
//				global.scoreboard.current_high_score >= // new high score is OVER QUALIFIER THRESHOLD
//				steam_ach_The_Qualifier_unlock_score
//			)
//		) { 
//			steam_set_achievement("ach_2_the_qualifier");
//			unlocked[steam_ach_The_Qualifier] = true;
//		}
//	}
	
//	// check reqs for
//	// THE UP AND COMER
//	// and pop if meet
//	if (!unlocked[steam_ach_The_Up_And_Comer]) {
//		if (
//			(
//				steam_leaderboard_hard == 
//				global.game_settings.steam_leaderboard // we are on HARD
//			) && // AND
//			(
//				global.scoreboard.current_high_score >= // new high score is OVER UP AND COMER THRESHOLD
//				steam_ach_The_Up_And_Comer_unlock_score
//			)
//		) { 
//			steam_set_achievement("ach_3_the_up_and_comer");
//			unlocked[steam_ach_The_Up_And_Comer] = true;
//		}
//	}
	
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