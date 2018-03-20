/// @description Slide in/out
if (global.steam_overlay_activated) exit;

// rms_inactive, rms_selection_made: do nothing!
if (state == srs_sliding_in || state == srs_sliding_out) {
	menu.x = slide_path.value + (sliding_ribbon_width / 2);
	header_string_x = slide_path.value + header_string_x_offset;
}

switch(state){
case srs_sliding_in:
	if (slide_tween.paused) {
		state = srs_ready;
	}
	
	scr_Menu_Scroll(menu);
	if (scr_Menu_Selection_Made(menu)) {
		state = srs_selection_made;
	}
	
	break;
	
case srs_ready:
	scr_Menu_Scroll(menu);
	if (scr_Menu_Selection_Made(menu)) {
		state = srs_selection_made;
	}
	break;

case srs_sliding_out:
	if (
		slide_path.value < -window_width || 
		slide_tween.complete
	) {
		slide_tween.active = false;
		state = srs_inactive;
	}
	break;
}