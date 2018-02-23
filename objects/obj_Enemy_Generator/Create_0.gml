/// @description Init
minimum_period = 75;
maximum_period = 90;
current_period = irandom_range(minimum_period, maximum_period);



for (var i = 0; i < 10; i++){
	entities[i] = instance_create_layer(0, 0, "EnemiesAndEnergies", obj_Enemy);
	entities[i].generator = id;
}