// arg0: id of playfield controller
// arg1: column count
// arg2: funny finger count

// Configure 
playfield = argument0;
column_count = argument1;
funny_finger_count = argument2;

playfield.columns = array_create(column_count, -1);
for (i = 0; i < column_count; i++){
	new_column = instance_create_layer(
		100 + 120 * i, 100, 
		"Instances", 
		obj_Column
	);
	
	new_column.playfield = playfield.id;
	
	playfield.columns[i] = new_column;
}

scr_Init_Funny_Fingers_Controller(playfield, funny_finger_count);