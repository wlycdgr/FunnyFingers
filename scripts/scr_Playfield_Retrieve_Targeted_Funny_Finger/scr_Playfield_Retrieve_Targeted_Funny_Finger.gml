/// @function scr_Playfield_Retrieve_Targeted_Funny_Finger(move_direction, order)
/// @description Grabs the index of the funny finger that is currently @order from the @move_direction
/// @param move_direction are we trying to move this finger left (-1) or right (1)?
/// @param order which funny finger is this, starting from the left/right most as per move_direction?

index_counter = 0;
if (-1 == argument0){ // moving to left
	index_target = argument1;
}
else if (1 == argument0){ // moving to right
	index_target = array_length_1d(playfield.funny_fingers) - argument1;
}

for (i = 0; i < array_length_1d(playfield.columns); i++){
	if (!playfield.columns[i].occupied) continue;
		
	if (index_counter == index_target){
		return playfield.columns[i].funny_finger_index;
	}
		
	index_counter += 1;
}