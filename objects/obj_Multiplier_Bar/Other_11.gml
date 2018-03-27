/// @description Increment multiplier & unlock No Pressure if appropriate
move_multiplier = min(mb_max_multiplier, move_multiplier + 1);

if (mb_max_multiplier == move_multiplier) {
	scr_Sound_Play(sfx_move_and_reach_maximum_multiplier);
}
else {
	scr_Sound_Play(sfx_move_and_increase_multiplier);
}