/// @description Callback for leaderboard update

// Set new leaderboard score
if (
	"leaderboard_upload" == ds_map_find_value(async_load, "event_type") &&
	high_score_upload_id == ds_map_find_value(async_load, "post_id")
) {   
	// TODO: verify result & deal with failure appropriately
}

else if (high_score_get_id == ds_map_find_value(async_load, "id")) {
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
