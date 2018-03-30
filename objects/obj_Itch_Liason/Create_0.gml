/// @description Init
event_inherited();

ach_unlock_keys = [
	4959045945456490,
	4596245905690456,
	4590645945645478,
	8856145234643347,
	
	3486435693456937,
	9534556795623459,
	1234301593067684,
	5852347896767075,
	
	4385465780568806,
	1123484683485586,
	3485203458465656,
	3442486845645845,
	
	2348548684545685,
	8443563563456859,
	2485445484568798
];

var unlock_real_value = 0;
var unlock_bool_value = false;

ini_open("achievements.ini");

for (var i = 0; i < ach_count; i++) {
	unlock_real_value = ini_read_real("achievements", ach_api_names[i], 0);
	
	if (unlock_real_value == ach_unlock_keys[i]) { unlock_bool_value = true; }
	else { unlock_bool_value = false; }
	
	ds_map_add(unlocked, ach_api_names[i], unlock_bool_value);
}

ini_close();

ach_unlock_states_retrieved = true;


stats = ds_map_create();
has_stat_been_updated_since_last_save = ds_map_create();

stat_names = [
	"stat_lifetime_cool_points",
	"stat_lifetime_cool_points_runner_up",
	
	"stat_easy_high_score",
	"stat_easy_2nd_highest_score",
	"stat_easy_3rd_highest_score",
	"stat_easy_4th_highest_score",
	
	"stat_medium_high_score",
	"stat_medium_2nd_highest_score",
	"stat_medium_3rd_highest_score",
	"stat_medium_4th_highest_score",
	"stat_medium_5th_highest_score",
	"stat_medium_6th_highest_score",
	
	"stat_hard_high_score",
	"stat_hard_2nd_highest_score",
	"stat_hard_3nd_highest_score",
	"stat_hard_4th_highest_score",
	"stat_hard_5th_highest_score",
	"stat_hard_6th_highest_score",
	"stat_hard_7th_highest_score",
	"stat_hard_8th_highest_score",
	
	"stat_difficult_high_score",
	"stat_difficult_2nd_highest_score",
	"stat_difficult_3nd_highest_score",
	"stat_difficult_4th_highest_score",
	"stat_difficult_5th_highest_score",
	"stat_difficult_6th_highest_score",
	"stat_difficult_7th_highest_score",
	"stat_difficult_8th_highest_score",
	"stat_difficult_9th_highest_score",
	"stat_difficult_10th_highest_score",
];

initial_values = [
	-34831586,
	-65853823,
	
	-34846835,
	-53675670,
	-64845746,
	-67980541,
	
	-14505734,
	-12385866,
	-32640368,
	-10347689,
	-54459234,
	-12434699,
	
	-87955034,
	-34385486,
	-53965794,
	-12359479,
	-19396955,
	-67980542,
	-31293593,
	-23233333,
	
	-34882323,
	-78900000,
	-42182835,
	-12347890,
	-45699494,
	-41293596,
	-54798901,
	-45697796,
	-13253439,
	-89423501
];

stat_hash_names = [
"stat_lifetime_cool_points_hash",
"stat_lifetime_cool_points_runner_up_hash",
	
"stat_easy_high_score_hash",
"stat_easy_2nd_highest_score_hash",
"stat_easy_3rd_highest_score_hash",
"stat_easy_4th_highest_score_hash",
	
"stat_medium_high_score_hash",
"stat_medium_2nd_highest_score_hash",
"stat_medium_3rd_highest_score_hash",
"stat_medium_4th_highest_score_hash",
"stat_medium_5th_highest_score_hash",
"stat_medium_6th_highest_score_hash",
	
"stat_hard_high_score_hash",
"stat_hard_2nd_highest_score_hash",
"stat_hard_3nd_highest_score_hash",
"stat_hard_4th_highest_score_hash",
"stat_hard_5th_highest_score_hash",
"stat_hard_6th_highest_score_hash",
"stat_hard_7th_highest_score_hash",
"stat_hard_8th_highest_score_hash",
	
"stat_difficult_high_score_hash",
"stat_difficult_2nd_highest_score_hash",
"stat_difficult_3nd_highest_score_hash",
"stat_difficult_4th_highest_score_hash",
"stat_difficult_5th_highest_score_hash",
"stat_difficult_6th_highest_score_hash",
"stat_difficult_7th_highest_score_hash",
"stat_difficult_8th_highest_score_hash",
"stat_difficult_9th_highest_score_hash",
"stat_difficult_10th_highest_score_hash",
];

