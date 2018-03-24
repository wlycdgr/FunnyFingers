/// @description Insert description here
// You can write your code in this editor
if (growing) {
	fullness += growth;
	if (fullness >= target_fullness) { 
		growing = false;
	}
}
else {
	fullness = max(0.0, fullness - decay);
}