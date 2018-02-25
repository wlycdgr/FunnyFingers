/// @description Draw menu

draw_set_font(global.font_menu_item);

for (var i = 0; i < menu_item_count; i++) {
	if (i == menu_item_index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(window_width / 2, 500 + i * 25, menu_item_labels[i]);
}

draw_set_color(c_black);