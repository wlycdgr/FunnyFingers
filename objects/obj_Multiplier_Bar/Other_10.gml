/// @description On successful move
if (is_refilling) exit;

event_user(1);


current_time_in_seconds_to_drain = max(
	mb_min_seconds_to_drain,
	(
		current_time_in_seconds_to_drain - 
		mb_time_to_drain_reduction_in_seconds_for_successful_move
	)
);
fully_drained = false;

is_refilling =true;

event_user(15);