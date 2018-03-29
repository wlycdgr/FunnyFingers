/// @function scr_AchievementUnlockPopup_NEW(ach_name)

var unlock_popup = instance_create_layer(window_width, 600, "Splitsfont", obj_AchievementUnlockPopup);

with (unlock_popup) {
	start_y = window_height * 1.02;
	travel_up_frames = 6.0;
	travel_down_frames = 18.0;
	weight_change_frames = 30.0;
	pause_frames = 60;
	pause_counter = 0;
	
	aus = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(aus, "ACHIEVEMENT UNLOCKED");
	scr_Splitsfont_Set_Tweaks(aus, [0.014, 0.02, 0.01, 0, 0]);
	aus_x =
		window_x_center -
		(scr_Splitsfont_Get_Width(aus) / 2);
	aus_current_y = start_y;
	aus_target_y = 0.933 * window_height;
	var aus_y_travel_distance =
		start_y -
		aus_target_y;
	aus_y_up_travel_per_frame = 
		aus_y_travel_distance / travel_up_frames;
	aus_y_down_travel_per_frame = 
		aus_y_travel_distance  / travel_down_frames;
		
	aus_current_weight = 0.02;
	aus_target_weight = 0.001;
	var aus_weight_distance = 0.02 - aus_target_weight;
	aus_weight_change_per_frame = aus_weight_distance / weight_change_frames;
	
	ans = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(ans, argument0);
	scr_Splitsfont_Set_Tweaks(ans, [0.018, 0.024, 0.01, 0, 0]);
	ans_x =
		window_x_center -
		(scr_Splitsfont_Get_Width(ans) / 2);
	ans_current_y = start_y;
	ans_target_y = 0.964 * window_height;
	var ans_y_travel_distance =
		start_y -
		ans_target_y;
	ans_y_up_travel_per_frame =
		ans_y_travel_distance / travel_up_frames;
	ans_y_down_travel_per_frame =
		ans_y_travel_distance / travel_down_frames;
		
	ans_current_weight = 0.024;
	ans_target_weight = 0.004;
	var ans_weight_distance = 0.024 - ans_target_weight;
	ans_weight_change_per_frame = ans_weight_distance / weight_change_frames;
	
	state_traveling_up = 0;
	state_changing_weight = 1;
	state_pause = 2;
	state_traveling_down = 3;
	
	current_state = state_traveling_up;
}