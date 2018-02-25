/// @description Insert description here
// You can write your code in this editor

item_index = 0;
item_count = 2;

enemy_min_speed_label = "Enemy min speed";
enemy_min_speed_default = core_enemy_speed_per_sec_min;
enemy_min_speed_current = enemy_min_speed_default;

enemy_max_speed_label = "Enemy max speed";
enemy_max_speed_default = core_enemy_speed_per_sec_max;
enemy_max_speed_current = enemy_max_speed_default;

item_labels = [enemy_min_speed_label, enemy_max_speed_label];
item_values = [enemy_min_speed_current, enemy_max_speed_current];
item_increments = [1, 1];