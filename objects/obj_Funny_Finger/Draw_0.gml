/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite_index, 0, x, y);

if (has_armor) {
	draw_set_color(c_blue);
	draw_rectangle(x, y, x + 32, y + 8, false);
	draw_rectangle(x, y, x + 4, y + 512, false);
	draw_rectangle(x + 29, y, x + 32, y + 512, false);
}