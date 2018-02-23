/// @param menu
if (rms_selection_made != argument0.state) return;

switch(argument0.selection){
case "Continue":
	global.game.is_game_paused = false;
	break;
case "Restart":
	room_restart();
	break;
case "Title":
	room_goto(r_MainMenu);
	break;
default:
	break;
}