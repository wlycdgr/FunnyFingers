/// param {integer} menu The id of the menu we are scrolling
with (argument0) {
	if (scroll_down) {
		scr_Sound_Play(sfx_scroll_menu);
		
		label_states[index] = menu_item_state_unselected;		
		index = (index + 1) % item_count;
		label_states[index] = menu_item_state_selected;
	}
	else if (scroll_up) {
		scr_Sound_Play(sfx_scroll_menu);
		
		label_states[index] = menu_item_state_unselected;
		index = (index - 1 + item_count) % item_count;
		label_states[index] = menu_item_state_selected;
	}
	
	var label_state = 0;
	var label_font_weight = 0;
	for (var i = 0; i < item_count; i++) {
		label_state = label_states[i];
		label_font_weight = label_font_weights[i];
		
		if (
			menu_item_state_unselected == label_state  &&
			menu_item_font_weight_min == label_font_weight
		) {
			continue;
		}
		
		if (
			menu_item_state_selected == label_state &&
			menu_item_font_weight_max == label_font_weight
		) {
			continue;
		}
		
		var offset = 0;

		if (menu_item_state_unselected == label_state) {
			offset = label_font_weight - menu_item_font_weight_min;
			
			label_font_weights[i] = max (
				menu_item_font_weight_min,
				label_font_weight - (offset * menu_item_font_weight_change_proportion_per_frame)
			);
		}
		
		else if (menu_item_state_selected == label_state) {
			offset = menu_item_font_weight_max - label_font_weight;
			
			label_font_weights[i] = min (
				menu_item_font_weight_max,
				label_font_weight + (offset * menu_item_font_weight_change_proportion_per_frame)
			);
		}
		
		scr_Splitsfont_Set_Weight(label_strings[i], label_font_weights[i]);
	}
}