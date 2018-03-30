/// @description Insert description here
// You can write your code in this editor
/// @description Draw stats and achievements info
if (!draw_debug) exit;

event_inherited();

draw_text(300, 275, scr_ASI_GetStatInt("stat_lifetime_cool_points_person"));
draw_text(300, 290, scr_ASI_GetStatInt("stat_easy_high_score_person"));
draw_text(300, 305, scr_ASI_GetStatInt("stat_medium_high_score_person"));
draw_text(300, 320, scr_ASI_GetStatInt("stat_hard_high_score_person"));
draw_text(300, 335, scr_ASI_GetStatInt("stat_difficult_high_score_person"));