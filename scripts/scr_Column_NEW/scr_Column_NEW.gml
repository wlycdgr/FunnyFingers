/// @function scr_Column_NEW(playfield, x, y)
/// @description obj_Column default constructor. Returns obj reference.
/// @param {real} Id of the playfield this column is part of
/// @param {real} x X position
/// @param {real} y Y position

column = instance_create_layer(argument1, argument2, "Instances", obj_Column);

column.playfield = argument0;
column.occupied = false;

return column;