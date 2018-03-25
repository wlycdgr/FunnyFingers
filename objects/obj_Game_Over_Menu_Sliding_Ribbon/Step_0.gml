/// @description Slide in/out
if (global.steam_overlay_activated) exit;

event_inherited();

// rms_inactive, rms_selection_made: do nothing!
if (state == srs_sliding_in || state == srs_sliding_out) {
	switch(ribbon_state) {
	case gors_cool:
		great_job_string_x = slide_path.value + great_job_string_x_offset;
		break;
		
	case gors_new_high_score:
		new_high_score_string_x = slide_path.value + new_high_score_string_x_offset;
		break;
		
	case gors_too_bad:
		too_bad_string_x = slide_path.value + too_bad_string_x_offset;
		break;
		
	default:
		break;
	}
	
	check_steam_string_x = slide_path.value + check_steam_string_x_offset;
}