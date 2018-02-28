/// @description Draw steam info
draw_set_font(global.font_debug);
draw_set_color(the_color_of_information);

draw_text(5, 400, "STEAM INFO");
draw_text(5, 415, "is_initialised: " + scr_bool2str(is_initialised));
draw_text(5, 430, "are_stats_ready: " + scr_bool2str(are_stats_ready));
draw_text(5, 445, "is_overlay_enabled: " + scr_bool2str(is_overlay_enabled));