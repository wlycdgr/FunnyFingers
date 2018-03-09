/// @description On restart
var ribbon = game_over_sliding_ribbon;
if (state == gs_paused) {
	ribbon = paused_sliding_ribbon;
}

with (ribbon) { state = srs_sliding_out; }

state = gs_restarting;