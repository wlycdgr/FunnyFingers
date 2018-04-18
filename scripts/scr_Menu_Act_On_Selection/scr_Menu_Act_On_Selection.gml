/// @param {integer} menu_id The id of the menu

var selection_label = argument0.labels[argument0.index];

reset_menu = false;

switch(selection_label) {

// difficulty menu
case "COOL":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_cool;
		column_count = column_count_cool;
		enemy_maximum_period_in_sec = enemy_maximum_period_in_sec_cool;
		enemy_minimum_period_in_sec = enemy_minimum_period_in_sec_cool;
		energy_maximum_period_in_sec = energy_maximum_period_in_sec_cool;
		energy_minimum_period_in_sec = energy_minimum_period_in_sec_cool;
		energy_value = energy_value_cool;
		move_time = move_time_cool;
		shrink_per_sec = shrink_per_sec_cool;
		
		difficulty = game_difficulty_cool;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;
	
case "EASY":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_easy;
		column_count = column_count_easy;
		enemy_maximum_period_in_sec = enemy_maximum_period_in_sec_easy;
		enemy_minimum_period_in_sec = enemy_minimum_period_in_sec_easy;
		energy_maximum_period_in_sec = energy_maximum_period_in_sec_easy;
		energy_minimum_period_in_sec = energy_minimum_period_in_sec_easy;
		energy_value = energy_value_easy;
		move_time = move_time_easy;
		shrink_per_sec = shrink_per_sec_easy;
		
		difficulty = game_difficulty_easy;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;
	
case "MEDIUM":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_medium;
		column_count = column_count_medium;
		enemy_maximum_period_in_sec = enemy_maximum_period_in_sec_medium;
		enemy_minimum_period_in_sec = enemy_minimum_period_in_sec_medium;
		energy_maximum_period_in_sec = energy_maximum_period_in_sec_medium;
		energy_minimum_period_in_sec = energy_minimum_period_in_sec_medium;
		energy_value = energy_value_medium;
		move_time = move_time_medium;
		shrink_per_sec = shrink_per_sec_medium;
		
		difficulty = game_difficulty_medium;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;
	
case "HARD":
	with (global.game_settings) {
		funny_finger_count = funny_finger_count_hard;
		column_count = column_count_hard;
		enemy_maximum_period_in_sec = enemy_maximum_period_in_sec_hard;
		enemy_minimum_period_in_sec = enemy_minimum_period_in_sec_hard;
		energy_maximum_period_in_sec = energy_maximum_period_in_sec_hard;
		energy_minimum_period_in_sec = energy_minimum_period_in_sec_hard;
		energy_value = energy_value_hard;
		move_time = move_time_hard;
		shrink_per_sec = shrink_per_sec_hard;
		
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
		enemy_maximum_period_in_sec = enemy_maximum_period_in_sec_difficult;
		enemy_minimum_period_in_sec = enemy_minimum_period_in_sec_difficult;
		energy_maximum_period_in_sec = energy_maximum_period_in_sec_difficult;
		energy_minimum_period_in_sec = energy_minimum_period_in_sec_difficult;
		energy_value = energy_value_difficult;
		move_time = move_time_difficult;
		shrink_per_sec = shrink_per_sec_difficult;
		
		difficulty = game_difficulty_difficult;
	}
	
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Gameplay;
	
	break;

case "BACK":
	reset_menu = true;
	
	with (global.main_menu_controller) {
		main_menu.active = true;
		difficulty_menu.active = false;
	}
	
	break;
	
// other menus
case "CONTINUE":
	reset_menu = true;
	
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
	
	break;
	
case "PLAY":
	with (global.main_menu_controller) {
		main_menu.active = false;
		difficulty_menu.active = true;
	}
	break;
	
case "PLAY AGAIN":
	reset_menu = true;
	
	with (global.game) { event_user(3); }
	break;
	
case "TUTORIAL":
	global.room_state_tracker.state = rs_room_change_requested;
	global.room_state_tracker.target_room = r_Tutorial;
	
	break;
}

if (reset_menu) {
	with (argument0) {
		index = 0;

		for (var i = 0; i < item_count; i++){
			label_states[i] = menu_item_state_unselected;
			label_font_weights[i] = menu_item_font_weight_min;
			scr_Splitsfont_Set_Weight(label_strings[i], label_font_weights[i]);
		}
		
		label_states[0] = menu_item_state_selected;
		label_font_weights[0] = menu_item_font_weight_max;
		scr_Splitsfont_Set_Weight(label_strings[0], label_font_weights[0]);
	}
}
