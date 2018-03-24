/// @description Insert description here
// You can write your code in this editor
if (occupied && !occupied_last_frame && !growing) { 
	target_fullness = min(1.0, fullness + 0.5);
	growing = true;
}