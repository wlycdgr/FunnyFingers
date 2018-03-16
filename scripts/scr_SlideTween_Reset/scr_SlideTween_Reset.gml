/// @function scr_SlideTween_Reset(tween_id)

with (argument0) {
	complete = false;
	slide_state = slide_state_sliding_in;
	slide_proportion_per_frame_current = slide_proportion_per_frame_max;

	for (var i = 0; i < path_count; i++) {
		scr_SlidePath_Reset(paths[i]);
	}
}