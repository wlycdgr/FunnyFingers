with (global.itch) {
	var new_score = 0;
	var score_plus_score_times_cipher_key = 0;
	var score_plus_score_times_cipher_key_mod_cipher_clock = 0;
	var first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock = 0;
	var new_score_hash_digit = 0;
	var new_score_hash_string = "";

	ini_open("stats.ini");

	for (var i = 0; i < stat_count; i++) {
		//if (!ds_map_find_value(has_stat_been_updated_since_last_save, stat_names[i])) continue;
	
		new_score = ds_map_find_value(stats, stat_names[i]);

		for (var j = 0; j < hash_length; j++) {
			score_plus_score_times_cipher_key =
				new_score +
				(new_score * cipher_keys[j]);
			
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
		
			new_score_hash_digit = 
				first_digit_of_score_plus_score_times_cipher_key_mod_cipher_clock %
				cipher_twists[j];
		
			new_score_hash_string += string(new_score_hash_digit);
		}
	
		ini_write_real("stats", stat_names[i], new_score);
		ini_write_string("hashes", stat_hash_names[i], new_score_hash_string);
		
		new_score_hash_string = "";
		
		ds_map_replace(has_stat_been_updated_since_last_save, stat_names[i], false);
	}
	
	ini_close();
}