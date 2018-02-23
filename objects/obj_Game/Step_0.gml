/// @description Insert description here
// You can write your code in this editor

if (is_game_over){
	if (game_over_menu.state == rms_selection_made){
		switch(game_over_menu.selection){
		case "Restart":
			room_restart();
			break;
		case "Title":
			room_goto(r_MainMenu);
			break;
		default:
			break;
		}
	}
}
else {
	for (var i = array_length_1d(playfields) - 1; i > -1; i--){
		// Is the game over?
		if (playfields[i].has_unfunny_finger){
			is_game_over = true;
			with (game_over_menu) { event_user(0); } // start sliding out
			exit;
		}
	}
	
	if (keyboard_check_pressed(vk_escape)){ // use input handler, this is stub
		is_game_paused = true;
		exit;
	}
}
