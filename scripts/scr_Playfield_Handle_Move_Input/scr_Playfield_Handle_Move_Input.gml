/// @param {real} move_direction
/// @param {real} x_most

ff = playfield.funny_fingers[
	scr_Playfield_Retrieve_Targeted_Funny_Finger(argument0, argument1)
];
target_column_index = scr_Playfield_Identify_Target_Column(argument0);
scr_Playfield_Activate_Move();
	