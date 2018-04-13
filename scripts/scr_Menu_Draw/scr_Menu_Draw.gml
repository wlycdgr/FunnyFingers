// @function scr_Menu_Draw(menu_id);
// @param {integer} menu_id The id of the menu to draw

if (!argument0.should_draw) exit;

with (argument0) {
	for (var i = 0; i < item_count; i++) {
		if (tweened) {
			scr_Splitsfont_Draw_String(
				label_strings[i],
				label_x_paths[i].value, label_y_positions[i]
			);
		}
		
		else {
			scr_Splitsfont_Draw_String(
				label_strings[i],
				label_x_positions[i], label_y_positions[i]
			);
		}
	}
}