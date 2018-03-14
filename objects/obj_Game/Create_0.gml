/// @description Init
game_over_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Game_Over_Menu_Sliding_Ribbon
);

paused_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Paused_Sliding_Ribbon
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

should_display_frames = 
	(game_difficulty_cool != global.game_settings.difficulty);
	
score_label_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(score_label_string, "SCORE: ");
scr_Splitsfont_Set_Size(score_label_string, splitsfont_size_scoreboard);

frames_label_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(frames_label_string, "FRAMES: ");
scr_Splitsfont_Set_Size(frames_label_string, splitsfont_size_scoreboard);

var number_string = -1;
var number_as_string = -1;
for (var i = 0; i < 10; i++) {
	number_as_string = string(i);
	number_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(number_string, number_as_string);
	scr_Splitsfont_Set_Size(number_string, splitsfont_size_scoreboard);
	number_strings[ord(number_as_string)] = number_string;
}

steam_overlay_activated_this_step = false;
steam_overlay_activated_last_step = false;