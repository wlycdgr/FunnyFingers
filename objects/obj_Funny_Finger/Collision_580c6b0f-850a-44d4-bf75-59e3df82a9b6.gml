/// @description Lose armor or kaput
if (has_armor) {
	scr_Sound_Play(sfx_crash_into_enemy_and_lose_armor);
	
	sprite_index = spr_funny_finger;
	
	has_armor = false;
}
else {
	scr_Sound_Play(sfx_crash_into_enemy_and_DIE);
	
	is_not_funny_anymore = true;
}
