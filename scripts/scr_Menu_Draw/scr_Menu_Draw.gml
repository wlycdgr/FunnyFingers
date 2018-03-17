// @function scr_Menu_Draw(menu_id);
// @param {integer} menu_id The id of the menu to draw

var menu = argument0;

for (var i = 0; i < menu.item_count; i++) {
	scr_Splitsfont_Draw_String(
		menu.label_strings[i],
		menu.x, menu.label_y_positions[i]
	);
	
	if (i == menu.index) {
		draw_rectangle(
			menu.x - 28, menu.label_y_positions[i],
			menu.x - 4, menu.label_y_positions[i] + 24,
			false
		);
	}
}