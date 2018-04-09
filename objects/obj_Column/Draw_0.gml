/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.05);
draw_rectangle(
	bar_x_left, playfield_bottom_y - (512 * fullness), 
	bar_x_right, playfield_bottom_y, 
	false
);
draw_set_alpha(1.0);