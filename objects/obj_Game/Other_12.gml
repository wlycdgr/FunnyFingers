/// @description On continue
global.scoreboard.target_score = 
	global.scoreboard.current_score;

with (cashout_dialogue_sliding_ribbon) { state = srs_sliding_out; }
state = gs_playing;