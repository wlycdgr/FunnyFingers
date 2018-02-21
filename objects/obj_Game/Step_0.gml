/// @description Insert description here
// You can write your code in this editor
if (input_tracker.is_exit_pressed){
	game_end();
}

if (is_game_over){
	//scr_Game_Present_Game_Over_Menu();
}
else {
	for (i = array_length_1d(playfields) - 1; i > -1; i--){
		if (playfields[i].has_vanished_finger){
			is_game_over = true;
			return;
		}
	}
	
	if (focused_playfield.accepting_move_input){
		scr_Playfield_Handle_Input(focused_playfield, input_tracker);
	}

	for (i = array_length_1d(playfields) - 1; i > -1; i--){
		scr_Playfield_Step(playfields[i]);
	}
}
