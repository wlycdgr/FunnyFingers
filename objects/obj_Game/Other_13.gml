/// @description On restart
var menu = game_over_menu;
if (gs_paused == state) { menu = pause_menu; }
with (menu) { state = rms_sliding_out; }

state = gs_restarting;