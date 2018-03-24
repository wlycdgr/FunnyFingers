/// @description Incr frames, handle reaching of score thresholds
event_inherited();

if (gs_playing == global.game.state) {
	scr_Scoreboard_Handle_Score_Hitting_Targets(
		id, 
		[
			steam_ach_The_Challenger,
			steam_ach_The_Lucky_Loser,
			steam_ach_The_Qualifier
		]
	);
}

if (!high_score_tweened && points >= current_high_score) {
	high_score_tweened = true;
	
	var number_as_string = 0;
	var number_string = 0;
	for (var i = 0; i < 10; i++) {
		number_as_string = string(i);
		number_string = number_strings[ord(number_as_string)];
	
		scr_Splitsfont_Set_Weight(number_string, 0.003);
		
		scr_Splitsfont_Set_RotationSpeed(number_string, 1440);
	}
}