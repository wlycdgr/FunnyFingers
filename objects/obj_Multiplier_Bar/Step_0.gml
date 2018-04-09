/// @description Drain bar
if (global.steam_overlay_activated) exit;

if (gs_playing != global.game.state) exit;

// Column fill multiplier stuff
column_fill_multiplier = 0.0;
for (var i = 0; i < global.game_settings.column_count; i++) {
	column_fill_multiplier += playfield.columns[i].fullness;
}
column_fill_multiplier = floor(column_fill_multiplier) + 1;

// Move multiplier stuff
if (fully_drained) exit;

if (is_refilling) {
	fill_x += current_fill_per_frame;
	
	if (fill_x >= width) {
		fill_x = width;
		is_refilling = false;
	}
}

fill_x -= current_drain_per_frame;

if (fill_x <= 0) {
	event_user(12);
}