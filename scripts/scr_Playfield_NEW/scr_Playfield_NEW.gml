/// @function scr_Playfield_NEW(x, y, height)
/// @description obj_Playfield default constructor. Returns obj reference.
/// @param {real} x X position of top left corner
/// @param {real} y Y position of top left corner
/// @param {real} height The visible height of the playfield

new_playfield = instance_create_layer(
	argument0, argument1, "Instances", obj_Playfield);

new_playfield.columns = [];
new_playfield.funny_fingers = [];
new_playfield.enemy_generator = -1;
new_playfield.energy_generator = -1;
new_playfield.focused = false;
new_playfield.accepting_move_input = true;
new_playfield.height = argument2;
new_playfield.bottom_y = new_playfield.y + new_playfield.height;

new_playfield.funny_finger_shrink_per_second = 0.025; // % of playfield height

new_playfield.has_unfunny_finger = false;

return new_playfield;