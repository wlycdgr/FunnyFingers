/// @function scr_Funny_Finger_NEW(playfield, column_index)
/// @description obj_Funny_Finger default constructor. Returns obj reference.
/// @param {real} playfield Id of the playfield that this funny finger roams across
/// @param {real} column_index The column that this funny finger should start in

funny_finger = instance_create_layer(0, 0, "FunnyFingers", obj_Funny_Finger);

funny_finger.playfield = argument0;
funny_finger.source_column = argument1;
funny_finger.target_column = argument1;
funny_finger.half_of_width_difference_with_column =
	(sprite_get_width(obj_Sprite_Loader.column_sprite) - sprite_get_width(obj_Sprite_Loader.funny_finger_sprite)) / 2;
funny_finger.is_moving = false;
funny_finger.is_shrinking = true;

funny_finger.life = starting_funny_finger_life;
funny_finger.target_life = funny_finger.life;
funny_finger.not_funny_anymore = false;

funny_finger.x =
	argument0.columns[argument1].x +
	funny_finger.half_of_width_difference_with_column;
	
funny_finger.y =  
	argument0.bottom_y - 
	(argument0.height * funny_finger.life);
	
funny_finger.danger_danger = instance_create_layer(
	funny_finger.x,
	above_window,
	"DangerDanger",
	obj_Danger_Danger
);

return funny_finger;