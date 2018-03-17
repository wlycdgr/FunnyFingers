/// @description Scroll, select, act on selections
switch (global.room_state_tracker.state) {
case rs_setting_up_room:
	if (title_tween.paused) {
		global.room_state_tracker.state = rs_normal_room_operations;
	}
	
	scr_Main_Menu_Room_Controller_HandleMenus(id);

	break;
	
case rs_normal_room_operations:
	scr_Main_Menu_Room_Controller_HandleMenus(id);

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
