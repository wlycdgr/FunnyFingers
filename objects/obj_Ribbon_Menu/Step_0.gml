/// @description Slide, scroll, select

// rms_inactive, rms_selection_made: do nothing!
switch(state){
case rms_sliding_in:
	x -= game_over_menu_slide_per_frame;
	if (x <= 0) {
		x = 0;
		state = rms_in_place_and_active;
	}
	break;
	
case rms_in_place_and_active:
	if (keyboard_check_pressed(vk_down)) { 
		item_index = (item_index + 1) % item_count; 
	}
	else if (keyboard_check_pressed(vk_up)) { 
		item_index = (item_index - 1 + item_count) % item_count; 
	}
	else if (keyboard_check_pressed(vk_enter)) {
		selection = item_actions[item_index];
		state = rms_selection_made;
	}
	break;
}