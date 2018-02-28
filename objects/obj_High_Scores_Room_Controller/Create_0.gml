/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.font_leaderboards_header);
header_string = "High Scores";
header_string_width = string_width(header_string);
header_string_x_pos = window_x_center - (header_string_width / 2);

menu_item_index = 0;
menu_item_labels = ["Play", "Title"];
menu_item_count = array_length_1d(menu_item_labels);
menu_selection_made = false;