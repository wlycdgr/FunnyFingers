/// @function scr_Menu_NEW(x, y, labels_array);

var new_menu = instance_create_layer(argument0, argument1, "Menus", obj_Menu);

with (new_menu) {
	active = true;
	labels = argument2;
	item_count = array_length_1d(labels);
	index = 0;

	var menu_label_sprite = -1;
	for (var i = 0; i < item_count; i++) {
		label_y_positions[i] = y + menu_vertical_spacing * i;
	
		switch(labels[i]){
		case "Achievements": 
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_achievements_sprite;
			break;
		case "Cashout!":
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_cashout_sprite;
		case "Continue":
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_continue_sprite;
			break;
		
		// TODO this is stub
		case "Exit":
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_try_again_sprite;
			break;
			
			
		case "High Scores": 
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_high_scores_sprite;
			break;
		case "Main Menu":
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_main_menu_sprite;
			break;
		case "Play": 
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_play_sprite;
			break;
		case "Try Again":
			label_sprites[i] = global.sprites_and_fonts.menu_item_label_try_again_sprite;
			break;
		}
	}
}

return new_menu;