/// @description Init
draw_debug = true;
step_debug = true;

// screenshot counter
screenshot_number = 0;

// connection status stuff
is_initialised = false;
are_stats_ready = false
ach_unlock_states_retrieved = false;

// stat stuff
stat_lifetime_cool_points = not_set;
stat_easy_frames = not_set;
stat_medium_frames = not_set;
stat_hard_frames = not_set;

// high score stuff
high_scores_get_id = not_set;
user_high_score_get_id = not_set;
hs_names = array_create(10, "");
hs_ranks = array_create(10, 0);
hs_scores = array_create(10, 0);
hs_count = 0;

// achievements stuff
ach_api_names = [
	"ach_0_qweiop",
	"ach_1_the_dabbler",
	"ach_2_the_qualifier",
	"ach_3_the_up_and_comer",
	"ach_4_fignermukcre",
	"ach_6_best_friend",
	"ach_7_no_pressure",
	"ach_8_the_score_is_right",
	"ach_9_a_longest_word",
	"ach_10_level_99"
];
ach_count = array_length_1d(ach_api_names);

ach_names = [
	"QWEIOP",
	"The Dabbler",
	"The Qualifier",
	"The Up And Comer",
	"Fignermukcre",
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
	"6. Best Friend: ",
	"7. No Pressure: ",
	"8. The Score Is Right: ",
	"9. A Longest Word: ",
	"Z. Level 99: ",
];