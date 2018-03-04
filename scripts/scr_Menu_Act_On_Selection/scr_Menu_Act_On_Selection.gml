/// @param {integer} menu_id The id of the menu
switch(argument0.labels[argument0.index]) {

// difficulty menu
case "Cool":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_cool;
		column_count = column_count_cool;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Easy":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_easy;
		column_count = column_count_easy;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Medium":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_medium;
		column_count = column_count_medium;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Hard":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_hard;
		column_count = column_count_hard;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Difficult":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_difficult;
		column_count = column_count_difficult;
	}
	scr_Fade_To(r_Gameplay);
	break;
case "Back To Main Menu":
	with (global.main_menu_controller) {
		difficulty_menu.active = false;
		main_menu.active = true;
	}
	break;
	
// other menus
case "Achievements":
	scr_Fade_To(r_Achievements);
	break;
case "Cashout!":
	with (global.game) { event_user(5); }
	break;
case "Continue":
	with (global.game) { event_user(2); }
	break;
case "Exit":
	game_end();
	break;
case "Exit To Title":
	with (global.game) { event_user(4); }
	break;
case "High Scores":
	scr_Fade_To(r_High_Scores);
	break;
case "Play":
	with (global.main_menu_controller) {
		main_menu.active = false;
		difficulty_menu.active = true;
	}
	break;
case "Title":
	scr_Fade_To(r_MainMenu);
	break;
case "Try Again":
	with (global.game) { event_user(3); }
	break;
}