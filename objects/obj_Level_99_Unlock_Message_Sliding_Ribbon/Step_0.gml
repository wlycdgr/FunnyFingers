/// @description Slide in/out
if (global.steam_overlay_activated) exit;

event_inherited();

if (state == srs_sliding_in || state == srs_sliding_out) {
	quote_1_x = slide_path.value + quote_1_x_offset;
}