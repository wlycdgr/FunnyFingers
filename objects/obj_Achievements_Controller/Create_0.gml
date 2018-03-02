/// @description Insert description here
// You can write your code in this editor
scr_Init_Header(id, "Achievements");
scr_Init_Menu(id, ["Play", "High Scores", "Title"]);

var ach_steam_api_names = [
	"ach_0_qweiop",
	"ach_1_the_dabbler",
	"ach_2_the_qualifier",
	"ach_3_the_up_and_comer",
	"ach_4_fignermukcre",
	"ach_5_triple_up",
	"ach_6_i_coulda_been_a_contender",
	"ach_7_best_friend",
	"ach_8_fenix_fingers",
	"ach_9_the_score_is_right",
	"ach_10_a_longest_word",
	"ach_11_level_99"
];
var len = array_length_1d(ach_steam_api_names);

for (var i = 0; i < len; i++) {
	if (steam_get_achievement(ach_steam_api_names[i])) {
		ach_sprites[i] = global.sprites_and_fonts.ach_unlocked_sprites[i];
	}
	else {
		ach_sprites[i] = global.sprites_and_fonts.ach_locked_sprites[i];
	}
}


ach_titles = [
	"QWEIOP",
	"The Dabbler",
	"The Qualifier",
	"The Up And Comer",
	"Fignermukcre",
	"Triple Up",
	"I Coulda Been A Contender",
	"Best Friend",
	"Fenix Fingers",
	"The Score Is Right",
	"A Longest Word",
	"Level 99"
];

ach_descriptions = [
	"Complete the controls tutorial.",
	"Score 5k on Easy, qualifying for the Easy leaderboard.",
	"Score 10k on Medium, qualifying for the Medium leaderboard.",
	"Score 20k on Hard, qualifying for the Hard leaderboard.",
	"Score 30k on Difficult, qualifying for the Fignermukcre leaderboard.",
	"On Medium, Cashout a score that is 3x+ your previous 10k+ high score.",
	"You took your One Shot on Medium, but failed to qualify for the Medium One Shot Leaderboard.",
	"Have the highest score on any Friends leaderboard with 10+ entries.",
	"Make a move in 10 sweet spots in a row.",
	"",
	"",
	"Accumulate a lifetime total of 2,452,814 points on Cool difficulty."
];