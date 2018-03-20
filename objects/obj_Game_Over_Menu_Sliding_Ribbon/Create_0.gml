/// @description Init header and menu
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "GAME OVER");
scr_Splitsfont_Set_Tweaks(header_string, [0.17, 0.04, 0.07, 0, 0]);

var menu_y_pos = 
	y + sliding_ribbon_height -
	2.5 * menu_vertical_spacing;
	
menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), menu_y_pos,
	["TRY AGAIN", "MAIN MENU"],
	menu_is_not_tweened
);

event_inherited();