/// @description Draw steam info
/*
draw_set_font(global.font_debug);
draw_set_color(the_color_of_information);
draw_set_halign(fa_left);

draw_text(5, 400, "STEAM INFO");
draw_text(5, 415, "is_initialised: " + scr_bool2str(is_initialised));
draw_text(5, 430, "are_stats_ready: " + scr_bool2str(are_stats_ready));
draw_text(5, 445, "is_overlay_enabled: " + scr_bool2str(is_overlay_enabled));
draw_text(5, 460, "persona_name: " + persona_name);
draw_text(5, 475, "user_steam_id: " + string(user_steam_id));
draw_text(5, 490, "is_user_logged_on: " + scr_bool2str(is_user_logged_on));
draw_text(5, 505, "app_id: " + string(app_id));
draw_text(5, 520, "user_account_id: " + string(user_account_id));
draw_text(5, 535, "current_language: " + current_language);
draw_text(5, 550, "available_languages: " + available_languages);

draw_text(5, 580, "stat_test_1: " + string(stat_test_1));

draw_text(5, 610, "STEAM ACHIEVEMENTS (Ctrl + A + # to toggle)");
draw_text(
	5, 625, "0. QWEIOP: " + 
	scr_bool2str(ds_map_find_value(achievement_states, "ach_0_qweiop"))
);
draw_text(
	5, 640, "1. Qualifier: " + 
	scr_bool2str(ds_map_find_value(achievement_states, "ach_1_qualifier"))
);
*/