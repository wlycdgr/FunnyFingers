/// @function scr_SlidePath_Set_NextWaypoint(path_id)

with (argument0) {
	if (waypoint_index >= waypoint_count - 1) return;
	
	waypoint_index += 1;
	
	waypoint = waypoints[waypoint_index];
}