player_name_stat_names = [
	"stat_lifetime_cool_points_person",
	"stat_lifetime_cool_points_runner_up_person",
	
	"stat_easy_high_score_person",
	"stat_easy_2nd_highest_score_person",
	"stat_easy_3rd_highest_score_person",
	"stat_easy_4th_highest_score_person",
	
	"stat_medium_high_score_person",
	"stat_medium_2nd_highest_score_person",
	"stat_medium_3rd_highest_score_person",
	"stat_medium_4th_highest_score_person",
	"stat_medium_5th_highest_score_person",
	"stat_medium_6th_highest_score_person",
	
	"stat_hard_high_score_person",
	"stat_hard_2nd_highest_score_person",
	"stat_hard_3nd_highest_score_person",
	"stat_hard_4th_highest_score_person",
	"stat_hard_5th_highest_score_person",
	"stat_hard_6th_highest_score_person",
	"stat_hard_7th_highest_score_person",
	"stat_hard_8th_highest_score_person",
	
	"stat_difficult_high_score_person",
	"stat_difficult_2nd_highest_score_person",
	"stat_difficult_3nd_highest_score_person",
	"stat_difficult_4th_highest_score_person",
	"stat_difficult_5th_highest_score_person",
	"stat_difficult_6th_highest_score_person",
	"stat_difficult_7th_highest_score_person",
	"stat_difficult_8th_highest_score_person",
	"stat_difficult_9th_highest_score_person",
	"stat_difficult_10th_highest_score_person",
];

default_player_name_strings = [
	"QQQQWWWOOPPOOWWWQQQQ",
	"TTTTRRRIIPPIIRRRTTTT",
	
	"TTTTYYYPPEEPPYYYTTTT",
	"PPPPOOORREERROOOPPPP",
	"RRRRIIIPPEEPPIIIRRRR",
	"RRRROOOTTIITTOOORRRR",
	
	"QQQQUUUIIPPIIUUUQQQQ",
	"PPPPUUURREERRUUUPPPP",
	"WWWWIIIRREERRIIIWWWW",
	"PPPPYYYRREERRYYYPPPP",
	"PPPPEEEEETTEEEEEPPPP",
	"RRRROOOPPEEPPOOORRRR",
	
	"WWWWRRRIITTIIRRRWWWW",
	"RRRROOOTTEETTOOORRRR",
	"PPPPOOOUUTTUUOOOPPPP",
	"TTTTIIIRREERRIIITTTT",
	"WWWWOOORREERROOOWWWW",
	"WWWWEEERREERREEEWWWW",
	"PPPPEEEEERREEEEEPPPP",
	"RRRROOOOOTTOOOOORRRR",
	
	"QQQQUUUIITTIIUUUQQQQ",
	"PPPPEEERRTTRREEEPPPP",
	"PPPPOOOOORROOOOOPPPP",
	"TTTTOOORREERROOOTTTT",
	"PPPPOOORRTTRROOOPPPP",
	"YYYYUUURRTTRRUUUYYYY",
	"PPPPUUUTTTTTTUUUPPPP",
	"TTTTRRRUUEEUURRRTTTT",
	"RRRRIIIOOTTOOIIIRRRR",
	"RRRROOOUUTTUUOOORRRR"
];

