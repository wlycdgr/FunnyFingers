// @function scr_Draw_Menu(menu_item_index, menu_item_count, menu_item_labels)
// @param {integer} menu_item_index The index of the currently selected menu item
// @param {integer} menu_item_count The number of items in the menu
// @param menu_item_labels An array of menu item label strings

// @function scr_Menu_Draw(menu_id);
// @param {integer} menu_id The id of the menu to draw

var menu = argument0;

draw_set_font(global.font_menu_item);
draw_set_halign(menu_halign);

for (var i = 0; i < menu.item_count; i++) {
	if (i == menu.index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(
		menu.x, menu.label_y_positions[i],
		menu.labels[i]
	);
}