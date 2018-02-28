/// @param menu
switch(argument0.selection){
case "CashOut":
	with (global.steam) { event_user(1); } // upload score to leaderboard
	with (global.game) { event_user(4); } // return to title
	break;
	
case "Continue":
	with (global.game) {
		event_user(2); // unpause game
	}
	break;
	
case "Restart":
	with (global.game) {
		event_user(3); // restart game
	}
	break;
	
case "Title":
	with (global.game) {
		event_user(4); // return to title
	}
	break;
}