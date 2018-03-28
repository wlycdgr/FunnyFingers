/// @description
event_inherited();

if (step_debug) {	
	is_overlay_enabled = steam_is_overlay_enabled();
	persona_name = steam_get_persona_name();
	user_steam_id = steam_get_user_steam_id();
	is_user_logged_on = steam_is_user_logged_on();
	app_id = steam_get_app_id();
	user_account_id = steam_get_user_account_id();
}

if (!is_initialised) {
	is_initialised = steam_initialised();
	if (!is_initialised) exit;
}

if (!are_stats_ready) { 
	are_stats_ready = steam_stats_ready();
	if (!are_stats_ready) exit;
}

if (!ach_unlock_states_retrieved) { 
	for (var i = 0; i < ach_count; i++) {
		ds_map_add(
			unlocked, 
			ach_api_names[i],
			steam_get_achievement(ach_api_names[i])
		);
	}
	ach_unlock_states_retrieved = true;
}