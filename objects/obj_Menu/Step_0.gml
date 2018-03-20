/// @description Update label positions if this menu is part of a ribbon and is not tweened
if (!tweened) {
	for (var i = 0; i < item_count; i++) {
		label_x_positions[i] = x - label_half_widths[i];
	}
}