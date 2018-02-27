/// @description Load macros and globals
enemy_speed_per_sec_min_default = core_enemy_speed_per_sec_min_default;
enemy_speed_per_sec_max_default = core_enemy_speed_per_sec_max_default;
energy_speed_per_sec_min_default = core_energy_speed_per_sec_min_default;
energy_speed_per_sec_max_default = core_energy_speed_per_sec_max_default;
enemy_minimum_period_in_sec_default = core_enemy_minimum_period_in_sec_default;
enemy_maximum_period_in_sec_default = core_enemy_maximum_period_in_sec_default;
energy_minimum_period_in_sec_default = core_energy_minimum_period_in_sec_default;
energy_maximum_period_in_sec_default = core_energy_maximum_period_in_sec_default;
funny_finger_move_time_in_sec_default = core_funny_finger_move_time_in_sec_default;
funny_finger_shrink_per_sec_x_1000_default = core_funny_finger_shrink_per_sec_x_1000_default;
item_defaults = [
	enemy_speed_per_sec_min_default, 
	enemy_speed_per_sec_max_default,
	energy_speed_per_sec_min_default,
	energy_speed_per_sec_max_default,
	enemy_minimum_period_in_sec_default,
	enemy_maximum_period_in_sec_default,
	energy_minimum_period_in_sec_default,
	energy_maximum_period_in_sec_default,
	funny_finger_move_time_in_sec_default,
	funny_finger_shrink_per_sec_x_1000_default
];


enemy_speed_per_sec_min = global.core_enemy_speed_per_sec_min;
enemy_speed_per_sec_max = global.core_enemy_speed_per_sec_max;
energy_speed_per_sec_min = global.core_energy_speed_per_sec_min;
energy_speed_per_sec_max = global.core_energy_speed_per_sec_max;
enemy_minimum_period_in_sec = global.core_enemy_minimum_period_in_sec;
enemy_maximum_period_in_sec = global.core_enemy_maximum_period_in_sec;
energy_minimum_period_in_sec = global.core_energy_minimum_period_in_sec;
energy_maximum_period_in_sec = global.core_energy_maximum_period_in_sec;
funny_finger_move_time_in_sec = global.core_funny_finger_move_time_in_sec;
funny_finger_shrink_per_sec_x_1000 = global.core_funny_finger_shrink_per_sec_x_1000;
item_values = [
	enemy_speed_per_sec_min,
	enemy_speed_per_sec_max,
	energy_speed_per_sec_min,
	energy_speed_per_sec_max,
	enemy_minimum_period_in_sec,
	enemy_maximum_period_in_sec,
	energy_minimum_period_in_sec,
	energy_maximum_period_in_sec,
	funny_finger_move_time_in_sec,
	funny_finger_shrink_per_sec_x_1000
];

item_increments = [1, 1, 1, 1, 0.01, 0.01, 0.01, 0.01, 0.01, 1];

item_labels = [
	"Enemy min speed", 
	"Enemy max speed",
	"Energy min speed",
	"Energy max speed",
	"Enemy min period",
	"Enemy max period",
	"Energy min period",
	"Energy max period",
	"Funny finger move time",
	"Funny finger shrink per sec"
];

item_count = array_length_1d(item_labels);
item_index = 0;
