/// @description Init
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "LEVEL 99 UNLOCKED");
scr_Splitsfont_Set_Tweaks(header_string, [0.1, 0.005, 0.2, 0, 0]);

quote_1 = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "THE WISDOM OF CIRCLMASTR");
scr_Splitsfont_Set_Tweaks(header_string, [0.1, 0.005, 0.2, 0, 0]);
quote_1_y = 0.5 * window_height;
quote_1_x_offset =
	(sliding_ribbon_width / 2) - 
	(scr_Splitsfont_Get_Width(quote_1) / 2);
quote_1_x = x + quote_1_x_offset;

var menu_y_pos = 
	y + sliding_ribbon_height -
	(2.5 * menu_vertical_spacing);

menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), menu_y_pos,
	["PLAY AGAIN", "MAIN MENU"],
	menu_is_not_tweened
);

event_inherited();
