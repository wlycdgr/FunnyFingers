/// @description On successful move in sweet spot
hit_sweet_spot_this_time = true;

multiplier = min(
	ssb_max_multiplier,
	(multiplier + 1)
);
	
marker_current_time_in_seconds_to_cross = max (
	ssb_min_seconds_for_marker_to_cross,
	(
		marker_current_time_in_seconds_to_cross - 
		ssb_marker_time_to_cross_reduction_in_seconds_for_successful_sweet_spot_move
	)
);

event_user(15);