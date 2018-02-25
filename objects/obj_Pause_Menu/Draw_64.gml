/// @description Draw score along with the rest
event_inherited();

if (1 == item_index) { // cursor is on "Cash Out"
	draw_set_font(global.font_menu_item);
	draw_set_color(the_color_of_information);
	var i_see = "End the game and save your score."
	draw_text(
		(x + ribbon_menu_width / 2) - (string_width(i_see) / 2),
		y + 300,
		i_see
	);
}