/// @description Init
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "PAUSED");

menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), y + 150,
	["CONTINUE", "TRY AGAIN", "MAIN MENU"],
	menu_is_not_tweened
);

event_inherited();

