/// @function scr_Scoreboard_AnimateScoreDisplay(scoreboard_id)

with(argument0) {
	if (points >= current_high_score) {
		if (!high_score_tweened) { 
			high_score_tweened = true;
			
			scr_Play_SFX(snd_fx_AchieveHighScore);
		
			var number_string = 0;
			for (var i = 0; i < 10; i++) {
				number_string = number_strings[i];
	
				scr_Splitsfont_Set_Size(number_string, new_high_score_size);
				scr_Splitsfont_Set_Weight(number_string, new_high_score_weight);
				scr_Splitsfont_Set_RotationSpeed(number_string, 1440);
			}
		}
	}

	else {
		var proportion_through_grow_range = min(1.0, ((points) / (current_high_score + 1))); // to avoid division by zero
	
		current_size = normal_size + (size_range * proportion_through_grow_range);

		for (var i = 0; i < 10; i++) {
			scr_Splitsfont_Set_Size(number_strings[i], current_size);
		}
	}
}