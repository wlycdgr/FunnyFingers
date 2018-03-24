/// @description Init
points = 0;
target_points = 0;

var number_string = -1;
var number_as_string = -1;
for (var i = 0; i < 10; i++) {
	number_as_string = string(i);
	number_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(number_string, number_as_string);
	scr_Splitsfont_Set_Tweaks(number_string, [0.01, 0.001, 0.05, 0, 0]);
	//scr_Splitsfont_Set_Size(number_string, splitsfont_size_scoreboard);
	//scr_Splitsfont_Set_Weight(number_string, splitsfont_weight_scoreboard);
	number_strings[ord(number_as_string)] = number_string;
}

current_rotate_speed = 0;
rotate_speed_bump = 36;
rotate_speed_decrease_per_frame = 3.6;

max_pre_pop_size = 0.05;
normal_size = 0.01;
current_size = normal_size;
size_range = max_pre_pop_size - normal_size;

new_high_score_size = 0.05;
new_high_score_weight = 0.005;

//score_label_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//scr_Splitsfont_Set_Text(score_label_string, "SCORE: ");
//scr_Splitsfont_Set_Tweaks(score_label_string, [0.015, 0.001, 0.005, 0, 0]);

// [0.025, 0.001, 0.02, 0, 0]

// [0.025, 0.001, 0.05, 36000, 0]
//sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
//var numbers_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//scr_Splitsfont_Set_Text(numbers_string, "0123456789");

//for (var i = 0; i < 10; i++) {
//	number_as_string = string(i);
//	scr_Splitsfont_Tweaker_Add_String(sf_tweaker, number_strings[ord(number_as_string)]);
//}
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, numbers_string);