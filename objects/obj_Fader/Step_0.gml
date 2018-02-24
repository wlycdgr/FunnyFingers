/// @description Fade in / out if necessary

switch (state) {
case fs_fading_in:
	opacity -= 0.04; // fade_in_amount_per_frame;
	if (opacity <= 0.05) {
		opacity = 0.05;
		state = fs_done;
	}
	break;
	
case fs_fading_out:
	opacity += 0.04;
	if (opacity >= 0.95) {
		opacity = 0.95;
		state = fs_done;
	}
	break;
}