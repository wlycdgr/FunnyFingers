/// @function scr_Playfield_Step(playfield)
/// @description Top-level runs-every-frame playfield update function
/// @param playfield Id of playfield

playfield = argument0;
ffs = playfield.funny_fingers;

// Death! Sadness! Game Over!
for (var i = array_length_1d(ffs) - 1; i > -1; i--){
	if (ffs[i].is_not_funny_anymore){
		playfield.has_unfunny_finger = true;
		return;
	}
}

scr_Playfield_Periodically_Activate_Entity(playfield.enemy_generator);
scr_Playfield_Periodically_Activate_Entity(playfield.energy_generator);

scr_Playfield_Move_Active_Entities(playfield.enemy_generator.entities);
scr_Playfield_Move_Active_Entities(playfield.energy_generator.entities);

for (var i = array_length_1d(ffs) - 1; i > -1; i--){
	scr_Funny_Finger_Shrink_Or_Grow(ffs[i]);
	
	if (ffs[i].is_moving){
		scr_Funny_Finger_Move(playfield, i);
	}
	
	//scr_Funny_Finger_Animate(ffs[i]);
	
	// scr_Funny_Finger_Update
	
	// scr_Funny_Finger_Collide(enemy)
	// scr_Funny_Finger_Collide(energy)
}

/*
Collide funny fingers vs enemies
Collide funny fingers vs energies
Animate funny fingers
Animate enemies
Anamate energies
