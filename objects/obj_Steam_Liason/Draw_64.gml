/// @description Draw debug info
if (!draw_debug) exit;

draw_set_color(the_color_of_information);
draw_set_halign(fa_left);

draw_text(5, 200, "STEAM INFO");

draw_text(5, 215, "is_initialised: " + scr_bool2str(is_initialised));
draw_text(5, 230, "are_stats_ready: " + scr_bool2str(are_stats_ready));

draw_text(5, 260, "STATS");
draw_text(5, 275, "stat_lifetime_cool_points: " + string(stat_lifetime_cool_points));
draw_text(5, 290, "stat_easy_frames: " + string(stat_easy_frames));
draw_text(5, 305, "stat_medium_frames: " + string(stat_medium_frames));
draw_text(5, 320, "stat_hard_frames: " + string(stat_hard_frames));
draw_text(5, 335, "stat_difficult_high_score: " + string(stat_difficult_high_score));

draw_text(5, 365, "STEAM ACHIEVEMENTS (Ctrl + A + # to toggle)");

if (ach_unlock_states_retrieved) {
	for (var i = 0; i < steam_achievement_count; i++) {
		draw_text(
			5, 380 + i * 15,
			ach_debug_names[i] +
			scr_bool2str(unlocked[i])
		);
	}
}

//draw_text(5, 245, "is_overlay_enabled: " + scr_bool2str(is_overlay_enabled));
//draw_text(5, 260, "persona_name: " + persona_name);
//draw_text(5, 275, "user_steam_id: " + string(user_steam_id));
//draw_text(5, 290, "is_user_logged_on: " + scr_bool2str(is_user_logged_on));
//draw_text(5, 305, "app_id: " + string(app_id));
//draw_text(5, 320, "user_account_id: " + string(user_account_id));
//draw_text(5, 335, "current_language: " + current_language);
//draw_text(5, 350, "available_languages: " + available_languages);

//draw_text(5, 380, "stat_test_1: " + string(stat_test_1));