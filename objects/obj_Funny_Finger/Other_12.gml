/// @description Initiate move
scr_Play_SFX(snd_fx_MoveAndIncreaseMultiplier);

shrink_rate_multiplier_growth_rate = max(
	shrink_rate_multiplier_growth_rate_min,
	(
		shrink_rate_multiplier_growth_rate -
		shrink_rate_multiplier_growth_rate_move_reduction
	)
);

is_moving = true;

target_x = 
	playfield.columns[target_column].x + 
	half_of_width_difference_with_column;
	
source_x = 
	playfield.columns[source_column].x +
	half_of_width_difference_with_column;
	
move_amount_in_pixels_per_frame =
	(target_x - source_x) / 
	(game_fps * global.game_settings.move_time);
