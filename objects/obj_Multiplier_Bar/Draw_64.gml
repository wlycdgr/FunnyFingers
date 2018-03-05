/// @description Draw the bar!

draw_set_color(c_black);
draw_rectangle(x, y, x + width, y + 32, true);
draw_rectangle(x, y, x + fill_x, y + 32, false); 

draw_set_halign(fa_left);
draw_text(x, y + 48, "Multiplier x" + string(multiplier));