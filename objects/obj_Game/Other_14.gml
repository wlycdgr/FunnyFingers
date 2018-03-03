/// @description On return to title
var ribbon = game_over_sliding_ribbon;
if (srs_inactive == game_over_sliding_ribbon.state) { ribbon = high_scores_sliding_ribbon; }

with (ribbon) { state = srs_sliding_out; }

state = gs_fading_out;

scr_Fade_To(r_MainMenu);



