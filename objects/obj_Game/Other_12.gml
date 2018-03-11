/// @description On continue
global.scoreboard.target_points = 
	global.scoreboard.points;

with (paused_sliding_ribbon) { event_user(2); } // on begin sliding out

state = gs_playing;