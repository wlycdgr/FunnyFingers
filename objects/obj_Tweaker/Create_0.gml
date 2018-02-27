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
funny_finger_starting_life_x_100_default = core_funny_finger_starting_life_x_100_default;
energy_value_x_100_default = core_energy_value_x_100_default;
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
	funny_finger_shrink_per_sec_x_1000_default,
	funny_finger_starting_life_x_100_default,
	energy_value_x_100_default
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
funny_finger_starting_life_x_100 = global.core_funny_finger_starting_life_x_100;
energy_value_x_100 = global.core_energy_value_x_100;
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
	funny_finger_shrink_per_sec_x_1000,
	funny_finger_starting_life_x_100,
	energy_value_x_100
];


#macro core_energy_value_x_100_default 10
global.core_energy_value_x_100 = core_energy_value_x_100_default;

item_increments = [
	1, // enemy min speed
	1, // enemy max speed
	1, // energy min speed
	1, // energy max speed
	0.01, // enemy min period
	0.01, // enemy max period
	0.01, // energy min period
	0.01, // energy max period
	0.01, // funny finger move time
	1, // funny finger shrink per sec
	1, // funny finger startling life
	1 // energy value
];

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
	"Funny finger shrink per sec",
	"Funny finger starting life",
	"Energy value"
];

item_count = array_length_1d(item_labels);
item_index = 0;
