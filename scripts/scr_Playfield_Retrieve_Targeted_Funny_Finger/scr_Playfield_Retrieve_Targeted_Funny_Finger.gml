/// @function scr_Playfield_Retrieve_Targeted_Funny_Finger(playfield, move_direction, order)
/// @description Grabs the index of the funny finger that is currently @order from the @move_direction
/// @param move_direction are we trying to move this finger left (-1) or right (1)?
/// @param order which funny finger is this, starting from the left/right most as per move_direction?

index_counter = 0;
if (-1 == argument1){ // moving to left
	index_target = argument2;
}
else if (1 == argument2){ // moving to right
	index_target = array_length_1d(argument0.funny_fingers) - argument2;
}

for (i = 0; i < array_length_1d(argument0.columns); i++){
	if (!argument0.columns[i].occupied) continue;
		
	if (index_counter == index_target){
		return argument0.columns[i].funny_finger_index;
	}
		
	index_counter += 1;
}