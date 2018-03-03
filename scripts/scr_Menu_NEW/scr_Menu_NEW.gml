/// @function scr_Menu_NEW(x, y, labels_array);

new_menu = instance_create_layer(argument0, argument1, "Menus", obj_Menu);
new_menu.active = true;
new_menu.labels = argument2;
new_menu.item_count = array_length_1d(new_menu.labels);
new_menu.index = 0;
for (var i = 0; i < new_menu.item_count; i++) {
	new_menu.label_y_positions[i] = new_menu.y + menu_vertical_spacing * i;
}

return new_menu;