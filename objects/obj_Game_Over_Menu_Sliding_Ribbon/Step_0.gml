/// @description Slide in/out
if (global.steam_overlay_activated) exit;

event_inherited();

// rms_inactive, rms_selection_made: do nothing!
if (state == srs_sliding_in || state == srs_sliding_out) {
	too_bad_string_x = slide_path.value + too_bad_string_x_offset;
	check_steam_string_x = slide_path.value + check_steam_string_x_offset;
}