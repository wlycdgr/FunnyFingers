///// @description Update string tweens, rotate strings, change screens
switch (global.room_state_tracker.state) {
case rs_setting_up_room:
	if (hs_header_tween.paused) {
		global.room_state_tracker.state = rs_normal_room_operations
	}
	
	scr_Menu_Scroll(hs_menu);
	if (scr_Menu_Selection_Made(hs_menu)) {
		scr_Menu_Act_On_Selection(hs_menu);
	}

	break;
	
case rs_normal_room_operations:
	scr_Menu_Scroll(hs_menu);
	if (scr_Menu_Selection_Made(hs_menu)) {
		scr_Menu_Act_On_Selection(hs_menu);
	}

	break;

case rs_room_change_requested:
	scr_SlideTween_Force_Slide_Out(hs_header_tween);
	scr_SlideTween_Force_Slide_Out(hs_menu.slide_tween);
	
	global.room_state_tracker.state = rs_breaking_down_room;
	
	break;
	
case rs_breaking_down_room:
	if (
		hs_header_tween.off_screen &&
		hs_menu.slide_tween.off_screen
	) {
		room_goto(global.room_state_tracker.target_room);
	}

	break;
}
