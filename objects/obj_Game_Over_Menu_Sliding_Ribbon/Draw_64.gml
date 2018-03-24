/// @description Draw high score and check steam strings along with the standard stuff
if (srs_inactive == state) exit;

event_inherited();

scr_Splitsfont_Draw_String(
	too_bad_string,
	too_bad_string_x, too_bad_string_y
);

scr_Splitsfont_Draw_String(
	check_steam_string,
	check_steam_string_x, check_steam_string_y
);