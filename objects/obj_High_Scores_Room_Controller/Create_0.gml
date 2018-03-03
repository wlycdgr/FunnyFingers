/// @description Init
header = scr_String_NEW(
	"Instances",
	window_x_center, playfield_y, fa_center,
	"High Scores",
	global.font_leaderboard_header,
	c_black
);

menu = scr_Menu_NEW(
	window_x_center, 550, 
	["Play", "Achievements", "Title"]
);

tabs_item_index = 0;
tabs_item_labels = ["Overall", "Around you", "Friends"];
tabs_item_count = array_length_1d(tabs_item_labels);

event_user(0); // load scores for selected tab