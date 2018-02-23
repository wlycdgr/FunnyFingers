global.input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);

global.game = instance_create_layer(0, 0, "Controllers", obj_Game);
scr_Focus_Playfield(global.game.playfields[0]);

// Mask/bg sprites for one playfield mode!
if (1 == playfield_count){
	var playfield_x = (window_width - (column_count * column_width)) / 2;
	
	var bottom_mask = instance_create_layer(
		playfield_x, playfield_bottom_y,
		"BottomMask",
		obj_Billboard);
	bottom_mask.sprite_index = obj_Sprite_Loader.bottom_mask_sprite;
	
	var top_mask = instance_create_layer(
		playfield_x, 0,
		"TopMask",
		obj_Billboard);
	top_mask.sprite_index = obj_Sprite_Loader.top_mask_sprite;
	
	var left_side = instance_create_layer(
		0, 0,
		"Sides",
		obj_Billboard);
	left_side.sprite_index = obj_Sprite_Loader.left_side_sprite;
	
	var right_side = instance_create_layer(
		window_width - playfield_x, 0,
		"Sides",
		obj_Billboard);
	right_side.sprite_index = obj_Sprite_Loader.right_side_sprite;
}