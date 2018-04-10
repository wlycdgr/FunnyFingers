/// @description Init
slide_index = 0;

tweak_values[0, 0] = 0.07; // size
tweak_values[0, 1] = 0.03; // weight
tweak_values[0, 2] = 0.0; // kern
tweak_values[0, 3] = 0.0; // rotation speed
tweak_values[0, 4] = 0.14; // y
tweak_values[1, 0] = 0.03;
tweak_values[1, 1] = 0.0;
tweak_values[1, 2] = 0.13;
tweak_values[1, 3] = 0.0;
tweak_values[1, 4] = 0.35;
tweak_values[2, 0] = 0.14;
tweak_values[2, 1] = 0.01;
tweak_values[2, 2] = 0.01;
tweak_values[2, 3] = 360.0;
tweak_values[2, 4] = 0.53;
tweak_values[3, 0] = 0.03;
tweak_values[3, 1] = 0.0;
tweak_values[3, 2] = 0.05;
tweak_values[3, 3] = 0.0;
tweak_values[3, 4] = 0.82;

tweak_values_1[0, 0] = 0.03;
tweak_values_1[0, 1] = 0.0;
tweak_values_1[0, 2] = 0.04;
tweak_values_1[0, 3] = 360;
tweak_values_1[0, 4] = 0.1;
tweak_values_1[1, 0] = 0.15;
tweak_values_1[1, 1] = 0.03;
tweak_values_1[1, 2] = 0.05;
tweak_values_1[1, 3] = 0.0;
tweak_values_1[1, 4] = 0.21;
tweak_values_1[2, 0] = 0.03;
tweak_values_1[2, 1] = 0.0;
tweak_values_1[2, 2] = 0.04;
tweak_values_1[2, 3] = 360.0;
tweak_values_1[2, 4] = 0.56;
tweak_values_1[3, 0] = 0.1;
tweak_values_1[3, 1] = 0.02;
tweak_values_1[3, 2] = 0.04;
tweak_values_1[3, 3] = 0.0;
tweak_values_1[3, 4] = 0.66;

var slide_strings_arrays = [
	["TROLLCORE ENTERPRISES TM", "AND", "ONE MOTION GAMES", "PRESENT"],
	["A GAME BY", "WLY_CDGR", "WITH SPRITES AND SOUNDS BY", "MARLEY HALL"]
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
		
		var tweak_values_array = tweak_values;
		if (1 == i) tweak_values_array = tweak_values_1;
		
		scr_Splitsfont_Set_Size(new_string, tweak_values_array[j, 0]);
		scr_Splitsfont_Set_Weight(new_string, tweak_values_array[j, 1]);
		scr_Splitsfont_Set_Kern(new_string, tweak_values_array[j, 2]);
		scr_Splitsfont_Set_RotationSpeed(new_string, tweak_values_array[j, 3]);
		slides_y[i, j] = tweak_values_array[j, 4];	

		slides[i, j] = new_string;
	}
}

var three_window_widths = window_width * 3;

slide_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);

x_paths[0, 0] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 0], slide_left);
x_paths[0, 1] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 1], slide_left);
x_paths[0, 2] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 2], slide_right);
x_paths[0, 3] = scr_SlideTween_Add_Default_Path(slide_tween, slides[0, 3], slide_right);

x_paths[1, 0] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 0], slide_right);
x_paths[1, 1] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 1], slide_right);
x_paths[1, 2] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 2], slide_left);
x_paths[1, 3] = scr_SlideTween_Add_Default_Path(slide_tween, slides[1, 3], slide_left);

trollcore_angle = 30;
scr_Splitsfont_Set_Angle(slides[0, 0], trollcore_angle);

names_angle = 15;
scr_Splitsfont_Set_Angle(slides[1, 1], names_angle);
scr_Splitsfont_Set_Angle(slides[1, 3], names_angle);