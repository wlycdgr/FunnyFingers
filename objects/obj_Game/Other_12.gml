/// @description On continue
global.scoreboard.target_score = 
	global.scoreboard.current_score;

with (paused_sliding_ribbon) { event_user(2); } // on begin sliding out

state = gs_playing;