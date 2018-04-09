/// @function scr_Draw_Filled_Rectangle(x, y, width, height, color)
draw_set_color(argument4);
draw_rectangle(
	argument0, argument1,
	argument0 + argument2, argument1 + argument3,
	false
);
draw_set_color(c_black);