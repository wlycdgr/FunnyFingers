/// @description Load scores based on currently selected high scores room tab
switch(tabs_item_index){
case 0: // "Overall"
	with (global.steam) {
		high_score_get_id = steam_download_scores(
			steam_high_scores_table_name,
			1, 10
		);
	}
	break;
	
case 1: // "Around you"
	with (global.steam) {
		high_score_get_id = steam_download_scores_around_user(
			steam_high_scores_table_name, 
			-4, 5
		);
	}
	break;
	
case 2: // "Friends"
	with (global.steam) {
		high_score_get_id =
			steam_download_friends_scores(steam_high_scores_table_name);
	}
	break;
}
