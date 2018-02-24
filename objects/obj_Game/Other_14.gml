/// @description On return to title
var menu = game_over_menu;
if (gs_paused == state) { menu = pause_menu; }
with (menu) { state = rms_sliding_out; }

with global.fader { 
	event_user(0);
	target_room = r_MainMenu;
}

state = gs_fading_out;

