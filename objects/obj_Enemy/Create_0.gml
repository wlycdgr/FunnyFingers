/// @description Set speed

minimum_speed = global.core_enemy_speed_per_sec_min;
maximum_speed = global.core_enemy_speed_per_sec_max;

destroy_threshold = playfield_bottom_y;

close_shave = instance_create_layer(x, y, "EnemiesAndEnergies", obj_CloseShave);
close_shave.parent_enemy = id;