/// @description Insert description here
// You can write your code in this editor
if (game_difficulty_medium == global.game_settings.difficulty) {
	for (var i = 0; i < moves_length; i++){
		scr_Splitsfont_Draw_String(
			left_moves[i],
			left_x, left_moves[i].y
		);
	
		scr_Splitsfont_Draw_String(
			right_moves[i],
			right_x, right_moves[i].y
		);
	}
}