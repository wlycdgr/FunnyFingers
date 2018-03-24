/// @description Init header and menu
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "GAME OVER");
scr_Splitsfont_Set_Tweaks(header_string, [0.06, 0.038, 0.06, 0, 0]);

too_bad_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(too_bad_string, "TO GIVE UP MAY BE SHAMEFUL BUT TO PERSIST MAY BE FOOLISH");
scr_Splitsfont_Set_Tweaks(too_bad_string, [0.025, 0.003, 0.004, 0, 30]);
too_bad_string_y = 0.5 * window_height;
too_bad_string_x_offset =
	(sliding_ribbon_width / 2) - 
	(scr_Splitsfont_Get_Width(too_bad_string) / 2);
too_bad_string_x = x + too_bad_string_x_offset;

check_steam_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(
	check_steam_string,
	"CHECK THE LEADERBOARDS IN THE STEAM CLIENT TO SEE HOW YOU STACK UP"
);
scr_Splitsfont_Set_Tweaks(check_steam_string, [0.015, 0.001, 0.008, 0, 0]);
check_steam_string_y = 0.97 * window_height;
check_steam_string_x_offset =
	(sliding_ribbon_width / 2) - 
	(scr_Splitsfont_Get_Width(check_steam_string) / 2);
check_steam_string_x = x + check_steam_string_x_offset;

//sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, header_string);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, new_high_score_string);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, check_steam_string);

var menu_y_pos = 
	y + sliding_ribbon_height -
	(2.5 * menu_vertical_spacing);
	
menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), menu_y_pos,
	["TRY AGAIN", "MAIN MENU"],
	menu_is_not_tweened
);

event_inherited();

header_string_y = 0.32 * window_height;