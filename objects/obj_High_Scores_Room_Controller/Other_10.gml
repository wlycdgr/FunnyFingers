/// @description Load scores based on currently selected high scores room tab
var leaderboard_name = leaderboards_ribbon_labels[leaderboards_ribbon_index];

switch(filters_ribbon_index){
case 0: // "Overall"
	with (global.steam) {
		high_scores_get_id = 
			steam_download_scores(leaderboard_name, 1, 10);
	}
	break;
	
case 1: // "Around you"
	with (global.steam) {
		high_scores_get_id = 
			steam_download_scores_around_user(leaderboard_name, -4, 5);
	}
	break;
	
case 2: // "Friends"
	with (global.steam) {
		high_scores_get_id = 
			steam_download_friends_scores(leaderboard_name);
	}
	break;
}