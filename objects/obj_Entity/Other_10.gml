/// @description Activate entity
is_active = true;
		
// randomly align entity with one of its playfield's columns
var random_column_index = 
	irandom_range(0, global.game_settings.column_count - 1);

x = generator.playfield.columns[random_column_index].x;
x += 8; // half of the difference between the column and energy/entity widths
		
// tie it to that column
column_index = random_column_index;
		
// randomize the speed within a range specific to the entity type
vertical_speed = random_range(
	minimum_speed / game_get_speed(gamespeed_fps), 
	maximum_speed / game_get_speed(gamespeed_fps)
);
		
y = 100;