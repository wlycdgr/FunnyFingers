/// @description Slide in/out
if (global.steam_overlay_activated) exit;

event_inherited();

if (state == srs_sliding_in || state == srs_sliding_out) {
	for (var i = 0; i < quote_lines_count; i++) {
		quote_x_positions[i] = slide_path.value + quote_x_offsets[i];
	}
}