/// @function scr_Funny_Fingers_Controller_NEW(playfield, funny_finger_count)
/// @description obj_Funny_Fingers_Controller default constructor. Returns obj reference.
/// @param {real} playfield Id of the playfield that the avatars managed by this controller are on
/// @param {real} funny_finger_count The number of avatars to create

funny_fingers_controller = instance_create_layer(0, 0, "Controllers", obj_Funny_Fingers_Controller);

funny_fingers_controller.playfield = argument0;

for (i = 0; i < argument1; i++) { // funny_finger_count
	funny_fingers_controller.funny_fingers[i] =
		scr_Funny_Finger_NEW(funny_fingers_controller);
}

return funny_fingers_controller;