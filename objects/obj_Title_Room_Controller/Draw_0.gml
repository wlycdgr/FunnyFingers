/// @description Draw menu
draw_set_font(global.font_menu_item);

for (var i = 0; i < menu_item_count; i++) {
	if (i == menu_item_index) { 
		draw_set_color(menu_color_selected);
	}
	else { draw_set_color(menu_color_unselected); }
	
	var item_label = menu_item_labels[i];
	draw_text(
		window_x_center - (string_width(item_label) / 2), 
		550 + i * 35, 
		item_label
	);
}

draw_set_color(c_black);