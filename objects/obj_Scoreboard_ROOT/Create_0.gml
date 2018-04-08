/// @description Init
points = 0;
target_points = 0;

var number_string = -1;

scr_Splitsfont_Set_DefaultTweaks([0.01, 0.001, 0.05, 0, 0]);

var numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
for (var i = 0; i < 10; i++) {
	number_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(number_string, numbers[i]);
	number_strings[i] = number_string;
}

scr_Splitsfont_Reset_DefaultTweaks();

current_rotate_speed = 0;
rotate_speed_bump = 36;
rotate_speed_decrease_per_frame = 3.6;

max_pre_pop_size = 0.05;
normal_size = 0.01;
current_size = normal_size;
size_range = max_pre_pop_size - normal_size;

new_high_score_size = 0.05;
new_high_score_weight = 0.005;

high_score_tweened = false;