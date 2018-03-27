/// @description Eat!
// You can write your code in this editor
if (is_shrinking){
	scr_Sound_Play(sfx_eat_energy);
	
	is_shrinking = false;
	
	target_life = 
		life + 
		(global.core_energy_value_x_100 / 100);
}