/// @description Init
var slide_strings_arrays = [
	["TROLLCORE ENTERPRISES TM", "AND", "ONE MOTION GAMES", "PRESENT"],
	["A GAME BY", "WLYCDGR", "WITH SPRITES AND SOUNDS BY", "MARLEY HALL"]
];

var slide_strings_arrays_len = array_length_1d(slide_strings_arrays);
var slide_strings = -1;
var slide_strings_len = -1;
var new_string = -1;

for (var i = 0; i < slide_strings_arrays_len; i++) {
	slide_strings = slide_strings_arrays[i];
	
	slide_strings_len = array_length_1d(slide_strings);
	
	for (var j = 0; j < slide_strings_len; j++) {
		new_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
		
		scr_Splitsfont_Set_Text(new_string, slide_strings[j]);
		
		slides_x[i, j] = window_x_center; //- (scr_Splitsfont_Get_Width(new_string) / 2);
		
		slides_y[i, j] = 200 + j * 100;
		
		slides[i, j] = new_string;
	}
}

slide_index = 0;

alarm_set(0, game_fps * 2);