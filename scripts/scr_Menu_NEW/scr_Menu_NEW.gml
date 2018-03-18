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
		
		label_strings[i] = label_string;
		
		label_states[i] = menu_item_state_unselected;
		label_font_weights[i] = menu_item_font_weight_min;
	}
	
	label_states[0] = menu_item_state_selected;
	label_font_weights[0] = menu_item_font_weight_max;
	
	slide_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
	var slide_direction = choose(slide_left, slide_right);
	
	for (var i = 0; i < item_count; i++) {
		scr_Splitsfont_Set_Tweaks(
			label_strings[i],
			[
				menu_item_splitsfont_size,
				label_font_weights[i],
				menu_item_splitsfont_kern,
				menu_item_splitsfont_rotationSpeed,
				menu_item_splitsfont_angle
			]
		);
		
		label_x_paths[i] = scr_SlideTween_Add_Default_Path(
			slide_tween, label_strings[i], slide_direction);
			
		if (slide_right == slide_direction) {
			slide_direction = slide_left;
		}
		else {
			slide_direction = slide_right;
		}
	}
}

return new_menu;