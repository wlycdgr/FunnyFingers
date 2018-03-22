/// @param object_id The type of entity to generate
for (var i = 0; i < entity_pool_size; i++){
	entities[i] = instance_create_layer(
		left_of_window, above_window, 
		"EnemiesAndEnergies", 
		argument0
	);
	entities[i].generator = id;
}