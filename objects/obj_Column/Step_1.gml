/// @description Insert description here
// You can write your code in this editor
// If the Steam overlay is activated, suspend all opertions
if (global.steam_overlay_activated) exit;

// If the game is paused, over, etc we don't need to update
if (gs_playing != global.game.state) exit;

occupied_last_frame = occupied;