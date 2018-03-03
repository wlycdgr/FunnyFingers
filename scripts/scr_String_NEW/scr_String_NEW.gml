/// @function scr_String_NEW(layer, x, y, h_alignment, text, font, color);
var new_string = instance_create_layer(0, 0, argument0, obj_String);

new_string.text = argument4;
new_string.font = argument5;
new_string.color = argument6;

new_string.x = argument1;
new_string.y = argument2;

draw_set_font(new_string.font);
var new_string_width = string_width(new_string.text);
switch (argument3) { // alignment
case fa_left:
	// the x position is already correct, so
	// do nothing :)
	break;
case fa_center:
	new_string.x -= new_string_width / 2;
	break;
case fa_right:
	new_string.x -= new_string_width;
	break;
}

return new_string;