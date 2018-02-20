/// @function scr_Funny_Finger_NEW(playfield, column_index)
/// @description obj_Funny_Finger default constructor. Returns obj reference.
/// @param {real} playfield Id of the playfield that this funny finger roams across
/// @param {real} column_index The column that this funny finger should start in

funny_finger = instance_create_layer(-100, -100, "Instances", obj_Funny_Finger);

funny_finger.playfield = argument0;
funny_finger.current_column = argument1;
funny_finger.target_column = argument1;
funny_finger.is_moving = false;
funny_finger.life = 0.3;

return funny_finger;