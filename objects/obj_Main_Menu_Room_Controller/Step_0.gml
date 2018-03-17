/// @description Scroll, select, act on selections
switch (global.room_state_tracker.state) {
case rs_setting_up_room:
	if (!main_menu.active && !difficulty_menu.active) exit;
	
	var current_menu = main_menu;
	if (difficulty_menu.active) current_menu = difficulty_menu;

	scr_Menu_Scroll(current_menu) {
		if (scr_Menu_Selection_Made(current_menu)) {
			scr_Menu_Act_On_Selection(current_menu);
		}
	}

	break;
	
case rs_normal_room_operations:

	break;

case rs_room_change_requested:
	scr_SlideTween_Force_Slide_Out(title_tween);

	global.room_state_tracker.state = rs_breaking_down_room;
	
	break;
	
case rs_breaking_down_room:
	if (title_tween.complete) {
		room_goto(global.room_state_tracker.target_room);
	}

	break;
}
