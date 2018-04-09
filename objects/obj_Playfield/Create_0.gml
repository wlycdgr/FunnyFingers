/// @description Init
has_unfunny_finger = false;
focused = false;

columns = array_create(global.game_settings.column_count);
funny_fingers = array_create(global.game_settings.funny_finger_count);
energy_generator = instance_create_layer(0, 0, "Controllers", obj_Energy_Generator);
enemy_generator = instance_create_layer(0, 0, "Controllers", obj_Enemy_Generator);

width = global.game_settings.column_count * column_width;

for (var i = 0; i < global.game_settings.column_count; i++){
	columns[i] = instance_create_layer(
		x + i * column_width, y,
		"Columns",
		obj_Column
	);
	columns[i].playfield = id;
}

for (var i = 0; i < global.game_settings.funny_finger_count; i++){
	var ff_column_index = i + 
		floor((global.game_settings.column_count - global.game_settings.funny_finger_count) / 2);
		
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

multiplier_bar = scr_Multiplier_Bar_NEW(id);

right_x = x + width;
bottom_bar_bottom_y = playfield_bottom_y + 4;