/// @description Eat!
// You can write your code in this editor
if (is_shrinking){
	scr_Play_SFX(snd_fx_EatEnergy);

	is_shrinking = false;
	
	target_life = 
		life + 
		global.game_settings.energy_value;
}