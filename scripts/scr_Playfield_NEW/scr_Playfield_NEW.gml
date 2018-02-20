/// @function scr_Playfield_NEW(x, y, height)
/// @description obj_Playfield default constructor. Returns obj reference.
/// @param {real} x X position of top left corner
/// @param {real} y Y position of top left corner
/// @param {real} height The visible height of the playfield

playfield = instance_create_layer(
	argument0, argument1, "Instances", obj_Playfield);

playfield.columns = [];
playfield.funny_fingers = [];
playfield.focused = false;
playfield.move_in_progress = false;
playfield.height = argument2;
playfield.bottom_y = playfield.y + playfield.height;

return playfield;