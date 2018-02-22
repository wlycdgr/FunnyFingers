/// @description Insert description here
// You can write your code in this editor
if (is_in_place_and_active){
	if (keyboard_check_pressed(vk_down)){
		menu_index += 1;
		menu_index = menu_index % menu_item_count;
	}
	
	else if (keyboard_check_pressed(vk_up)){
		menu_index -= 1;
		if (menu_index < 0) menu_index = menu_item_count - 1;
	}
	
	else if (keyboard_check_pressed(vk_enter)){
		switch(menu_index){
		case 0: // "Try Again"
			room_restart();
			break;
		case 1: // "Exit to Title"
			room_goto(r_MainMenu);
			break;
		default:
			break;
		}
	}
}