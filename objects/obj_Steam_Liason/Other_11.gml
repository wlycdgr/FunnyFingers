/// @description Upload score, pop score achievements

if (
	global.scoreboard.current_score > 
	global.scoreboard.current_high_score
) {
	high_score_upload_id = steam_upload_score(
		global.game_settings.steam_high_scores_leaderboard,
		global.scoreboard.current_score
	);
	
	global.scoreboard.current_high_score = global.scoreboard.current_score;
	
	// check reqs for
	// THE DABBLER
	// and pop if meet
	if (
		(
			steam_high_scores_leaderboard_easy == 
			global.game_settings.steam_high_scores_leaderboard // we are on EASY
		) && // AND
		(
			global.scoreboard.current_high_score >= // new high socre is OVER DABBLER THRESHOLD
			steam_ach_The_Dabbler_unlock_score
		)
	) { 
		steam_set_achievement("ach_1_the_dabbler");
		unlocked[steam_ach_The_Dabbler] = true;
	}
	
	// check reqs for
	// THE QUALIFIER
	// and pop if meet
	else if (
		(
			steam_high_scores_leaderboard_medium == 
			global.game_settings.steam_high_scores_leaderboard // we are on MEDIUM
		) && // AND
		(
			global.scoreboard.current_high_score >= // new high score is OVER QUALIFIER THRESHOLD
			steam_ach_The_Qualifier_unlock_score
		)
	) { 
		steam_set_achievement("ach_2_the_qualifier");
		unlocked[steam_ach_The_Qualifier] = true;
	}
	
	// check reqs for
	// THE UP AND COMER
	// and pop if meet
	else if (
		(
			steam_high_scores_leaderboard_hard == 
			global.game_settings.steam_high_scores_leaderboard // we are on HARD
		) && // AND
		(
			global.scoreboard.current_high_score >= // new high score is OVER UP AND COMER THRESHOLD
			steam_ach_The_Up_And_Comer_unlock_score
		)
	) { 
		steam_set_achievement("ach_3_the_up_and_comer");
		unlocked[steam_ach_The_Up_And_Comer] = true;
	}
	
	// check reqs for
	// FIGNERMUKCRE
	// and pop if meet
	else if (
		(
			steam_high_scores_leaderboard_difficult == 
			global.game_settings.steam_high_scores_leaderboard // we are on DIFFICULT
		) && // AND
		(
			global.scoreboard.current_high_score >= // new high score is OVER FIGNERMUKCRE THRESHOLD
			steam_ach_Fignermukcre_unlock_score
		)
	) { 
		steam_set_achievement("ach_4_fignermukcre");
		unlocked[steam_ach_Fignermuckre] = true;
	}
}