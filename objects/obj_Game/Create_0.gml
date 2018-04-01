/// @description Init
if (game_difficulty_medium == global.game_settings.difficulty) {
	move_q = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(move_q, "Q");
	scr_Splitsfont_Set_Tweaks(move_q, [0.14, 0.01, 0, 0, 15]);
	move_q.y = 0.125 * window_height;

	move_w = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(move_w, "W");
	scr_Splitsfont_Set_Tweaks(move_w, [0.14, 0.01, 0, 0, -15]);
	move_w.y = 0.4 * window_height;

	move_e = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(move_e, "E");
	scr_Splitsfont_Set_Tweaks(move_e, [0.095, 0.01, 0, 0, 15]);
	move_e.y = 0.675 * window_height;

	left_ord_codes = [ord("W"), ord("Q"), ord("E")];

	max_rotation_speed = 1440;
	rotation_speed_falloff = 14.4;
	rotation_speed_move_bump = 1440;
	rotation_speed_move_bump_speed = 144;

	left_min_weights[0] = 0.01;
	left_min_weights[1] = 0.01;
	left_min_weights[2] = 0.01;

	max_weight = 0.03;
	weight_falloff = 0.01;
	weight_move_bump = 0.02;
	weight_move_bump_speed = 0.002;

	for (var i = 0; i < 3; i++) {
		left_current_rotation_speeds[i] = 0;
		left_target_rotation_speeds[i] = 0;
	
		left_current_weights[i] = left_min_weights[i];
		left_target_weights[i] = left_min_weights[i];
	}

	left_moves[0] = move_q;
	left_moves[1] = move_w;
	left_moves[2] = move_e;



	move_p = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(move_p, "P");
	scr_Splitsfont_Set_Tweaks(move_p, [0.14, 0.01, 0, 0, -15]);
	move_p.y = 0.125 * window_height;

	move_o = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(move_o, "O");
	scr_Splitsfont_Set_Tweaks(move_o, [0.14, 0.01, 0, 0, 15]);
	move_o.y = 0.4 * window_height;

	move_i = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(move_i, "I");
	scr_Splitsfont_Set_Tweaks(move_i, [0.14, 0.01, 0, 0, -15]);
	move_i.y = 0.675 * window_height;

	right_ord_codes = [ord("P"), ord("O"), ord("I")];

	right_min_weights[0] = 0.01;
	right_min_weights[1] = 0.01;
	right_min_weights[2] = 0.01;

	for (var i = 0; i < 3; i++) {
		right_current_rotation_speeds[i] = 0;
		right_target_rotation_speeds[i] = 0;
	
		right_current_weights[i] = right_min_weights[i];
		right_target_weights[i] = right_min_weights[i];
	}

	right_moves[0] = move_p;
	right_moves[1] = move_o;
	right_moves[2] = move_i;

	moves_length = 3;
	
	left_x = 0.16 * window_width;
	right_x = 0.8 * window_width;
}


//sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, move_p);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, move_o);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, move_i);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, move_q);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, move_w);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, move_e);



game_over_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Game_Over_Menu_Sliding_Ribbon
);

paused_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Paused_Sliding_Ribbon
);

level_99_unlock_message_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, 
	"SlidingRibbons", 
	obj_Level_99_Unlock_Message_Sliding_Ribbon
);

for (var i = 0; i < playfield_count; i++){
	playfields[i] = instance_create_layer(
		((i + 1) * (window_width / (playfield_count + 1))) - // space playfields evenly horizontally across window
		((global.game_settings.column_count * column_width) / 2), // center them relative to the spacings
		playfield_y,
		"Instances",
		obj_Playfield
	);
}

// So we can pause the game if the Steam overlay
// has just been deactivated
steam_overlay_activated_this_step = false;
steam_overlay_activated_last_step = false;