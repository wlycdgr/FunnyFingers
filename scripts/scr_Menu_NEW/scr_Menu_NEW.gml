/// @function scr_Menu_NEW(x, y, labels_array);

var new_menu = instance_create_layer(argument0, argument1, "Menus", obj_Menu);

with (new_menu) {
	active = true;
	labels = argument2;
	item_count = array_length_1d(labels);
	index = 0;

	var label_string;
	for (var i = 0; i < item_count; i++) {
		label_y_positions[i] = y + menu_vertical_spacing * i;
		
		label_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
		
		scr_Splitsfont_Set_Text(label_string, labels[i]);
		
		scr_Splitsfont_Set_Tweaks(
			label_string,
			[
				menu_item_splitsfont_size,
				menu_item_splitsfont_weight,
				menu_item_splitsfont_kern,
				menu_item_splitsfont_rotationSpeed,
				menu_item_splitsfont_angle
			]
		);
		
		label_strings[i] = label_string;
	}
}

return new_menu;