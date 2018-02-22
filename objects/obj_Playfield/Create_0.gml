/// @description Init
columns = array_create(column_count);
for (var i = 0; i < column_count; i++){
	columns[i] = instance_create_layer(
		x + i * column_width, y,
		"Columns",
		obj_Column
	);
	columns[i].playfield = id;
}

funny_fingers = array_create(funny_finger_count);
var offset = floor((column_count - funny_finger_count) / 2);
for (var i = 0; i < funny_finger_count; i++){
	var ff_column_index = i + offset;
	
	columns[ff_column_index].occupied = true;
	columns[ff_column_index].funny_finger_index = i;
	
	funny_fingers[i] = 
		instance_create_layer(0, 0, "FunnyFingers", obj_Funny_Finger);
	funny_fingers[i].playfield = id;
	funny_fingers[i].source_column = ff_column_index;
	funny_fingers[i].target_column = ff_column_index;
	funny_fingers[i].x = 
		columns[ff_column_index].x +
		funny_fingers[i].half_of_width_difference_with_column;
	funny_fingers[i].danger_danger.x = funny_fingers[i].x;
}
funny_finger_shrink_per_second = 0.025; // TODO macro this
has_unfunny_finger = false;

energy_generator = 
	instance_create_layer(0, 0, "Controllers", obj_Energy_Generator);
energy_generator.playfield = id;

enemy_generator = 
	instance_create_layer(0, 0, "Controllers", obj_Enemy_Generator);
enemy_generator.playfield = id;

focused = false; // TODO: -> is_focused

accepting_move_input = true; // TODO -> is_accepting_move_input





