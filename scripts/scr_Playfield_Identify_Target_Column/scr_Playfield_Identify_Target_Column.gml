/// @param {real} move_direction Are we trying to move left (-1) or right (1)?

if (-1 == argument0){
	for (i = ff.source_column - 1; i > -1; i--){
		if (!playfield.columns[i].occupied){
			return i;
		}
	}
}
else if (1 == argument0){
	for (i = ff.source_column + 1; i < array_length_1d(playfield.columns); i++){
		if (!playfield.columns[i].occupied){
			return i;
		}
	}
}

return -1;