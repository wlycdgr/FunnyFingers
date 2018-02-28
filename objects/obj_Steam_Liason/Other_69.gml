/// @description Callback for leaderboard update

var type = ds_map_find_value(async_load, "event_type");

if (type == "leaderboard_upload") {
   var lb_ID = ds_map_find_value(async_load, "post_id");
   
	if (lb_ID == high_score_upload_id) {
		var lb_name = ds_map_find_value(async_load, "lb_name");
		var lb_done = ds_map_find_value(async_load, "success");
		var lb_score = ds_map_find_value(async_load, "score");
		var lb_updated = ds_map_find_value(async_load, "updated");
		show_debug_message(
			"leaderboard post id:" + 
			string(lb_ID) + 
			" to lb:" + 
			string(lb_name) + 
			" with score:" + 
			string(lb_score) + 
			" updated=" + 
			string(lb_updated)
		);
		
	    if (lb_done) { show_debug_message("- Succeeded"); }
	    else { show_debug_message("- Failed"); }
	}
}