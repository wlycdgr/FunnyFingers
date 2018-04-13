/// @description Init
//draw_debug = true;
//step_debug = true;

// overlay stuff
global.steam_overlay_activated = false;

// stat stuff
stat_lifetime_cool_points = not_set;
stat_easy_high_score = not_set;
stat_medium_high_score = not_set;
stat_hard_high_score = not_set;
stat_difficult_high_score = not_set;

// unlock status
unlocked = ds_map_create();

ach_unlock_states_retrieved = false;

// achievements stuff
ach_api_names = [
	"ach_0_the_challenger",
	"ach_1_the_lucky_loser",
	"ach_2_the_qualifier",
	"ach_3_the_wildcard",
	"ach_4_the_up_and_comer",
	"ach_5_the_breakout_performer",
	"ach_6_the_pro",
	"ach_7_the_contender",
	"ach_8_the_champion",
	"ach_9_the_hall_of_famer",
	"ach_10_the_living_legend",
	"ach_11_fignermukcre",
	"ach_12_no_pressure",
	"ach_13_level_99",
	"ach_14_qweiop"
];

ach_names = [
	"THE CHALLENGER",
	"THE LUCKY LOSER",
	"THE QUALIFIER",
	"THE WILDCARD",
	"THE UP AND COMER",
	"THE BREAKOUT PERFORMER",
	"THE PRO",
	"THE CONTENDER",
	"THE CHAMPION",
	"THE HALL OF FAMER",
	"THE LIVING LEGEND",
	"FIGNERMUKCRE",
	"NO PRESSURE",
	"LEVEL 99",
	"QWEIOP"
];

ach_debug_names = [
	"0. The Challenger: ",
	"1. The Lucky Loser: ",
	"3. The Qualifier: ",
	"4. The Wildcard: ",
	"5. The Up And Comer: ",
	"6. The Breakout Performer: ",
	"7. The Pro: ",
	"8. The Contender: ",
	"9. The Champion: ",
	"A. The Hall Of Famer: ",
	"S. The Living Legend: ",
	"D. Fignermukcre: ",
	"G. No Pressure: ",
	"H. Level 99: ",
	"J. QWEIOP: "
];

// Steam screenshot counter
screenshot_number = 0;

// Steam connection status and properites
is_initialised = false;
are_stats_ready = false
ach_unlock_states_retrieved = false;
is_overlay_enabled = false;
persona_name = "DEFAULT";
user_steam_id = -1;
is_user_logged_on = false;
app_id = -1;
user_account_id = -1;

