/// @description Draw stats and achievements info
if (!draw_debug) exit;

draw_set_color(the_color_of_information);
draw_set_halign(fa_left);

draw_text(5, 260, "STATS (Ctrl + T + R to reset");
draw_text(5, 275, "stat_lifetime_cool_points: " + string(stat_lifetime_cool_points));
draw_text(5, 290, "stat_easy_high_score: " + string(stat_easy_high_score));
draw_text(5, 305, "stat_medium_high_score: " + string(stat_medium_high_score));
draw_text(5, 320, "stat_hard_high_score: " + string(stat_hard_high_score));
draw_text(5, 335, "stat_difficult_high_score: " + string(stat_difficult_high_score));

draw_text(5, 365, "ACHIEVEMENTS (Ctrl + X + # to toggle)");

if (ach_unlock_states_retrieved) {
	for (var i = 0; i < ach_count; i++) {
		draw_text(
			5, 380 + i * 15,
			ach_debug_names[i] +
			scr_bool2str(ds_map_find_value(unlocked, ach_api_names[i]))
		);
	}
}