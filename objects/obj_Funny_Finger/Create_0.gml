/// @description Init
has_armor = true;

is_moving = false;
is_shrinking = true;
is_not_funny_anymore = false;

life = global.core_funny_finger_starting_life_x_100 / 100;
target_life = life;

danger_danger = instance_create_layer(
	left_of_window, above_window,
	"DangerDanger",
	obj_Danger_Danger
);
danger_danger.funny_finger = id;

target_x = 0;
source_x = 0;
move_amount_in_pixels_per_frame = 0;

shrink_per_frame = 
	(global.core_funny_finger_shrink_per_sec_x_1000 / 1000) / 
	game_fps;
grow_per_frame = 
	(global.core_energy_value_x_100 / 100) / // distance to grow
	(global.core_funny_finger_grow_time_in_sec * game_fps);
	
event_user(0);