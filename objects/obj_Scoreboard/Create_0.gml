/// @description Init
current_rank = 0;
current_score = 0;
target_score = 0;
current_high_score = 0;

with (global.steam) { event_user(2); } // load current high score
