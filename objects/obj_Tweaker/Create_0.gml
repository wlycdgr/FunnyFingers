/// @description Load macros and globals
item_index = 0;
item_count = 2;

enemy_speed_per_sec_min_default = core_enemy_speed_per_sec_min_default;
enemy_speed_per_sec_max_default = core_enemy_speed_per_sec_max_default;
item_defaults = [
	enemy_speed_per_sec_min_default, 
	enemy_speed_per_sec_max_default
];

enemy_speed_per_sec_min = global.core_enemy_speed_per_sec_min;
enemy_speed_per_sec_max = global.core_enemy_speed_per_sec_max;
item_values = [
	enemy_speed_per_sec_min,
	enemy_speed_per_sec_max
];

item_increments = [1, 1];

item_labels = ["Enemy min speed", "Enemy max speed"];
