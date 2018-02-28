/// @function scr_Init_Menu(controller_id, labels_array);
/// @param {integer} controller_id The id of the controller that manages this menu
/// @param {Array} labels_array An array of strings that are the labels for the menu items
argument0.menu_item_index = 0;
argument0.menu_item_labels = argument1;
argument0.menu_item_count = array_length_1d(argument0.menu_item_labels);
argument0.menu_selection_made = false;