/// @description Insert description here
// You can write your code in this editor
if (input_tracker.is_exit_pressed){
	game_end();
}

if (is_game_over){
	if (!game_over_menu.is_in_place_and_active){
		game_over_menu.x -= game_over_menu_slide_per_frame;
		if (game_over_menu.x <= 0){
			game_over_menu.x = 0;
			game_over_menu.is_in_place_and_active = true;
		}
	}
}
else {
	if (focused_playfield.accepting_move_input){
		scr_Playfield_Handle_Input(focused_playfield, input_tracker);
	}

	for (var i = array_length_1d(playfields) - 1; i > -1; i--){
		scr_Playfield_Step(playfields[i]);
		
		// Is the game over?
		if (playfields[i].has_unfunny_finger){
			is_game_over = true;
			game_over_menu.is_sliding = true;
			return;
		}
	}
}
