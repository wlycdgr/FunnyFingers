/// @param {real} generator Id of the generator

argument0.counter += 1;

if (argument0.counter >= argument0.current_period){
	for (i = array_length_1d(argument0.entities) - 1; i > -1; i--){
		if (argument0.entities[i].is_active) continue;
		
		// activate entity
		argument0.entities[i].is_active = true;
		
		// randomly align it with one of the playfield columns
		random_column_index = irandom_range(0, array_length_1d(argument0.playfield.columns) - 1);
		argument0.entities[i].x = argument0.playfield.columns[random_column_index].x;
		argument0.entities[i].x +=
			(sprite_get_width(spr_column) - 
			sprite_get_width(argument0.entities[i].sprite_index)) / 2;
		
		// tie it to that column
		argument0.entities[i].column_index = random_column_index;
		
		// randomize the speed within a range specific to the entity type
		argument0.entities[i].vertical_speed = random_range(
			argument0.minimum_entity_speed / game_get_speed(gamespeed_fps), 
			argument0.maximum_entity_speed / game_get_speed(gamespeed_fps)
		);
		
		argument0.entities[i].y = 100;
		
		break;
	}
	
	argument0.counter = 0;
	argument0.current_period = 
		irandom_range(argument0.minimum_period, argument0.maximum_period);
}