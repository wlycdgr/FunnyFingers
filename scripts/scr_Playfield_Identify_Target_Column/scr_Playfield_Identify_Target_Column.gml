/*

ff_target_column = scr_Playfield_Identify_Target_Column_Index(
		playfield.columns, ff.source_column, -1
	);

ff_target_column = -1;
	ff = playfield.funny_fingers[ff_index];
	for (i = ff.source_column - 1; i > -1; i--){
		if (!playfield.columns[i].occupied){
			ff_target_column = i;
			break;
		}
	}
*/	