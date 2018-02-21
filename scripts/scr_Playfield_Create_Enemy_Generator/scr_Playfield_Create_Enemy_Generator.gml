enemy_generator = instance_create_layer(0, 0, "Controllers", obj_Entity_Generator);

enemy_generator.playfield = playfield;
enemy_generator.entity_type = obj_Enemy;
enemy_generator.entitites = array_create(10, -1);
for (i = 0; i < 10; i++){
	new_entity = instance_create_layer(0, 0, "Instances", enemy_generator.entity_type);
	new_entity.is_active = false;
	enemy_generator.entities[i] = new_entity;
}
enemy_generator.counter = 0;
enemy_generator.period = 60;

playfield.enemy_generator = enemy_generator;