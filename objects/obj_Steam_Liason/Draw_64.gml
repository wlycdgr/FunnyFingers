/// @description Draw debug info
if (!draw_debug) exit;

event_inherited();

draw_set_color(the_color_of_information);
draw_set_halign(fa_left);

draw_text(800, 200, "STEAM INFO");
draw_text(800, 215, "is_initialised: " + scr_bool2str(is_initialised));
draw_text(800, 230, "are_stats_ready: " + scr_bool2str(are_stats_ready));
draw_text(800, 245, "is_overlay_enabled: " + scr_bool2str(is_overlay_enabled));
draw_text(800, 260, "persona_name: " + persona_name);
draw_text(800, 275, "user_steam_id: " + string(user_steam_id));
draw_text(800, 290, "is_user_logged_on: " + scr_bool2str(is_user_logged_on));
draw_text(800, 305, "app_id: " + string(app_id));
draw_text(800, 320, "user_account_id: " + string(user_account_id));