/// @description Init
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "PAUSED");
scr_Splitsfont_Set_Tweaks(header_string, [0.1, 0.005, 0.2, 0, 0]);

var menu_y_pos = 
	y + sliding_ribbon_height -
	(3.5 * menu_vertical_spacing);

menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), menu_y_pos,
	["CONTINUE", "PLAY AGAIN", "MAIN MENU"],
	menu_is_not_tweened
);

event_inherited();

