/// @description Move if active

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

if (is_active) { 
	y += vertical_speed;
	
	if (y >= playfield_bottom_y){
		event_user(1);
	}
}