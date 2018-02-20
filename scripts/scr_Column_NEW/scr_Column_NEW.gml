/// @function scr_Column_NEW(playfield)
/// @description obj_Column default constructor. Returns obj reference.
/// @param {real} Id of the playfield this column is part of

column = instance_create_layer(200, 200, "Instances", obj_Column);

column.playfield = argument0;

return column;