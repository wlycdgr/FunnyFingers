/// @description On game over
with (global.steam) { event_user(1); } // upload score
with (game_over_sliding_ribbon) { event_user(0); }
state = gs_game_over;