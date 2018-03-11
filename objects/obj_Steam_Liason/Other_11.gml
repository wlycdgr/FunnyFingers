/// @description Upload score as appropriate, pop score achievements

switch(global.game_settings.difficulty) {
case game_difficulty_cool:
	var new_lifetime_points =
		steam_get_stat_int("stat_lifetime_cool_points") + 
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
		steam_ach_The_Challenger,
		steam_ach_unlock_score_low
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Lucky_Loser,
		steam_ach_unlock_score_med
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Qualifier,
		steam_ach_unlock_score_high
	);
	
	scr_Steam_UpdateFramesStatAndLeaderboard("stat_easy_frames");
	
	break;
	
case game_difficulty_medium:
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Wildcard,
		steam_ach_unlock_score_low
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Up_And_Comer,
		steam_ach_unlock_score_med
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Breakout_Performer,
		steam_ach_unlock_score_high
	);

	scr_Steam_UpdateFramesStatAndLeaderboard("stat_medium_frames");

	break;
	
case game_difficulty_hard:
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Pro,
		steam_ach_unlock_score_low
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Contender,
		steam_ach_unlock_score_med
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Champion,
		steam_ach_unlock_score_high
	);

	scr_Steam_UpdateFramesStatAndLeaderboard("stat_hard_frames");
	
	break;

case game_difficulty_difficult:
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Hall_Of_Famer,
		steam_ach_unlock_score_low
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_The_Living_Legend,
		steam_ach_unlock_score_med
	);
	
	scr_Steam_UnlockIfAppropriate(
		steam_ach_Fignermukcre,
		steam_ach_unlock_score_high
	);
	
	if (global.scoreboard.points > steam_get_stat_int("stat_difficult_high_score")) {
		steam_set_stat_int(
			"stat_difficult_high_score",
			global.scoreboard.points
		);
		
		steam_upload_score(
			global.game_settings.steam_leaderboard,
			global.scoreboard.points
		);
	}
	
	break;

default:
	break;
}