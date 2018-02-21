/// @function scr_Playfield_Step(playfield)
/// @description Top-level runs-every-frame playfield update function
/// @param playfield Id of playfield

ffs = argument0.funny_fingers;

for (i = array_length_1d(ffs) - 1; i > -1; i--){
	if (ffs[i].is_moving){
		scr_Funny_Finger_Move(argument0, i);
	}
	
	//scr_Funny_Finger_Animate(ffs[i]);
	
	// scr_Funny_Finger_Update
	
	// scr_Funny_Finger_Collide(enemy)
	// scr_Funny_Finger_Collide(energy)
}

scr_Playfield_Generate_Entity(argument0.enemy_generator);
scr_Playfield_Generate_Entity(argument0.energy_generator);

scr_Playfield_Move_Entities(argument0.enemy_generator.entities);
scr_Playfield_Move_Entities(argument0.energy_generator.entities);

/*
Generate enemies
Generate energies
Update enemies
Update energies
Collide funny fingers vs enemies
Collide funny fingers vs energies
Animate funny fingers
Animate enemies
Anamate energies
