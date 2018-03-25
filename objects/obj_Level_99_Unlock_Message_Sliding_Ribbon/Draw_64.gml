/// @description Draw high score and check steam strings along with the standard stuff
if (srs_inactive == state) exit;

event_inherited();

scr_Splitsfont_Draw_String(
	quote_1,
	quote_1_x, quote_1_y
);