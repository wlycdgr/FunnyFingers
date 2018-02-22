/// @description Init
minimum_period = 45;
maximum_period = 60;
current_period = irandom_range(minimum_period, maximum_period);

minimum_entity_speed = 30;
maximum_entity_speed = 300;

for (var i = 0; i < 10; i++){
	var entity = instance_create_layer(0, 0, "EnemiesAndEnergies", obj_Energy);
	entity.is_active = false;
	entity.column_index = -1;
	entities[i] = entity;
}