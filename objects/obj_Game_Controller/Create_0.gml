/// @description Init game
// You can write your code in this editor

// These will actually be set on an earlier screen
// and exposed to this script through a persistent settings object
playfield_count = 1;
column_count = 7;
funny_finger_count = 3;

// Create the playfield controllers
playfields = array_create(playfield_count, -1);
for (i = 0; i < playfield_count; i++){
	new_playfield = instance_create_layer(
		0, 0, 
		"Controllers", 
		obj_Playfield
	);
	
	scr_Init_Playfield(new_playfield, column_count, funny_finger_count);
	
	playfields[i] = new_playfield;
}
