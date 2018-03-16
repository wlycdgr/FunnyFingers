/// @function scr_Splitsfont_Rotate_String(splitsfont_string)
if (1 > abs(argument0.rotation_speed_degrees_per_sec)) return;

argument0.current_angle_degrees +=
	argument0.rotation_dir * 
	(argument0.rotation_speed_degrees_per_sec / game_fps);
	
argument0.current_angle_degrees =
	argument0.current_angle_degrees %
	360;

scr_Splitsfont_Set_Angle(argument0, argument0.current_angle_degrees);