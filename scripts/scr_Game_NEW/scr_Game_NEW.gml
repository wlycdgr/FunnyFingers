/// @function scr_Game_NEW
/// @description obj_Game default constructor. Returns obj reference.
/// @param {real} playfield_count The number of playfields for this game session
/// @param {real} column_count The number of columns in each playfield
/// @param {real} funny_finger_count The number of avatars in each playfield

game = instance_create_layer(0, 0, "Controllers", obj_Game);

game.input_tracker = 
	instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);

game.is_game_over = false;
game.game_over_menu = instance_create_layer(
	window_get_width(), 180, "GameOverMenu", obj_Game_Over_Menu);

playfield_column_width = 48;
window_width = window_get_width();
window_height = window_get_height();

game.playfields = array_create(argument0); // playfield_count
for (var i = 0; i < argument0; i++){ // playfield_count
	playfield_x = (
		((i + 1) * (window_width / (argument0 + 1))) - // space playfields evenly horizontally across window
		((argument1 * playfield_column_width) / 2) // center them relative to the spacings
	);

	playfield = instance_create_layer(
		playfield_x,
		((window_height - playfield_height) / 2),
		"Instances",
		obj_Playfield
	);
	
	scr_Playfield_Create_And_Position_Columns(
		playfield, 
		argument1, // column_count
		playfield_column_width
	);
	
	scr_Playfield_Create_And_Place_Funny_Fingers(playfield, argument2);
	
	playfield.energy_generator = scr_Entity_Generator_NEW(
		obj_Energy, 
		45, 60, // period min/max, in frames
		30, 300//60, 90 // speed min/max, in pixels per second
	);
	
	playfield.enemy_generator = scr_Entity_Generator_NEW(
		obj_Enemy, 
		75, 90, // period min/max, in frames
		45, 60 // speed min/max, in pixels per second
	);

	
	game.playfields[i] = playfield;
}

scr_Game_Focus_Playfield(game, 0);

if (1 == argument0){ // 1 playfield visuals
	var bottom_mask = instance_create_layer(
		playfield_x,
		window_height - (((window_height - playfield_height) / 2)),
		"BottomMask",
		obj_Billboard
	);
	bottom_mask.sprite_index = obj_Sprite_Loader.bottom_mask_sprite;
	
	var top_mask = instance_create_layer(
		playfield_x,
		0,
		"TopMask",
		obj_Billboard
	);
	top_mask.sprite_index = obj_Sprite_Loader.top_mask_sprite;
	
	var left_side = instance_create_layer(
		0, 0,
		"Sides",
		obj_Billboard
	);
	left_side.sprite_index = obj_Sprite_Loader.left_side_sprite;
	
	var right_side = instance_create_layer(
		window_width - ((window_width - (argument1 * playfield_column_width)) / 2), 0,
		"Sides",
		obj_Billboard
	);
	right_side.sprite_index = obj_Sprite_Loader.right_side_sprite;
}

return game;