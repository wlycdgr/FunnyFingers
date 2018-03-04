/// @param {integer} playfield_id The id of the playfield that this sweet spot bar belongs to

var new_ssb = instance_create_layer(
	argument0.x, playfield_bottom_y, 
	"SweetSpotBar", 
	obj_Sweet_Spot_Bar
);

with (new_ssb) {
	playfield = argument0;
	width = argument0.width;

	left_sweet_spot_edge = x + width * 0.4;
	right_sweet_spot_edge = x + width * 0.6;
	
	left_edge = x;
	right_edge = x + width;

	marker_x = x;
	marker_current_time_in_seconds_to_cross = ssb_max_seconds_for_marker_to_cross;
	marker_current_speed_per_frame = 
		(width / game_fps) /
		marker_current_time_in_seconds_to_cross;
	marker_direction = 1;
	
	multiplier = ssb_min_multiplier;
	
	hit_sweet_spot_this_time = false;
}

return new_ssb;