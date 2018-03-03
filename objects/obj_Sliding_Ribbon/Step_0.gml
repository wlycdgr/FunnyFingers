/// @description Slide in/out

// rms_inactive, rms_selection_made: do nothing!
if (state == srs_sliding_in || state == srs_sliding_out) {
	menu.x = x + (sliding_ribbon_width / 2);
	header.x = x + (sliding_ribbon_width / 2);
}

switch(state){
case srs_ready:
	scr_Menu_Scroll(menu);
	if (scr_Menu_Selection_Made(menu)) {
		state = srs_selection_made;
	}
	break;
	
case srs_sliding_in:
	x -= sliding_ribbon_slide_in_speed_in_pixels_per_frame;
	if (x <= slide_in_x_target) {
		x = slide_in_x_target;
		state = srs_ready;
	}
	break;
	
case srs_sliding_out:
	x -= sliding_ribbon_slide_out_speed_in_pixels_per_frame;
	if (x <= -sliding_ribbon_width) { 
		state = srs_inactive;
	}
	break;
}