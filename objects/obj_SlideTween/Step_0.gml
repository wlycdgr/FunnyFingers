/// @description Update speeds and move values along all paths

if (!active || complete || paused) exit;

var updated_slide_proportion =
	slide_proportion_per_frame_current - 
	slide_proportion_increase_per_frame;
if (slide_state_sliding_out == slide_state) {
	updated_slide_proportion =
		slide_proportion_per_frame_current + 
		slide_proportion_increase_per_frame;
}

slide_proportion_per_frame_current = clamp(
	updated_slide_proportion,
	slide_proportion_per_frame_min,
	slide_proportion_per_frame_max
);

var offset = 0;
var path = 0;
var all_waypoints_reached = true;
off_screen = true;
for (var i = 0; i <path_count; i++) {
	path = paths[i];
	offset = path.value - path.waypoint;
	path.value -= offset * slide_proportion_per_frame_current;
	
	if (abs(offset) > close_enough) { all_waypoints_reached = false; }
	
	if (
		(path.value < window_width) &&
		(path.value > -window_width)
	) {
		off_screen = false;
	}
}

if (all_waypoints_reached) {
	if (slide_state_sliding_out == slide_state) {
		complete = true;
	}
	
	else if (slide_state_sliding_in == slide_state) {
		scr_SlideTween_Force_Slide_Out(id);

		paused = true;
	}
}