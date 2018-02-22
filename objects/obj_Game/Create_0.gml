/// @description Init
for (var i = 0; i < playfield_count; i++){
	playfields[i] = instance_create_layer(
		((i + 1) * (window_width / (playfield_count + 1))) - // space playfields evenly horizontally across window
		((column_count * column_width) / 2), // center them relative to the spacings
		playfield_y,
		"Instances",
		obj_Playfield
	);
}

scr_Game_Focus_Playfield(id, 0);