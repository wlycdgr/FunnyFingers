/// @description Insert description here
// You can write your code in this editor

// draw HEADER
draw_set_font(global.font_leaderboards_header);
draw_set_color(the_color_of_information);
draw_text(
	header_string_x_pos,
	playfield_y,
	header_string
);

// draw TABS
draw_set_font(global.font_menu_header);
for (i = 0; i < tabs_item_count; i++){
	if (i == tabs_item_index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(
		100 + i * 300,
		playfield_y + 50,
		tabs_item_labels[i]
	);	
}
draw_set_color(c_black);

draw_set_font(global.font_score);
draw_text(
	header_string_x_pos, 
	playfield_y + 300, 
	"Came from: " + room_get_name(global.fader.last_room)
);

scr_Draw_Menu(menu_item_index, menu_item_count, menu_item_labels);