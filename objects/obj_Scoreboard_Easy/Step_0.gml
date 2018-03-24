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

if (points >= current_high_score) {
	if (!high_score_tweened) { 
		high_score_tweened = true;
		
		var number_as_string = 0;
		var number_string = 0;
		for (var i = 0; i < 10; i++) {
			number_as_string = string(i);
			number_string = number_strings[ord(number_as_string)];
	
			scr_Splitsfont_Set_Size(number_string, new_high_score_size);
			
			scr_Splitsfont_Set_Weight(number_string, new_high_score_weight);
		
			scr_Splitsfont_Set_RotationSpeed(number_string, 1440);
		}
	}
}

else if (points >= begin_grow_size_score) { 
	var proportion_through_grow_range = min(1.0, ((points - begin_grow_size_score) / (grow_size_range + 1))); // to avoid division by zero
	
	current_size = normal_size + (size_range * proportion_through_grow_range);
	
	var number_as_string = 0;
	var number_string = 0;
	for (var i = 0; i < 10; i++) {
		number_as_string = string(i);
		number_string = number_strings[ord(number_as_string)];
	
		scr_Splitsfont_Set_Size(number_string, current_size);
	}
}