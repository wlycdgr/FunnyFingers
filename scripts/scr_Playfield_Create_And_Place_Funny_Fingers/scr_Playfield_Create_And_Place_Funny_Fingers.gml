/// @function scr_Playfield_Create_Funny_Fingers(playfield, funny_finger_count)
/// @description Create the avatars for a playfield
/// @param {real} playfield Id of playfield
/// @param {real} funny_finger_count Number of funny fingers to create

var empty_spots = column_count - funny_finger_count;
var offset = floor(empty_spots / 2);
var ff_column_index = 0;

for (var i = 0; i < argument1; i++){
	ff_column_index = i + offset;
	
	argument0.columns[ff_column_index].occupied = true;
	argument0.columns[ff_column_index].funny_finger_index = i;
	
	argument0.funny_fingers[i] = scr_Funny_Finger_NEW(argument0, ff_column_index);
}