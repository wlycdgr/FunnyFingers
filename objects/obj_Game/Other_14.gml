/// @description On return to title
var ribbon = game_over_sliding_ribbon;
if (gs_paused == state) {
	ribbon = paused_sliding_ribbon;
}

with (ribbon) { state = srs_sliding_out; }

state = gs_fading_out;



