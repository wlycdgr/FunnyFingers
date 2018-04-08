/// @description Draw debug info
if (!draw_debug) exit;

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

draw_text(800, 200, "STEAM INFO");
draw_text(800, 215, "is_initialised: " + scr_bool2str(is_initialised));
draw_text(800, 230, "are_stats_ready: " + scr_bool2str(are_stats_ready));
draw_text(800, 245, "is_overlay_enabled: " + scr_bool2str(is_overlay_enabled));
draw_text(800, 260, "persona_name: " + persona_name);
draw_text(800, 275, "user_steam_id: " + string(user_steam_id));
draw_text(800, 290, "is_user_logged_on: " + scr_bool2str(is_user_logged_on));
draw_text(800, 305, "app_id: " + string(app_id));
draw_text(800, 320, "user_account_id: " + string(user_account_id));