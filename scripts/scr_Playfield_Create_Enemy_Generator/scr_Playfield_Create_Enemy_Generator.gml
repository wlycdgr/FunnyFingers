enemy_generator = instance_create_layer(0, 0, "Controllers", obj_Entity_Generator);

enemy_generator.playfield = playfield;
enemy_generator.target_bucket = playfield.enemies;
enemy_generator.type = obj_Enemy;
enemy_generator.period = 60;