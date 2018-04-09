/// @description Scroll, select, act on selections
if (twitching_up) {
	current_size += twitch_up_per_frame;
	
	scr_Splitsfont_Set_Size(funny, current_size);
	funny_x  = funny_center - scr_Splitsfont_Get_Width(funny) / 2;
	
	if (current_size >= target_size) {
		twitching_up = false;
		twitching_down = true;
	}
}

else if (twitching_down) { 
	current_size -= twitch_down_per_frame;
	
	if (current_size <= funny_size) {
		current_size = funny_size;
		twitching_down = false;
		alarm[0] = irandom_range(120, 480);
	}
	
	scr_Splitsfont_Set_Size(funny, current_size);
	funny_x  = funny_center - scr_Splitsfont_Get_Width(funny) / 2;
}


switch (global.room_state_tracker.state) {
case rs_setting_up_room:
	if (title_tween.paused) {
		global.room_state_tracker.state = rs_normal_room_operations;
		alarm[0] = 180;//irandom_range(300, 600);
	}
	
	scr_Main_Menu_Room_Controller_HandleMenus(id);

	break;
	
case rs_normal_room_operations:
	scr_Main_Menu_Room_Controller_HandleMenus(id);

	break;

case rs_room_change_requested:
	scr_SlideTween_Force_Slide_Out(title_tween);
	scr_SlideTween_Force_Slide_Out(main_menu.slide_tween);
	scr_SlideTween_Force_Slide_Out(difficulty_menu.slide_tween);

	global.room_state_tracker.state = rs_breaking_down_room;
	
	break;
	
case rs_breaking_down_room:
	if (
		title_tween.off_screen &&
		main_menu.slide_tween.off_screen &&
		difficulty_menu.slide_tween.off_screen
	) {
		room_goto(global.room_state_tracker.target_room);
	}

	break;
}
