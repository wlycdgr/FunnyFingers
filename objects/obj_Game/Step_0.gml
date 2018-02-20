/// @description Insert description here
// You can write your code in this editor
if (input_tracker.is_exit_pressed){
	game_end();
}

if (!focused_playfield.move_in_progress){
	scr_Playfield_Handle_Input(focused_playfield, input_tracker);
}