/// @description Insert description here
// You can write your code in this editor

draw_set_font(arial_8pt);
draw_set_color(the_color_of_information);
draw_set_halign(fa_left);

draw_text(5, 100, "TWEAK TWEAK TWEAK");

for (var i = 0; i < item_count; i++) {
	if (i == item_index) { draw_set_color(menu_color_selected); }
	else { draw_set_color(menu_color_unselected); }
	
	draw_text(5, 120 + i * 15, item_labels[i] + ": " + string(item_values[i]));
}
