/// @description Update position of marker

// Determine if marker has left sweet spot
// And reset counter if we didn't hit it this time
var was_in_sweet_spot = true;
if (
	marker_x > right_sweet_spot_edge ||
	marker_x < left_sweet_spot_edge
) {
	was_in_sweet_spot = false;
}


// Move marker
marker_x += 
	marker_direction * 
	marker_current_speed_per_frame;

if (marker_x >= right_edge) {
	marker_x = right_edge;
	marker_direction = -1;
}
else if (marker_x <= left_edge) {
	marker_x = left_edge;
	marker_direction = 1;
}


var is_in_sweet_spot = true;
if (
	marker_x > right_sweet_spot_edge ||
	marker_x < left_sweet_spot_edge
) {
	is_in_sweet_spot = false;
}


if (
	was_in_sweet_spot &&
	!is_in_sweet_spot
) {
	if (!hit_sweet_spot_this_time) { event_user(14); }
	hit_sweet_spot_this_time = false;
}