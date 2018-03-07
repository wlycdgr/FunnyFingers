/// @description Init
draw_debug = false;

high_scores_get_id = not_set;
user_high_score_get_id = not_set;

hs_names = array_create(10, "");
hs_ranks = array_create(10, 0);
hs_scores = array_create(10, 0);
hs_count = 0;

ach_api_names = [
	"ach_0_qweiop",
	"ach_1_the_dabbler",
	"ach_2_the_qualifier",
	"ach_3_the_up_and_comer",
	"ach_4_fignermukcre",
	"ach_5_triple_up",
	"ach_6_best_friend",
	"ach_7_no_pressure",
	"ach_8_the_score_is_right",
	"ach_9_a_longest_word",
	"ach_10_level_99"
];
ach_count = array_length_1d(ach_api_names);

for (var i = 0; i < ach_count; i++) {
	unlocked[i] = steam_get_achievement(ach_api_names[i]);
}

ach_names = [
	"QWEIOP",
	"The Dabbler",
	"The Qualifier",
	"The Up And Comer",
	"Fignermukcre",
	"Triple Up",
	"Best Friend",
	"No Pressure",
	"The Score Is Right",
	"A Longest Word",
	"Level 99"
];

ach_debug_names = [
	"0. QWEIOP: ",
	"1. The Dabbler: ",
	"2. The Qualifier: ",
	"3. The Up And Comer: ",
	"4. Fignermukcre: ",
	"5. Triple Up: ",
	"6. Best Friend: ",
	"7. No Pressure: ",
	"8. The Score Is Right: ",
	"9. A Longest Word: ",
	"Z. Level 99: ",
];

event_user(0);
