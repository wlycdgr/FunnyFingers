/// @description Init
minimum_period = 75;
maximum_period = 90;
current_period = irandom_range(minimum_period, maximum_period);

minimum_entity_speed = 45;
maximum_entity_speed = 60;

for (var i = 0; i < 10; i++){
	var entity = instance_create_layer(0, 0, "EnemiesAndEnergies", obj_Enemy);
	entity.is_active = false;
	entity.column_index = -1;
	entities[i] = entity;
}