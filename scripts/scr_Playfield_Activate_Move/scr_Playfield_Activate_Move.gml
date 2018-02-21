if (-1 == target_column_index){
	ff.target_column = ff.source_column;
}
else {
	ff.target_column = target_column_index;
}

ff.is_moving = true;
playfield.accepting_move_input = false;