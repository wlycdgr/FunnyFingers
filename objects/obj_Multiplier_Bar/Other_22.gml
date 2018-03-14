/// @description Reset multiplier
multiplier = mb_min_multiplier;
fully_drained = true;
fill_x = 0;
current_time_in_seconds_to_drain = mb_max_seconds_to_drain;
is_refilling = false;

global.scoreboard.combo_broken = true;

event_user(15);