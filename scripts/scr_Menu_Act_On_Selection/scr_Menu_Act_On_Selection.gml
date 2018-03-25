/// @param {integer} menu_id The id of the menu

var selection_label = argument0.labels[argument0.index];

argument0.index = 0;

switch(selection_label) {

// difficulty menu
case "COOL":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_cool;
		column_count = column_count_cool;
		//steam_leaderboard = steam_leaderboard_cool;
		difficulty = game_difficulty_cool;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;
	
case "EASY":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_easy;
		column_count = column_count_easy;
		//steam_leaderboard = steam_leaderboard_easy;
		difficulty = game_difficulty_easy;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;
	
case "MEDIUM":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_medium;
		column_count = column_count_medium;
		//steam_leaderboard = steam_leaderboard_medium;
		difficulty = game_difficulty_medium;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;
	
case "HARD":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_hard;
		column_count = column_count_hard;
		//steam_leaderboard = steam_leaderboard_hard;
		difficulty = game_difficulty_hard;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
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
		//steam_leaderboard = steam_leaderboard_difficult;
		difficulty = game_difficulty_difficult;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;

case "BACK":
	with (global.main_menu_controller) {
		main_menu.active = true;
		difficulty_menu.active = false;
	}
	
	break;
	
// other menus
case "CONTINUE":
	with (global.game) { event_user(2); }
	break;
case "CREDITS":
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Credits;
	
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
	with (global.main_menu_controller) {
		main_menu.active = false;
		difficulty_menu.active = true;
	}
	break;
case "PLAY AGAIN":
	with (global.game) { event_user(3); }
	break;
}