/// @description Scroll & select
if (is_in_place_and_active){
	if (keyboard_check_pressed(vk_down)){
		item_index += 1;
		item_index = item_index % menu_item_count;
	}
	
	else if (keyboard_check_pressed(vk_up)){
		item_index -= 1;
		if (item_index < 0) item_index = menu_item_count - 1;
	}

	else if (keyboard_check_pressed(vk_enter)){
		switch(item_actions[item_index]){
		case "Restart":
			room_restart();
			break;
		case "Title":
			room_goto(r_MainMenu);
			break;
		default:
			break;
		}
	}
}