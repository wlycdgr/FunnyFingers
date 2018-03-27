/// @description On return to title
var ribbon = game_over_sliding_ribbon;
if (state == gs_paused) {
	ribbon = paused_sliding_ribbon;
}
else if (state == gs_level_99_unlock_message) {
	ribbon = level_99_unlock_message_sliding_ribbon;
}

with (ribbon) { event_user(2); } // on begin sliding out

state = gs_fading_out;