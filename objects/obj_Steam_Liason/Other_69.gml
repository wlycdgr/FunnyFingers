/// @description Callback for leaderboard update
var id_value = ds_map_find_value(async_load, "id");

if (high_scores_get_id == id_value) {
	var entries = ds_map_find_value(async_load, "entries");
	if (is_undefined(entries)) {
		hs_count = 0;
		ds_map_destroy(map);
		exit;
	}
	
	var map = json_decode(entries);
	if (-1 == map) {
		hs_count = 0;
		ds_map_destroy(map);
		exit;
	}
	
	if ds_map_exists(map, "default") {
		hs_count = 0;
		ds_map_destroy(map);
		exit;
	}
	
	var list = ds_map_find_value(map, "entries");
	if (is_undefined(list)) {
		hs_count = 0;
		ds_map_destroy(map);
		exit;
	}

	var len = ds_list_size(list);
	var entry;
	var hs_name;
	var hs_score;
	var hs_rank;
	for(var i = 0; i < len; i++) {
		entry = ds_list_find_value(list, i );
		if (is_undefined(entry)) {
			hs_count = i;
			ds_map_destroy(map);
			exit;
		}
		
		hs_name = ds_map_find_value(entry, "name");
		hs_score = ds_map_find_value(entry, "score");
		hs_rank = ds_map_find_value(entry, "rank");
		
		if (is_undefined(hs_name) || is_undefined(hs_score) || is_undefined(hs_rank)) {
			hs_count = i;
			ds_map_destroy(map);
			exit;
		}
		
		hs_names[i] = hs_name;
		hs_scores[i] = hs_score;
		hs_ranks[i] = hs_rank;
	}

	hs_count = len - 1;

	ds_map_destroy(map);
}

// Get the user's own high score
else if (user_high_score_get_id == id_value) {
	var entries = ds_map_find_value(async_load, "entries");
	if (is_undefined(entries)) {
		global.scoreboard.current_high_score = 0;
		ds_map_destroy(map);
		exit;
	}
	
	var map = json_decode(entries);
	if (-1 == map) {
		global.scoreboard.current_high_score = 0;
		ds_map_destroy(map);
		exit;
	}
	
	if ds_map_exists(map, "default") {
		global.scoreboard.current_high_score = 0;
		ds_map_destroy(map);
		exit;
	}
	
	var list = ds_map_find_value(map, "entries");	
	if (is_undefined(list)) {
		global.scoreboard.current_high_score = 0;
		ds_map_destroy(map);
		exit;
	}
		
	var user_entry = ds_list_find_value(list, 0);
	if (is_undefined(user_entry)) {
		global.scoreboard.current_high_score = 0;
		ds_map_destroy(map);
		exit;
	}
		
	var score_value = ds_map_find_value(user_entry, "score");
	if (is_undefined(score_value)){
		global.scoreboard.current_high_score = 0;
		ds_map_destroy(map);
		exit;
	}

	global.scoreboard.current_high_score = score_value;
	ds_map_destroy(map);
}