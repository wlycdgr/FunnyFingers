/// @description Init
header = scr_String_NEW(
	"Instances",
	window_x_center, playfield_y, fa_center,
	"High Scores",
	global.font_leaderboards_header,
	c_black
);

menu = scr_Menu_NEW(
	window_x_center, 550, 
	["Play Game", "Achievements", "Title"]
);


leaderboards_ribbon_labels = 
	["Cool", "Easy", "Medium", "Hard", "Difficult"];
leaderboards_ribbon_count = array_length_1d(leaderboards_ribbon_labels);
if (global.steam.unlocked[steam_ach_The_Up_And_Comer]) { leaderboards_ribbon_index = 4; }
else if (global.steam.unlocked[steam_ach_The_Qualifier]) { leaderboards_ribbon_index = 3; }
else if (global.steam.unlocked[steam_ach_The_Dabbler]) { leaderboards_ribbon_index = 2; }
else { leaderboards_ribbon_index = 1; }


filters_ribbon_labels = ["Overall", "Around you", "Friends"];
filters_ribbon_count = array_length_1d(filters_ribbon_labels);
filters_ribbon_index = 1;

// To start with, load the around-user scores for the high scores table 
// for the highest unlocked difficulty level
event_user(0);