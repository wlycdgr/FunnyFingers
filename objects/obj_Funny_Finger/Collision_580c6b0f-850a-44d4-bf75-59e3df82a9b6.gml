/// @description Lose armor or kaput
if (has_armor) {
	scr_Play_SFX(snd_fx_CrashIntoEnemyAndLoseArmor);
	
	sprite_index = spr_funny_finger;
	has_armor = false;
	
	global.game_settings.max_multiplier += mb_max_multiplier_armor_loss_bump;
}
else {
	scr_Play_SFX(snd_fx_DIE);
	
	is_not_funny_anymore = true;
}
