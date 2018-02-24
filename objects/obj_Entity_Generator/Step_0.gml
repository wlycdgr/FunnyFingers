/// @description Periodically activate new entities

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

counter += 1;
if (counter >= current_period) { 
	for (var i = array_length_1d(entities) - 1; i > -1; i--) {
		if (entities[i].is_active) continue;
		
		with (entities[i]) { event_user(0); } // activate entity
		
		counter = 0;
		current_period = irandom_range(minimum_period, maximum_period);
		
		break;
	}
}