/// @description Init
// You can write your code in this editor
height = playfield_height;
bottom_y = y + height;

columns = array_create(column_count, -1);
for (var i = 0; i < column_count; i++){
	columns[i] = scr_Column_NEW(id, x + i * column_width, y);
}

funny_fingers = array_create(funny_finger_count);
var empty_spots = column_count - funny_finger_count;
var offset = floor(empty_spots / 2);
for (var i = 0; i < funny_finger_count; i++){
	var ff_column_index = i + offset;
	
	columns[ff_column_index].occupied = true;
	columns[ff_column_index].funny_finger_index = i;
	
	funny_fingers[i] = scr_Funny_Finger_NEW(id, ff_column_index);
}

energy_generator = scr_Entity_Generator_NEW(
	obj_Energy, 
	45, 60, // period min/max, in frames
	30, 300, //60, 90 // speed min/max, in pixels per second
	id
);

enemy_generator = scr_Entity_Generator_NEW(
	obj_Enemy, 
	75, 90, // period min/max, in frames
	45, 60, // speed min/max, in pixels per second
	id
);

focused = false; // TODO: -> is_focused
accepting_move_input = true; // TODO -> is_accepting_move_input

funny_finger_shrink_per_second = 0.025; // TODO remove magic number

has_unfunny_finger = false;