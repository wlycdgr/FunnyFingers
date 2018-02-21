energy_generator = instance_create_layer(0, 0, "Controllers", obj_Entity_Generator);

energy_generator.playfield = playfield;
energy_generator.entity_type = obj_Energy;
energy_generator.entitites = array_create(10, -1);
for (i = 0; i < 10; i++){
	new_entity = instance_create_layer(0, 0, "Instances", energy_generator.entity_type);
	new_entity.is_active = false;
	energy_generator.entities[i] = new_entity;
}
energy_generator.counter = 0;
energy_generator.period = 45;

playfield.energy_generator = energy_generator;