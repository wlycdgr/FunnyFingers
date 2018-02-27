/// @description Init
for (var i = 0; i < column_count; i++){
	columns[i] = instance_create_layer(
		x + i * column_width, y,
		"Columns",
		obj_Column
	);
	columns[i].playfield = id;
}

for (var i = 0; i < funny_finger_count; i++){
	var ff_column_index = i + half_of_empty_columns;
		
	funny_fingers[i] = 
		instance_create_layer(0, 0, "FunnyFingers", obj_Funny_Finger);
	funny_fingers[i].playfield = id;
	funny_fingers[i].source_column = ff_column_index;
	funny_fingers[i].target_column = ff_column_index;
	funny_fingers[i].x = 
		columns[ff_column_index].x +
		half_of_width_difference_with_column;
	funny_fingers[i].danger_danger.x = funny_fingers[i].x;
	
	columns[ff_column_index].occupied = true;
	columns[ff_column_index].funny_finger_id = funny_fingers[i];
}

energy_generator.playfield = id;

enemy_generator.playfield = id;
