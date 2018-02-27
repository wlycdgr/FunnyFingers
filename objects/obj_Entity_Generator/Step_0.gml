/// @description Periodically activate new entities

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

counter_in_sec += 1 / game_fps;
if (counter_in_sec >= current_period_in_sec) { 
	for (var i = array_length_1d(entities) - 1; i > -1; i--) {
		if (entities[i].is_active) continue;
		
		with (entities[i]) { event_user(0); } // activate entity
		
		event_user(0); // set period
		
		break;
	}
}