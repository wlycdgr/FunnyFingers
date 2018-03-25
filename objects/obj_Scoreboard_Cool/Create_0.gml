/// @description Insert description here
// You can write your code in this editor
event_inherited();

var number_string = -1;
var number_as_string = -1;
for (var i = 0; i < 10; i++) {
	number_as_string = string(i);
	number_string = number_strings[ord(number_as_string)];
	
	scr_Splitsfont_Set_Tweaks(number_string, [0.025, 0.002, 0.05, 0, 0]);
}