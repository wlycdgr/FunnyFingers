/// @description On return to title
var ribbon = game_over_sliding_ribbon;
if (srs_ready == paused_sliding_ribbon) { ribbon = paused_sliding_ribbon; }
else if (srs_ready == high_scores_sliding_ribbon) { ribbon = high_scores_sliding_ribbon; }

with (ribbon) { state = srs_sliding_out; }

state = gs_fading_out;

scr_Fade_To(r_MainMenu);



