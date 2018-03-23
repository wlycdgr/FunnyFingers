/// @description Draw masks
draw_set_color(c_white);
draw_rectangle(x, 0, x + width, y, false);
draw_rectangle(x, playfield_bottom_y, x + width, window_height, false);

draw_set_color(c_black);
draw_line_width(x, playfield_bottom_y, x + width, playfield_bottom_y, 4);