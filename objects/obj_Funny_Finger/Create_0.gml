/// @description Insert description here
half_of_width_difference_with_column = // TODO macro this
	(sprite_get_width(obj_Sprite_Loader.column_sprite) - 
	sprite_get_width(obj_Sprite_Loader.funny_finger_sprite)) / 2;
is_moving = false;
is_shrinking = true;
is_not_funny_anymore = false;

life = starting_funny_finger_life;
target_life = life;

danger_danger = instance_create_layer(
	left_of_window, above_window,
	"DangerDanger",
	obj_Danger_Danger
);
danger_danger.funny_finger = id;
