/// @function scr_Entity_Generator_NEW(entity_type, min_period, max_period, min_speed, max_speed)
/// @description Instantiates and initializes an entity generator object. Returns obj reference.
/// @param entity_type Which object should the entity generator generate?
/// @param {real} min_period Minimum delay between activations, in frames
/// @param {real} max_period Maximum delay between activations, in frames
/// @param {real} min_speed Minimum speed for entity, in pixels per second
/// @param {real} max_speed Maximum speed for entity, in pixels per second
	
new_entity_generator = instance_create_layer(0, 0, "Controllers", obj_Entity_Generator);

new_entity_generator.playfield = playfield;

new_entity_generator.entities = array_create(10, -1); // TODO: unmagic this number
for (i = 0; i < 10; i++){
	new_entity = instance_create_layer(0, 0, "EnemiesAndEnergies", argument0);
	new_entity.is_active = false;
	new_entity.column_index = -1;
	new_entity_generator.entities[i] = new_entity;
}

new_entity_generator.counter = 0;

new_entity_generator.minimum_period = argument1;
new_entity_generator.maximum_period = argument2;
new_entity_generator.current_period = irandom_range(argument1, argument2);
	energy_generator = instance_create_layer(0, 0, "Controllers", obj_Entity_Generator);

new_entity_generator.minimum_entity_speed = argument3;
new_entity_generator.maximum_entity_speed = argument4;

return new_entity_generator;