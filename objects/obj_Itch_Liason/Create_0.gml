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
	"stat_easy_runner_up_score",
	"stat_medium_high_score",
	"stat_medium_runner_up_score",
	"stat_hard_high_score",
	"stat_hard_runner_up_score",
	"stat_difficult_high_score",
	"stat_difficult_runner_up_score"
];
stat_hash_names = [
	"stat_lifetime_cool_points_hash",
	"stat_lifetime_cool_points_runner_up_hash",
	"stat_easy_high_score_hash",
	"stat_easy_runner_up_score_hash",
	"stat_medium_high_score_hash",
	"stat_medium_runner_up_score_hash",
	"stat_hard_high_score_hash",
	"stat_hard_runner_up_score_hash",
	"stat_difficult_high_score_hash",
	"stat_difficult_runner_up_score_hash"
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
	-10347689
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
var stat_string_value = 0;
var stat_received_hash_string = 0;
var score_value = 0;
var score_plus_score_times_cipher_key = 0;
var score_plus_score_times_cipher_key_mod_cipher_clock = 0;
var first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock = 0;
var expected_hash_value = 0;

ini_open("stats.ini");

for (var i = 0; i < stat_count; i++) {
	ds_map_add(has_stat_been_updated_since_last_save, stat_names[i], false);
	
	stat_real_value = ini_read_real("stats", stat_names[i], 0);
	
	// first, check if this is an initial value
	if (stat_real_value == initial_values[i]) {
		score_value = 0;
	}
	
	// if not, check if received hash matches expected hash
	else {
		score_value = 12345;
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

ini_close();