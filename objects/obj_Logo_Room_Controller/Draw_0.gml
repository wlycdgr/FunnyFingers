/// @description Draw the logo
for (var i = 0; i < 4; i++) {
	scr_Splitsfont_Draw_String(
		slides[slide_index, i],
		(x_paths[slide_index, i]).value,
		slides_y[slide_index, i] * window_height
	);
}

if (!draw_tweak_info) exit;

//var section_top_y = 0;
//for (var i = 0; i < 4; i++) {
//	draw_set_color(c_black);
//	section_top_y = 50 + i * 150;
//	draw_text(
//		5, section_top_y, 
//		"String " + string(i) + ": "
//	);
	
//	for (var j = 0; j < 5; j++) {
//		if ((i * 5) + j == tweak_menu_index) {
//			draw_set_color(menu_color_selected);
//		}
//		else {
//			draw_set_color(menu_color_unselected);
//		}
		
//		draw_text(
//			5, section_top_y + 20 + j * 20,
//			tweak_menu_labels[j] + string(tweak_values_1[i, j])
//		);
//	}
//}

//draw_text(5, 680, "Names angle: " + string(names_angle));
//draw_text(5, 700, "Slide state: " + string(slide_state));