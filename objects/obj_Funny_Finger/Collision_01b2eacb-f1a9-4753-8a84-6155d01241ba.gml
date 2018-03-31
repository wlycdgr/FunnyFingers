/// @description Eat!
// You can write your code in this editor
if (is_shrinking){
	//scr_Sound_Play(sfx_eat_energy);
	scr_Sound_Play(sfx_move_and_increase_multiplier);
	
	is_shrinking = false;
	
	target_life = 
		life + 
		global.game_settings.energy_value;
}