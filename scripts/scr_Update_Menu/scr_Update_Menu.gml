// @function scr_Update_Menu(menu);
// @param {integer} the id of the menu innstance we are updating

if (keyboard_check_pressed(vk_down)) { 
	argument0.menu_item_index = 
		(argument0.menu_item_index + 1) % 
		argument0.menu_item_count; 
}

else if (keyboard_check_pressed(vk_up)) { 
	argument0.menu_item_index = 
		(argument0.menu_item_index - 1 + argument0.menu_item_count) % 
		argument0.menu_item_count; 
}

else if (keyboard_check_pressed(vk_enter)) {
	argument0.menu_selection_made = true;
	
	switch (argument0.menu_item_labels[argument0.menu_item_index]) {
	case "Exit":
		game_end();
		break;
	
	case "High Scores":
		scr_Fade_To(r_High_Scores);
		break;
		
	case "Play":
		scr_Fade_To(r_Gameplay);
		break;

	case "Title":
		scr_Fade_To(r_MainMenu);
		break;
	}
}