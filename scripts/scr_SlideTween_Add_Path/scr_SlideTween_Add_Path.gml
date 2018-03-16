/// @function scr_SlideTween_Add_Path(tween_id, waypoints_array);

with (argument0) {
	var new_path = instance_create_layer(0, 0, "Splitsfont", obj_SlidePath);
	
	with (new_path) {
		waypoints = argument1;
		waypoint_count = array_length_1d(waypoints);
		scr_SlidePath_Reset(new_path);
	}
	
	paths[path_count] = new_path;
	
	path_count += 1;
	
	return new_path;
}