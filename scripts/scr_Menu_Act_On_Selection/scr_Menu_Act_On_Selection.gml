/// @param {integer} menu_id The id of the menu
switch(argument0.labels[argument0.index]) {

// difficulty menu
case "Cool":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_cool;
		column_count = column_count_cool;
		steam_high_scores_leaderboard = steam_high_scores_leaderboard_cool;
		difficulty = game_difficulty_cool;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Easy":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_easy;
		column_count = column_count_easy;
		steam_high_scores_leaderboard = steam_high_scores_leaderboard_easy;
		difficulty = game_difficulty_easy;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Medium":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_medium;
		column_count = column_count_medium;
		steam_high_scores_leaderboard = steam_high_scores_leaderboard_medium;
		difficulty = game_difficulty_medium;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Hard":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_hard;
		column_count = column_count_hard;
		steam_high_scores_leaderboard = steam_high_scores_leaderboard_hard;
		difficulty = game_difficulty_hard;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "??????":
case "????":
case "?????????":
	argument0.active = true;
	break;
case "Difficult":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_difficult;
		column_count = column_count_difficult;
		steam_high_scores_leaderboard = steam_high_scores_leaderboard_difficult;
		difficulty = game_difficulty_difficult;
	}
	scr_Fade_To(r_Gameplay);
	break;
	
// other menus
case "Continue":
	with (global.game) { event_user(2); }
	break;
case "Exit":
	game_end();
	break;
case "Main Menu":
	if (room == r_Gameplay) {
		with (global.game) { event_user(4); }
	}
	else {
		scr_Fade_To(r_MainMenu);
	}
	break;
case "Play":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_easy;
		column_count = column_count_easy;
		steam_high_scores_leaderboard = steam_high_scores_leaderboard_easy;
		difficulty = game_difficulty_easy;
	}
	scr_Fade_To(r_Gameplay);
	break;
	
	/*
	with (global.main_menu_controller) {
		main_menu.active = false;
		difficulty_menu.active = true;
	}
	break;
	*/
case "Try Again":
	with (global.game) { event_user(3); }
	break;
}