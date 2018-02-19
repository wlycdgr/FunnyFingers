playfield = argument0;
funny_fingers_count = argument1;

funny_fingers_controller = instance_create_layer(
	0, 0,
	"Controllers",
	obj_Funny_Fingers_Controller
);

funny_fingers_controller.playfield = playfield;

funny_fingers_controller.funny_fingers = array_create(funny_fingers_count, -1);

playfield.funny_fingers_controller = funny_fingers_controller;