player_name_hash_stat_names = [
	"stat_lifetime_cool_points_person_hash",
	"stat_lifetime_cool_points_runner_up_person_hash",
	
	"stat_easy_high_score_person_hash",
	"stat_easy_2nd_highest_score_person_hash",
	"stat_easy_3rd_highest_score_person_hash",
	"stat_easy_4th_highest_score_person_hash",
	
	"stat_medium_high_score_person_hash",
	"stat_medium_2nd_highest_score_person_hash",
	"stat_medium_3rd_highest_score_person_hash",
	"stat_medium_4th_highest_score_person_hash",
	"stat_medium_5th_highest_score_person_hash",
	"stat_medium_6th_highest_score_person_hash",
	
	"stat_hard_high_score_person_hash",
	"stat_hard_2nd_highest_score_person_hash",
	"stat_hard_3nd_highest_score_person_hash",
	"stat_hard_4th_highest_score_person_hash",
	"stat_hard_5th_highest_score_person_hash",
	"stat_hard_6th_highest_score_person_hash",
	"stat_hard_7th_highest_score_person_hash",
	"stat_hard_8th_highest_score_person_hash",
	
	"stat_difficult_high_score_person_hash",
	"stat_difficult_2nd_highest_score_person_hash",
	"stat_difficult_3nd_highest_score_person_hash",
	"stat_difficult_4th_highest_score_person_hash",
	"stat_difficult_5th_highest_score_person_hash",
	"stat_difficult_6th_highest_score_person_hash",
	"stat_difficult_7th_highest_score_person_hash",
	"stat_difficult_8th_highest_score_person_hash",
	"stat_difficult_9th_highest_score_person_hash",
	"stat_difficult_10th_highest_score_person_hash",
];

cipher_keys = [
	28582828,
	61131385,
	13582356,
	10346963,
	
	18468383,
	23468123,
	35754791,
	18233468,
	
	13846866,
	18436846,
	12308668,
	57957338,
	
	43957811,
	23485464,
	45685782,
	65824823
];
cipher_twists = [3,4,8,5, 1,3,1,2, 3,8,4,3, 5,8,2,9];
cipher_clocks = [
	4646,
	6772,
	4863,
	2404,
	
	2486,
	4102,
	1238,
	8435,
	
	5183,
	4545,
	3584,
	2468,
	
	3843,
	4679,
	2368,
	3650
];



//(first digit of (score + (score * cipher_key[i])) % cipher_clocks[i])) % cipher_twist[i]

//- read in the string
//- separate out the score part from the cipher part
//- use the score part to generate the expected cipher
//- compare to received cipher
//- recognize score as legitimate iff the received cipher matches the expected cipher

stat_count = array_length_1d(stat_names);

hash_length = array_length_1d(cipher_keys);

var stat_real_value = 0;
var stat_received_hash_string = 0;
var score_value = 0;
var score_plus_score_times_cipher_key = 0;
var score_plus_score_times_cipher_key_mod_cipher_clock = 0;
var first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock = 0;
var expected_hash_value = 0;

ini_open("stats.ini");

