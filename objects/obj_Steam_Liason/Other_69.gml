/// @description Callback for leaderboard update

// Set new leaderboard score
if (
	"leaderboard_upload" == ds_map_find_value(async_load, "event_type") &&
	high_score_upload_id == ds_map_find_value(async_load, "post_id")
) {   
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

/*
var async_id = ds_map_find_value(async_load, "id");
if async_id == score_get
   {
   var entries = ds_map_find_value(async_load, "entries");
   var map = json_decode(entries);
   if ds_map_exists(map, "default")
      {
      ds_map_destroy(map);
      exit;
      }
   else
      {
      var list = ds_map_find_value(map, "entries");
      var len = ds_list_size(list);
      var entry;
      for(var i = 0; i < len; i++;)
         {
         entry = ds_list_find_value(list, i );
         steam_name[i] = ds_map_find_value(entry, "name");
         steam_score[i] = ds_map_find_value(entry, "score");
         steam_rank[i] = ds_map_find_value(entry, "rank");
         }
      }
   ds_map_destroy(map)
   }
*/