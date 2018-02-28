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
for (var i = 0; i < tabs_item_count; i++){
	if (i == tabs_item_index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(
		100 + i * 300,
		playfield_y + 50,
		tabs_item_labels[i]
	);	
}
draw_set_color(c_black);

// draw SCORES
draw_set_font(global.font_menu_item);
draw_set_color(the_color_of_information);
with (global.steam){
	var len = array_length_1d(high_score_leaderboard_names);
	var y_pos = 0;
	for (var i = 0; i < len; i++) {
		y_pos = playfield_y + 75 + i * 15;		
		draw_text (
			100, y_pos,
			string(high_score_leaderboard_ranks[i]) + "."
		);
		
		draw_text (
			200, y_pos,
			high_score_leaderboard_names[i]
		);
		
		draw_text (
			500, y_pos,
			string(high_score_leaderboard_scores[i])
		);
	}
}
scr_Draw_Menu(menu_item_index, menu_item_count, menu_item_labels);