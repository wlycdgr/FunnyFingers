/// @description Init
minimum_period = global.core_energy_minimum_period_in_sec;
maximum_period = global.core_energy_maximum_period_in_sec;

event_user(0);

for (var i = 0; i < 10; i++){
	entities[i] = instance_create_layer(0, 0, "EnemiesAndEnergies", obj_Energy);
	entities[i].generator = id;
}