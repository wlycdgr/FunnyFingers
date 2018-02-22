/// @description Init
// You can write your code in this editor
columns = array_create(column_count, -1);
for (var i = 0; i < column_count; i++){
	columns[i] = scr_Column_NEW(id, x + i * column_width, y);
}

funny_fingers = [];

enemy_generator = -1;
energy_generator = -1;

focused = false; // TODO: -> is_focused
accepting_move_input = true; // TODO -> is_accepting_move_input

height = playfield_height;
bottom_y = y + height;

funny_finger_shrink_per_second = 0.025;

has_unfunny_finger = false;