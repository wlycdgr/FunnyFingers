/// @description On continue
global.target_score = global.game_score;

with (cashout_dialogue_sliding_ribbon) { state = srs_sliding_out; }
state = gs_playing;