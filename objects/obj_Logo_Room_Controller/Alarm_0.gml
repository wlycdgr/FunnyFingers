/// @description Fade out
if (0 == slide_index) {
	slide_index = 1;
	//alarm_set(0, game_fps * 10);
}

else {
	with (global.fader) { 
		event_user(0);
		target_room = room_next(room);
	}
}

