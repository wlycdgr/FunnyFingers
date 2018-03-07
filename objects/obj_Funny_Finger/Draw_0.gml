/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index, 0, x, y);

if (armor_top) {
	draw_set_color(c_red);
	draw_rectangle(x, y, x + 32, y + 8, false);
}

if (armor_left) {
	draw_set_color(c_blue);
	draw_rectangle(x, y, x + 4, y + 512, false);
}

if (armor_right) {
	draw_set_color(c_green);
	draw_rectangle(x + 29, y, x + 32, y + 512, false);
}