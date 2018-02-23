/// @description Init
minimum_period = 45;
maximum_period = 60;
current_period = irandom_range(minimum_period, maximum_period);

for (var i = 0; i < 10; i++){
	entities[i] = instance_create_layer(0, 0, "EnemiesAndEnergies", obj_Energy);
	entities[i].generator = id;
}