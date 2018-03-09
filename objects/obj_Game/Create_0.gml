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