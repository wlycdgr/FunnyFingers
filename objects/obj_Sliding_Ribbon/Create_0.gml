/// @description Init
slide_in_x_target = (window_width - sliding_ribbon_width) / 2;

header_sprite_y = y + 50;
header_sprite_x_offset =
	(sliding_ribbon_width / 2 ) -
	(sprite_get_width(header_sprite) / 2);
header_sprite_x = x + header_sprite_x_offset;

menu.active = false;