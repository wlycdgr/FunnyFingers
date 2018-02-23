/// @param menu
switch(argument0.selection){
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