/// @description Move if active
if (global.steam_overlay_activated) exit;

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

if (is_active) { 
	y += vertical_speed;
	
	if (y >= playfield_bottom_y){
		event_user(1);
	}
}