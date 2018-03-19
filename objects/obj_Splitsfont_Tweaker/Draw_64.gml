/// @description Draw tweak menu
if (!draw_tweak_info) exit;

draw_set_font(arial_8pt);

var section_top_y = 0;

for (var i = 0; i < 7; i++) {
	draw_set_color(c_black);
	section_top_y = 10 + i * 90;
	draw_text(
		5, section_top_y,
		"String " + string(i) + ": "
	);
	
	var j_start = i * 6;
	var j_end = j_start + 6;
	for (var j = j_start; j < j_end; j++) {
		if (menu_index == j) {
			draw_set_color(menu_color_selected);
		}
		else {
			draw_set_color(menu_color_unselected);
		}
		
		draw_text(
			5, section_top_y + 12 + 12 * (j - j_start),
			menu_labels[j - j_start] + string(100 * values[j])
		);
	}
}

var right_offset = window_width - 100;
for (var i = 7; i < sf_strings_count; i++) {
	draw_set_color(c_black);
	section_top_y = 10 + ((i-7) * 90);
	draw_text(
		right_offset, section_top_y,
		"String " + string(i) + ": "
	);
	
	var j_start = i * 6;
	var j_end = j_start + 6;
	for (var j = j_start; j < j_end; j++) {
		if (menu_index == j) {
			draw_set_color(menu_color_selected);
		}
		else {
			draw_set_color(menu_color_unselected);
		}
		
		draw_text(
			right_offset, section_top_y + 12 + 12 * (j - j_start),
			menu_labels[j - j_start] + string(100 * values[j])
		);
	}
}