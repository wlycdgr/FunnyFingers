/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font_leaderboards_header);
draw_set_color(the_color_of_information);
draw_text(
	header_string_x_pos,
	playfield_y,
	header_string
);

draw_set_font(global.font_score);
draw_text(
	header_string_x_pos, 
	playfield_y + 100, 
	"Came from: " + room_get_name(global.fader.last_room)
);

scr_Draw_Menu(menu_item_index, menu_item_count, menu_item_labels);