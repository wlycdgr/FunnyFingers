/// @description Insert description here
// You can write your code in this editor
// If the Steam overlay is activated, suspend all opertions
if (global.steam_overlay_activated) exit;

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

if (occupied && !occupied_last_frame && !growing) { 
	target_fullness = min(1.0, fullness + 0.5);
	growing = true;
}