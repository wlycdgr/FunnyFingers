/// @description Insert description here

if (rms_inactive = state) exit;

draw_set_color(c_white);
draw_rectangle(
	x, y, 
	x + ribbon_menu_width, y + ribbon_menu_height,
	false
);

draw_set_color(c_black);
draw_line_width(
	x, y,
	x + ribbon_menu_width, y,
	5
);

draw_line_width(
	x, y + ribbon_menu_height - 5,
	x + ribbon_menu_width,  y + ribbon_menu_height - 5,
	5
);

draw_set_font(global.font_menu_header);
draw_set_color(c_black);
var center_x = x + ribbon_menu_width / 2;
draw_text(center_x, y + 20, header);

draw_set_font(global.font_menu_item);
for (var i = 0; i < array_length_1d(item_labels); i++) {
	if (i == item_index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(center_x, y + 50 + i * 15, item_labels[i]);
}