/// @description On go to high scores room
// You can write your code in this editor
var menu = game_over_menu;
if (gs_paused == state) { menu = pause_menu; }
with (menu) { state = rms_sliding_out; }

scr_Fade_To(r_High_Scores);

state = gs_fading_out;