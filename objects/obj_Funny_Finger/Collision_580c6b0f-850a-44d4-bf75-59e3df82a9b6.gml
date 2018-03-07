/// @description Lose armor or kaput
if (!is_moving) {
	if (armor_top) {
		armor_top = false;
		with (playfield.multiplier_bar) { event_user(12); } // reset multiplier!
	}
	else {
		is_not_funny_anymore = true;
	}
}

else {
	if (target_x > source_x) {
		if (armor_right) {
			armor_right = false;
			with (playfield.multiplier_bar) { event_user(12); } // reset multiplier!
		}
		else {
			is_not_funny_anymore = true;
		}
	}
	
	else if (target_x < source_x) {
		if (armor_left) {
			armor_left = false;
			with (playfield.multiplier_bar) { event_user(12); } // reset multiplier!
		}
		else {
			is_not_funny_anymore = true;
		}
	}
}

// is_not_funny_anymore = true;