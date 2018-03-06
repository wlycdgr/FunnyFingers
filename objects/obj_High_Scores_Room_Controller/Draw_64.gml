/// @description Insert description here
// You can write your code in this editor

// draw HEADER
scr_String_Draw(header);

// Leaderboards ribbon
draw_set_font(global.font_menu_header);
for (var i = 0; i < leaderboards_ribbon_count; i++){
	if (i == leaderboards_ribbon_index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(
		100 + i * 200,
		playfield_y + 50,
		leaderboards_ribbon_labels[i]
	);	
}
draw_set_color(c_black);

// Leaderboard filters ribbon
for (var i = 0; i < filters_ribbon_count; i++){
	if (i == filters_ribbon_index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(
		100 + i * 300,
		playfield_y + 100,
		filters_ribbon_labels[i]
	);	
}
draw_set_color(c_black);

// draw SCORES
draw_set_font(global.font_menu_item);
draw_set_color(the_color_of_information);
with (global.steam){
	if (0 == hs_count) {
		draw_text(100, playfield_y + 150, "No entries yet");
	}
	else {
		var y_pos = 0;
		for (var i = 0; i < hs_count; i++) {
			y_pos = playfield_y + 75 + i * 15;		
			draw_text (
				100, y_pos,
				string(hs_ranks[i]) + "."
			);
		
			draw_text (
				200, y_pos,
				hs_names[i]
			);
		
			draw_text (
				500, y_pos,
				string(hs_scores[i])
			);
		}
	}
}

scr_Menu_Draw(menu);