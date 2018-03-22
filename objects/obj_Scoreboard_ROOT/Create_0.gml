/// @description Init
points = 0;
target_points = 0;

submitted_frames_low = false;
submitted_frames_mid = false;
submitted_frames_high = false;

var number_string = -1;
var number_as_string = -1;
for (var i = 0; i < 10; i++) {
	number_as_string = string(i);
	number_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(number_string, number_as_string);
	scr_Splitsfont_Set_Size(number_string, splitsfont_size_scoreboard);
	scr_Splitsfont_Set_Weight(number_string, splitsfont_weight_scoreboard);
	number_strings[ord(number_as_string)] = number_string;
}

score_label_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(score_label_string, "SCORE: ");
scr_Splitsfont_Set_Tweaks(score_label_string, [0.025, 0.001, 0.02, 0, 0]);

frames_label_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(frames_label_string, "FRAMES: ");
scr_Splitsfont_Set_Tweaks(frames_label_string, [0.025, 0.001, 0.02, 0, 0]);
//scr_Splitsfont_Set_Size(frames_label_string, splitsfont_size_scoreboard);
//scr_Splitsfont_Set_Weight(frames_label_string, splitsfont_weight_scoreboard);

should_display_frames = 
	(game_difficulty_cool != global.game_settings.difficulty);
	
	
//sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
//for (var i = 0; i < 10; i++) {
//	number_as_string = string(i);
//	scr_Splitsfont_Tweaker_Add_String(sf_tweaker, number_strings[ord(number_as_string)]);
//}
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, score_label_string);