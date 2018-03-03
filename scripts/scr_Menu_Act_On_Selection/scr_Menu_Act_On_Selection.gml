/// @param {integer} menu_id The id of the menu
switch(argument0.labels[argument0.index]) {
case "Achievements":
	scr_Fade_To(r_Achievements);
	break;
case "Cashout!":
	with (global.game) { event_user(5); }
	break;
case "Continue":
	with (global.game) { event_user(2); }
	break;
case "Exit":
	game_end();
	break;
case "Exit To Title":
	with (global.game) { event_user(4); }
	break;
case "High Scores":
	scr_Fade_To(r_High_Scores);
	break;
case "Play":
	scr_Fade_To(r_Gameplay);
	break;
case "Title":
	scr_Fade_To(r_MainMenu);
	break;
case "Try Again":
	with (global.game) { event_user(3); }
	break;
}