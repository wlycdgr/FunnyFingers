/// @description Update label positions if this menu is part of a ribbon and is not tweened
if (!tweened) {
	for (var i = 0; i < item_count; i++) {
		label_x_positions[i] = x - label_half_widths[i];
		
		label_y_positions[i] = y + menu_vertical_spacing * i;
	}
}

if (keyboard_check_pressed(ord("V"))) {
	if (y == 0.8 * window_height) {
		y = window_height * 2;
	}
	else {
		y = 0.8 * window_height;
	}
	
	for (var i = 0; i < item_count; i++) {
		label_y_positions[i] = y + menu_vertical_spacing * i;
	}
}
