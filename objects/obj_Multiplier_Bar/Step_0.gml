/// @description Drain bar
if (fully_drained) exit;

if (is_refilling) {
	fill_x += current_drain_per_frame * 5;
	
	if (fill_x >= width) {
		fill_x = width;
		is_refilling = false;
	}
}

fill_x -= current_drain_per_frame;

if (fill_x <= 0) {
	multiplier = max(mb_min_multiplier, multiplier - 1);
	
	if (mb_min_multiplier == multiplier) fully_drained = true;
	
	if (fully_drained) {
		fill_x = 0;
	}
	else {
		fill_x = width;
	}
}