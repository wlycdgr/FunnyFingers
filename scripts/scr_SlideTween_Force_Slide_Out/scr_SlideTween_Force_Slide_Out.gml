/// @function scr_SlideTween_Force_Slide_Out(tween_id)

with (argument0) {
	slide_state = slide_state_sliding_out;
		
	for (var i = 0; i < path_count; i++) {
		path = paths[i];
		scr_SlidePath_Set_NextWaypoint(path);
	}
	
	paused = false;
}