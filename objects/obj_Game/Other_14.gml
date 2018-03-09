/// @description On return to title
var ribbon = game_over_sliding_ribbon;
if (gs_paused == state) {
	ribbon = paused_sliding_ribbon;
}

with (ribbon) { event_user(2); } // on begin sliding out

state = gs_fading_out;



