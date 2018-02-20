/// @function scr_Funny_Finger_NEW(funny_fingers_controller)
/// @description obj_Funny_Finger default constructor. Returns obj reference.
/// @param {real} funny_fingers_controller Id of the controller that manages the group of fingers this finger is part of

funny_finger = instance_create_layer(0, 0, "Instances", obj_Funny_Finger);

funny_finger.controller = argument0;

return funny_finger;