/// @param {array} entities Array of enemy/energy entitites that need to be moved

for (i = array_length_1d(argument0) - 1; i > -1; i--){
	if (!argument0[i].is_active) continue;
	
	argument0[i].y += argument0[i].vertical_speed;
}