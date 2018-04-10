/// @description Update
if (global.steam_overlay_activated) exit;

// shrink rate logic 
if (!is_moving){
shrink_rate_multiplier_growth_rate = min(
	shrink_rate_multiplier_growth_rate_max,
	(
		shrink_rate_multiplier_growth_rate +
		shrink_rate_multiplier_growth_rate_uptick
	)
);
}
shrink_rate_multiplier += shrink_rate_multiplier_growth_rate;
		

// If the game is paused, over, etc we should not update
if (gs_playing != global.game.state) exit;

// If dead, die :(
if (life <= 0.0) {
	if (!is_not_funny_anymore) { scr_Play_SFX(snd_fx_DIE); }
	is_not_funny_anymore = true;
	exit;
}

if (is_moving) event_user(1); // move

if (is_shrinking) {
	life -= shrink_per_frame * shrink_rate_multiplier;
}
else {
	life += grow_per_frame; // TODO macro this
	if (life >= target_life) { is_shrinking = true; }
}
		
event_user(0); // update y pos

