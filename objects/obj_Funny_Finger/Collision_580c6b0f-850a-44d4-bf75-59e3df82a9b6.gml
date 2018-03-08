/// @description Lose armor or kaput
if (has_armor) {
	has_armor = false;
	with (playfield.multiplier_bar) { event_user(12); }
}
else {
	is_not_funny_anymore = true;
}