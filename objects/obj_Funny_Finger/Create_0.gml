/// @description Init
has_armor = true;

is_moving = false;
is_shrinking = true;
is_not_funny_anymore = false;

shrink_rate_multiplier = 1.0;
shrink_rate_multiplier_growth_rate = 0.0008 / game_fps;
shrink_rate_multiplier_growth_rate_min = shrink_rate_multiplier_growth_rate;
shrink_rate_multiplier_growth_rate_max = shrink_rate_multiplier_growth_rate * 5.0;
shrink_rate_multiplier_growth_rate_uptick = 	
	(
		shrink_rate_multiplier_growth_rate_max - 
		shrink_rate_multiplier_growth_rate_min
	) 
	/
	( game_fps * 2.0);
shrink_rate_multiplier_growth_rate_move_reduction = 
	shrink_rate_multiplier_growth_rate_max - 
	shrink_rate_multiplier_growth_rate_min;
		

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
	///(global.core_funny_finger_shrink_per_sec_x_1000 / 1000) / 
	global.game_settings.shrink_per_sec / 
	game_fps;
grow_per_frame = 
	(global.core_energy_value_x_100 / 100) / // distance to grow
	(global.core_funny_finger_grow_time_in_sec * game_fps);
	
event_user(0);