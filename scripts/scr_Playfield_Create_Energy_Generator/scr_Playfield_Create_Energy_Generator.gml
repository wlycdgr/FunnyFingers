energy_generator = instance_create_layer(0, 0, "Controllers", obj_Entity_Generator);

energy_generator.playfield = playfield;
energy_generator.target_bucket = playfield.energies;
energy_generator.type = obj_Energy;
energy_generator.period = 45;