/// @function scr_Scoreboard_AnimateScoreDisplay(scoreboard_id)

with(argument0) {
	if (points >= current_high_score) {
		if (!high_score_tweened) { 
			high_score_tweened = true;
			
			scr_Sound_Play(sfx_achieve_high_score);
		
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

	else {
		var proportion_through_grow_range = min(1.0, ((points) / (current_high_score + 1))); // to avoid division by zero
	
		current_size = normal_size + (size_range * proportion_through_grow_range);
	
		var number_as_string = 0;
		var number_string = 0;
		for (var i = 0; i < 10; i++) {
			number_as_string = string(i);
			number_string = number_strings[ord(number_as_string)];
	
			scr_Splitsfont_Set_Size(number_string, current_size);
		}
	}
}