// SCORE VALUES
for (var i = 0; i < stat_count; i++) {
	ds_map_add(has_stat_been_updated_since_last_save, stat_names[i], false);
	
	stat_real_value = ini_read_real("stats", stat_names[i], -1);
	
	// first, check if this is an initial value
	if (stat_real_value == initial_values[i]) {
		score_value = 0;
	}
	
	// next, check to see if maybe stat was missing
	else if (-1 == stat_real_value) { 
		score_value = -1;
	}
	
	// if not, check if received hash matches expected hash
	else {
		stat_received_hash_string = ini_read_string("hashes", stat_hash_names[i], "BOOP");
		
		if (
			"BOOP" == stat_received_hash_string ||
			hash_length != string_length(stat_received_hash_string)
		) {
			score_value = -1;
			// cheating / messup
			// reset scores
		}
		
		else {
			for (var j = 0; j < hash_length; j++) {
				score_plus_score_times_cipher_key =
					stat_real_value +
					(stat_real_value * cipher_keys[j]);
				
				score_plus_score_times_cipher_key_mod_cipher_clock =
					score_plus_score_times_cipher_key %
					cipher_clocks[j];
				
				first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock =
					real(
						string_char_at(
							string(score_plus_score_times_cipher_key_mod_cipher_clock),
							1
						)
					);
				
				expected_hash_value = 
					first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock %
					cipher_twists[j];
				
				if (expected_hash_value != real(string_char_at(stat_received_hash_string, j+1))) {
					score_value = -1;
					// cheating / messup
					// reset scores
					break;
				}
			}
		}
	}
	
	if (
		0 != score_value &&
		-1 != score_value
	) {
		score_value = stat_real_value;
	}
	
	ds_map_add(
		stats,
		stat_names[i],
		score_value
	);
}


// SCORE PERSONS
// SCORE PERSONS
// SCORE PERSONS
// SCORE PERSONS
// SCORE PERSONS
// SCORE PERSONS
var player_name_in_ini_string = "";
var player_name_in_ini_string_length = 0;
var player_name_char_unicode_value = 0;
var player_name_string = "";
var player_name_string_converted_to_real_number = "";
for (var i = 0; i < stat_count; i++) {
	player_name_in_ini_string = ini_read_string("persons", player_name_stat_names[i], "MISSING");
	
	// first, check if this is an initial value
	if (player_name_in_ini_string == default_player_name_strings[i]) {
		player_name_string = player_name_in_ini_string;
	}
	
	else if (player_name_in_ini_string == "MISSING") {
		player_name_string = "MISSING PLAYER NAME";
	}
	
	// if not, check if received hash matches expected hash
	else {
		stat_received_hash_string = ini_read_string(
			"persons_hashes", 
			player_name_hash_stat_names[i], 
			"MISSING");
		
		if ("MISSING" == stat_received_hash_string) { 
			player_name_string = "MISSING PLAYER NAME HASH"; 
		}
		
		else if (hash_length != string_length(stat_received_hash_string)){
			player_name_string = "MALFORMED PLAYER NAME HASH";
		}
		
		else {
			// convert the player name to a real number based on the unicode values
			// of its component characters
			player_name_in_ini_string_length = string_length(player_name_in_ini_string);
			for (var k = 0; k < player_name_in_ini_string_length; k++) {
				player_name_char_unicode_value = ord(string_char_at(player_name_in_ini_string, k+1));
				player_name_string_converted_to_real_number = string_insert(
					string(player_name_char_unicode_value),
					player_name_string_converted_to_real_number,
					1
				);
		//			player_name_string_converted_to_real_number + 
		//			string(player_name_char_unicode_value);
			}
			player_name_string_converted_to_real_number = real(player_name_string_converted_to_real_number);
			
			// now, run this number through our hashing function as usual,
			// (just as though it was the "score")
			for (var j = 0; j < hash_length; j++) {
				score_plus_score_times_cipher_key =
					player_name_string_converted_to_real_number +
					(player_name_string_converted_to_real_number * cipher_keys[j]);
				
				score_plus_score_times_cipher_key_mod_cipher_clock =
					score_plus_score_times_cipher_key %
					cipher_clocks[j];
				
				first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock =
					real(
						string_char_at(
							string(score_plus_score_times_cipher_key_mod_cipher_clock),
							1
						)
					);
				
				expected_hash_value = 
					first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock %
					cipher_twists[j];
				
				if (expected_hash_value != real(string_char_at(stat_received_hash_string, j+1))) {
					player_name_string = "STORED HASH DOES NOT MATCH CALCULATED HASH";
					// cheating / messup
					// reset scores
					break;
				}
			}
		}
	}

	ds_map_add(
		stats,
		player_name_stat_names[i],
		player_name_string
	);
}

ini_close();