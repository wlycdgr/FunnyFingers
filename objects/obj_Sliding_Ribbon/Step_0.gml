/// @description Slide in/out
if (global.steam_overlay_activated) exit;

//if (keyboard_check_pressed(ord("P"))){
//	header_font_size += 0.01;
//}
//else if (keyboard_check_pressed(ord("O"))){
//	header_font_weight += 0.001;
//}
//else if (keyboard_check_pressed(ord("I"))){
//	header_font_kern += 0.01;
//}
//else if (keyboard_check_pressed(ord("U"))){
//	header_font_angle += 1;
//}

//else if (keyboard_check_pressed(ord("Q"))){
//	header_font_size -= 0.01;
//}
//else if (keyboard_check_pressed(ord("W"))){
//	header_font_weight -= 0.001;
//}
//else if (keyboard_check_pressed(ord("E"))){
//	header_font_kern -= 0.01;
//}
//else if (keyboard_check_pressed(ord("R"))){
//	header_font_angle -= 1;
//}

//scr_Splitsfont_Set_Tweaks(header_string, [header_font_size, header_font_weight, header_font_kern, header_font_angle, 0]);

//header_string_x_offset = 
//	(sliding_ribbon_width / 2) -
//	(scr_Splitsfont_Get_Width(header_string) / 2);
//header_string_x = x + header_string_x_offset;

//if (keyboard_check_pressed(ord("C"))) {
//	header_string_y += 1;
//}
//else if (keyboard_check_pressed(ord("D"))) {
//	header_string_y -= 1;
//}

// rms_inactive, rms_selection_made: do nothing!
if (state == srs_sliding_in || state == srs_sliding_out) {
	menu.x = x + (sliding_ribbon_width / 2);
	header_string_x = x + header_string_x_offset;
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
		event_user(1);
	}
	break;
	
case srs_sliding_out:
	x -= sliding_ribbon_slide_out_speed_in_pixels_per_frame;
	if (x <= -sliding_ribbon_width) { 
		state = srs_inactive;
	}
	break;
}