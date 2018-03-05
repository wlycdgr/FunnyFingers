/// @description On Cashout?

if (global.scoreboard.current_score > global.scoreboard.current_high_score) {
	global.scoreboard.target_score = 0;

	with (cashout_dialogue_sliding_ribbon) { event_user(0); }
	state = gs_cashout_dialogue;
}
