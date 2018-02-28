/// @description Scroll and select

if (menu_selection_made) exit;

if (keyboard_check_pressed(vk_down)) { 
	menu_item_index = (menu_item_index + 1) % menu_item_count; 
}
else if (keyboard_check_pressed(vk_up)) { 
	menu_item_index = (menu_item_index - 1 + menu_item_count) % menu_item_count; 
}
else if (keyboard_check_pressed(vk_enter)) {
	switch (menu_item_labels[menu_item_index]) {
	case "Exit":
		game_end();
		break;
	
	case "High Scores":
		menu_selection_made = true;
		with (global.fader) {
			event_user(0);
			target_room = r_High_Scores;
		}
		break;
		
	case "Play":
		menu_selection_made = true;
		with (global.fader) {
			event_user(0);
			target_room = r_Gameplay;
		}
		break;
	}
}

