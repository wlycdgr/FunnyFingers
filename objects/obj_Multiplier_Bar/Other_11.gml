/// @description Increment multiplier & unlock No Pressure if appropriate
move_multiplier = min(global.game_settings.max_multiplier, move_multiplier + 1);

scr_Sound_Play(sfx_move_and_increase_multiplier);