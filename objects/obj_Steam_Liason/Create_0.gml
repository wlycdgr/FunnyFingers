/// @description Init
achievement_states = ds_map_create();
ds_map_add(achievement_states, "ach_0_qweiop", steam_get_achievement("ach_0_qweiop"));
ds_map_add(achievement_states, "ach_1_qualifier", steam_get_achievement("ach_1_qualifier"));

event_user(0);
