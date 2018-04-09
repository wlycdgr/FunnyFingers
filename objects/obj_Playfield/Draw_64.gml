/// @description Draw masks & bottom of playfield
draw_set_color(c_white);
draw_rectangle(x, 0, right_x, y, false);
draw_rectangle(x, playfield_bottom_y, right_x, window_height, false);

draw_set_color(c_black);
draw_rectangle(x, playfield_bottom_y, right_x, bottom_bar_bottom_y, false);
