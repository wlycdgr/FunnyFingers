/// @description Fade in
last_room = current_room;
current_room = room;

//if (current_room != last_room) {
	opacity = 0.95;
	state = fs_fading_in;
//}