/// @description Init
slide_index = 0;

scripts = [
	scr_Splitsfont_Set_Size,
	scr_Splitsfont_Set_Weight,
	scr_Splitsfont_Set_Kern,
	scr_Splitsfont_Set_RotationSpeed
];

tweak_menu_index = 0;

tweak_increments = [0.01, 0.01, 0.01, 1.0, 0.01];

tweak_values[0, 0] = 0.07;
tweak_values[0, 1] = 0.03;
tweak_values[0, 2] = 0.0;
tweak_values[0, 3] = 0.0;
tweak_values[0, 4] = 0.14;
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


tweak_menu_labels = [
	"Size: ",
	"Weight: ",
	"Kern: ",
	"RotationSpeed: ",
	"Y pos: "
]

draw_tweak_info = true;

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
		
		scr_Splitsfont_Set_Size(new_string, tweak_values[j, 0]);
		scr_Splitsfont_Set_Weight(new_string, tweak_values[j, 1]);
		scr_Splitsfont_Set_Kern(new_string, tweak_values[j, 2]);
		scr_Splitsfont_Set_RotationSpeed(new_string, tweak_values[j, 3]);
		slides_y[i, j] = tweak_values[j, 4];
		
		slide_in_targets_x[i, j] = window_x_center - (scr_Splitsfont_Get_Width(new_string) / 2);
		
		slides[i, j] = new_string;
	}
}

slides_x[0, 0] = window_width;
slides_x[0, 1] = window_width;
slides_x[0, 2] = -(scr_Splitsfont_Get_Width(slides[0, 2]));
slides_x[0, 3] = -(scr_Splitsfont_Get_Width(slides[0, 3]));

slide_out_targets_x[0, 0] = -(3 * scr_Splitsfont_Get_Width(slides[0, 0]));
slide_out_targets_x[0, 1] = -(3 * scr_Splitsfont_Get_Width(slides[0, 1]));
slide_out_targets_x[0, 2] = 3 * window_width;
slide_out_targets_x[0, 3] = 3 * window_width;

close_enough = (slides_x[0, 0] - slide_in_targets_x[0, 0]) * 0.01;

slide_proportion_per_frame_current = 0.06;
slide_proportion_per_frame_min = 0.04;
slide_proportion_per_frame_max = 0.06;
slide_proportion_increase_per_frame = 0.001;
slide_state = slide_state_sliding_in;


slide_holding_state_counter = 0;
slide_holding_state_frame_count = 10;

trollcore_angle = 30;
scr_Splitsfont_Set_Angle(slides[0, 0], trollcore_angle);

//alarm_set(0, game_fps * 2);