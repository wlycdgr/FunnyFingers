/// @description Insert description here
// You can write your code in this editor
// If the Steam overlay is activated, suspend all opertions
if (global.steam_overlay_activated) exit;

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

if (growing) {
	fullness += growth;
	if (fullness >= target_fullness) { 
		growing = false;
	}
}
else {
	fullness = max(0.0, fullness - decay);
}