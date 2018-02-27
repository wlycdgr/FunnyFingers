/// @description Init
minimum_period_in_sec = global.core_enemy_minimum_period_in_sec;
maximum_period_in_sec = global.core_enemy_maximum_period_in_sec;

event_user(0);

for (var i = 0; i < 10; i++){
	entities[i] = instance_create_layer(0, 0, "EnemiesAndEnergies", obj_Enemy);
	entities[i].generator = id;
}