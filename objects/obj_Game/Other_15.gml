/// @description On Cashout!
with (global.steam) { event_user(1); } // upload score
with (cashout_dialogue_sliding_ribbon) { state = srs_sliding_out; }
state = gs_cashed_out;