/// @description Insert description here
// You can write your code in this editor
// If funny finger life is above danger threshold,
// move danger indicator out of sight
x = funny_finger.x;

if (funny_finger.life > 0.1) {
	y = above_window;
}
else {
	y =
		(-playfield_height + playfield_y) + 
		playfield_height * ((0.1 - funny_finger.life) / 0.1);
}