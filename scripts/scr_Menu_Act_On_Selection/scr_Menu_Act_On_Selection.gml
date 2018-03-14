/// @param {integer} menu_id The id of the menu

var selection_label = argument0.labels[argument0.index];

argument0.index = 0;

switch(selection_label) {

// difficulty menu
case "COOL":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_cool;
		column_count = column_count_cool;
		steam_leaderboard = steam_leaderboard_cool;
		difficulty = game_difficulty_cool;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "EASY":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_easy;
		column_count = column_count_easy;
		steam_leaderboard = steam_leaderboard_easy;
		difficulty = game_difficulty_easy;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "MEDIUM":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_medium;
		column_count = column_count_medium;
		steam_leaderboard = steam_leaderboard_medium;
		difficulty = game_difficulty_medium;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "HARD":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_hard;
		column_count = column_count_hard;
		steam_leaderboard = steam_leaderboard_hard;
		difficulty = game_difficulty_hard;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "??????":
case "????":
case "?????????":
	argument0.active = true;
	break;
case "DIFFICULT":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_difficult;
		column_count = column_count_difficult;
		steam_leaderboard = steam_leaderboard_difficult;
		difficulty = game_difficulty_difficult;
	}
	scr_Fade_To(r_Gameplay);
	break;
	
// other menus
case "CONTINUE":
	with (global.game) { event_user(2); }
	break;
case "EXIT":
	game_end();
	break;
case "MAIN MENU":
	if (room == r_Gameplay) {
		with (global.game) { event_user(4); }
	}
	else {
		scr_Fade_To(r_MainMenu);
	}
	break;
case "PLAY":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_easy;
		column_count = column_count_easy;
		steam_leaderboard = steam_leaderboard_easy;
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
case "TRY AGAIN":
	with (global.game) { event_user(3); }
	break;
}