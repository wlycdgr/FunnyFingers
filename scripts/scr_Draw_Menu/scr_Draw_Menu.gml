// @function scr_Draw_Menu(menu_item_index, menu_item_count, menu_item_labels)
// @param {integer} menu_item_index The index of the currently selected menu item
// @param {integer} menu_item_count The number of items in the menu
// @param menu_item_labels An array of menu item label strings

draw_set_font(global.font_menu_item);
for (var i = 0; i < argument1; i++) {
	if (i == argument0) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	var item_label = argument2[i];
	draw_text(
		window_x_center - (string_width(item_label) / 2), 
		550 + i * 35, 
		item_label
	);
}
