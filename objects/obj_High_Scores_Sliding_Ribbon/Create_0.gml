/// @description Init header and menu
event_inherited();

header = scr_String_NEW(
	"SlidingRibbons",
	x + (sliding_ribbon_width / 2), y + 50, 
	fa_center,
	"High Scores",
	global.font_leaderboards_header,
	c_black
);

menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), y + 150,
	["Try Again", "Exit To Title"]
);