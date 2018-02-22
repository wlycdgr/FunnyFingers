/// @description Init
columns = array_create(column_count);
for (var i = 0; i < column_count; i++){
	columns[i] = scr_Column_NEW(id, x + i * column_width, y);
}

funny_fingers = array_create(funny_finger_count);
var offset = floor((column_count - funny_finger_count) / 2);
for (var i = 0; i < funny_finger_count; i++){
	var ff_column_index = i + offset;
	
	columns[ff_column_index].occupied = true;
	columns[ff_column_index].funny_finger_index = i;
	
	funny_fingers[i] = scr_Funny_Finger_NEW(id, ff_column_index);
}
funny_finger_shrink_per_second = 0.025; // TODO remove magic number
has_unfunny_finger = false;

energy_generator = 
	instance_create_layer(0, 0, "Controllers", obj_Energy_Generator);
energy_generator.playfield = id;

enemy_generator = 
	instance_create_layer(0, 0, "Controllers", obj_Enemy_Generator);
enemy_generator.playfield = id;

focused = false; // TODO: -> is_focused

accepting_move_input = true; // TODO -> is_accepting_move_input





