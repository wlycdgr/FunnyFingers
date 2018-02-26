/// @description Load macros and globals
enemy_speed_per_sec_min_default = core_enemy_speed_per_sec_min_default;
enemy_speed_per_sec_max_default = core_enemy_speed_per_sec_max_default;
energy_speed_per_sec_min_default = core_energy_speed_per_sec_min_default;
energy_speed_per_sec_max_default = core_energy_speed_per_sec_max_default;
item_defaults = [
	enemy_speed_per_sec_min_default, 
	enemy_speed_per_sec_max_default,
	energy_speed_per_sec_min_default,
	energy_speed_per_sec_max_default
];

enemy_speed_per_sec_min = global.core_enemy_speed_per_sec_min;
enemy_speed_per_sec_max = global.core_enemy_speed_per_sec_max;
energy_speed_per_sec_min = global.core_energy_speed_per_sec_min;
energy_speed_per_sec_max = global.core_energy_speed_per_sec_max;
item_values = [
	enemy_speed_per_sec_min,
	enemy_speed_per_sec_max,
	energy_speed_per_sec_min,
	energy_speed_per_sec_max
];

item_increments = [1, 1, 1, 1];

item_labels = [
	"Enemy min speed", 
	"Enemy max speed",
	"Energy min speed",
	"Energy max speed"
];

item_count = array_length_1d(item_labels);
item_index = 0;
