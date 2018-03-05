/// @description Callback for leaderboard update

var id_value = ds_map_find_value(async_load, "id");

if (high_score_get_id == id_value) {
	var entries = ds_map_find_value(async_load, "entries");
	
	var map = json_decode(entries);
	
	if ds_map_exists(map, "default") {
		ds_map_destroy(map);
		exit;
	}
	else {
		var list = ds_map_find_value(map, "entries");
		var len = ds_list_size(list);
		var entry;
		for(var i = 0; i < len; i++) {
			entry = ds_list_find_value(list, i );
			high_score_leaderboard_names[i] = 
				ds_map_find_value(entry, "name");
			high_score_leaderboard_scores[i] = 
				ds_map_find_value(entry, "score");
			high_score_leaderboard_ranks[i] = 
				ds_map_find_value(entry, "rank");
		}
	}
	
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