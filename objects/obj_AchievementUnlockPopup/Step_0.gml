/// @description
switch (current_state) {
case state_traveling_up:
	aus_current_y -= aus_y_up_travel_per_frame;
	ans_current_y -= ans_y_up_travel_per_frame;
	
	if (
		aus_current_y <= aus_target_y &&
		ans_current_y <= ans_target_y
	) {
		aus_current_y = aus_target_y;
		ans_current_y = ans_target_y;
		
		current_state = state_changing_weight;
	}
	
	break;
	
case state_changing_weight:
	aus_current_weight -= aus_weight_change_per_frame;
	ans_current_weight -= ans_weight_change_per_frame;
	
	if (
		aus_current_weight <= aus_target_weight &&
		ans_current_weight <= ans_target_weight
	) {
		aus_current_weight = aus_target_weight;
		ans_current_weight = ans_target_weight;
		
		current_state = state_pause;
	}
	
	scr_Splitsfont_Set_Weight(aus, aus_current_weight);
	scr_Splitsfont_Set_Weight(ans, ans_current_weight);
	
	break;
	
case state_pause:
	pause_counter += 1;
	
	if (pause_counter >= pause_frames) {
		current_state = state_traveling_down;
	}
	
	break;
	
case state_traveling_down:
	aus_current_y += aus_y_down_travel_per_frame;
	ans_current_y += ans_y_down_travel_per_frame;
	
	if (
		aus_current_y >= start_y &&
		ans_current_y >= start_y
	) {
		instance_destroy();
	}
	
	break;
}