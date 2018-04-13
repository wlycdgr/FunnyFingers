/// @description Init
screen_index = 0;
screen_counter = 0;
lead_time = game_fps;

// screen_index 0
use_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(use_string, "USE YOUR FINGERS TO TYPE");
scr_Splitsfont_Set_Tweaks(use_string, [0.05, 0.009, 0.018, 0, 30]);
use_string_y = 0.2 * window_height;

qweiop_unselected_weight = 0.003;
qweiop_selected_weight = 0.027;
qweiop_letters = ["Q", "W", "E", "I", "O", "P"];
qweiop_length = array_length_1d(qweiop_letters);
var sf_string = 0;
for (var i = 0; i < qweiop_length; i++) {
	sf_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	
	scr_Splitsfont_Set_Text(sf_string, qweiop_letters[i]);
	scr_Splitsfont_Set_Tweaks(sf_string, [0.15, qweiop_unselected_weight, 0.05, 0, 0]);
	
	qweiop_strings[i] = sf_string;
}
qweiop_strings_y = 0.38 * window_height;
qweiop_index = 0;


to_move_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(to_move_string, "TO MOVE THE FINGERS");
scr_Splitsfont_Set_Tweaks(to_move_string, [0.05, 0.009, 0.018, 0, 30]);
to_move_string_y = 0.65 * window_height;

screen_0_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
use_string_x_path = scr_SlideTween_Add_Default_Path(screen_0_tween, use_string, slide_right);
var qweiop_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(qweiop_string, "QWEIOP");
scr_Splitsfont_Set_Tweaks(qweiop_string, [0.15, qweiop_unselected_weight, 0.05, 0, 0]);
qweiop_string_x_path  = scr_SlideTween_Add_Default_Path(screen_0_tween, qweiop_string, slide_left);
to_move_string_x_path =scr_SlideTween_Add_Default_Path(screen_0_tween, to_move_string, slide_right);

var px_kern_value = 0.05 * window_height;
qweiop_string_x_offsets[0] = 0;
for (var i = 1; i < qweiop_length; i++) {
	qweiop_string_x_offsets[i] =
		qweiop_string_x_offsets[i-1] +
		scr_Splitsfont_Get_Width(qweiop_strings[i-1]) +
		px_kern_value;
}

for (var i = 0; i < qweiop_length; i++) {
	qweiop_string_x_positions[i] = 
		qweiop_string_x_path.value +
		qweiop_string_x_offsets[i];
}

// screen_index 1
excellent_work_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(excellent_work_string, "EXCELLENT WORK");
scr_Splitsfont_Set_Tweaks(excellent_work_string, [0.08, 0.005, 0.02, 0, -15]);
excellent_work_string_y = 0.42 * window_height;

screen_1_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
excellent_work_string_x_path = scr_SlideTween_Add_Default_Path(screen_1_tween, excellent_work_string, slide_right);
screen_1_tween.active = false;

// screen_index 2
good_luck_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(good_luck_string, "GOOD LUCK");
scr_Splitsfont_Set_Tweaks(good_luck_string, [0.08, 0.015, 0.05, 0, 15]);
good_luck_string_y = 0.42 * window_height;

screen_2_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
good_luck_string_x_path = scr_SlideTween_Add_Default_Path(screen_2_tween, good_luck_string, slide_left);
screen_2_tween.active = false;