/// @description On successful move
// speed up and increment score counter if we are in sweet spot
if (
	marker_x >= left_sweet_spot_edge &&
	marker_x <= right_sweet_spot_edge
) {
	if (!hit_sweet_spot_this_time) {
		event_user(13);
	}
}
