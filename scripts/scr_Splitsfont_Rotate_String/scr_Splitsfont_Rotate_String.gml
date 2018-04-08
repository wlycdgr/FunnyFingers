/// @function scr_Splitsfont_Rotate_String(splitsfont_string)
with (argument0) {
	if (1 > abs(rotation_speed_degrees_per_sec)) return;

	current_angle_degrees +=
		rotation_dir * 
		(rotation_speed_degrees_per_sec / game_fps);
	
	current_angle_degrees =
		current_angle_degrees %
		360;
		
	scr_Splitsfont_Set_Angle(id, current_angle_degrees);
}
