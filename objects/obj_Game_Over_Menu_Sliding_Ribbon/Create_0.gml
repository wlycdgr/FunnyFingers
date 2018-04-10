/// @description Init header and menu
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "GAME OVER");
scr_Splitsfont_Set_Tweaks(header_string, [0.06, 0.038, 0.06, 0, 0]);

// for both too bad and great job texts
scr_Splitsfont_Set_DefaultTweaks([0.025, 0.003, 0.004, 0, 30]);
var sliding_ribbon_x_center = sliding_ribbon_width / 2;

too_bad_texts = [
	"THERE IS GREAT WISDOM IN KNOWING THE RIGHT MOMENT TO SURRENDER",
	"TO SUCCEED IS DELIGHTFUL BUT TO PERSIST IS NOBLE",
	"WITH DETERMINATION YOU MAY BE ABLE TO ACHIEVE A NEW HIGH SCORE",
	"YOU MAY DEVELOP GREATER SELF RESPECT IF YOU DO NOT GIVE UP",
	"TO GIVE UP MAY BE SHAMEFUL BUT TO PERSIST MAY BE FOOLISH",
	"TRUST THE PROCESS",
	"IT IS OFTEN VERY USEFUL TO BELIEVE THAT SUCCESS IS A MATTER OF PERSONAL EFFORT AND RESOLVE",
	"PRACTICE LETTING GO: IN THIS WAY YOU CAN PREPARE FOR DEATH",
	"FRUSTRATION IS WEAKNESS LEAVING THE MIND",
	"PRACTICE EVERY DAY AND YOU WILL PROBABLY IMPROVE"
];
too_bad_strings_count = array_length_1d(too_bad_texts);
too_bad_string = 0;
for (var i = 0; i < too_bad_strings_count; i++) {
	too_bad_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);	
	scr_Splitsfont_Set_Text(too_bad_string, too_bad_texts[i]);
	too_bad_strings[i] = too_bad_string;
	too_bad_string_x_offsets[i] =
		sliding_ribbon_x_center -
		(scr_Splitsfont_Get_Width(too_bad_string) / 2);
}
too_bad_string_y = 0.5 * window_height;
too_bad_string_x_offset=  0;
too_bad_string_x = 0;

great_job_texts = [
	"TERRIFIC JOB",
	"KEEP IT UP",
	"YOU ARE DOING GREAT",
	"YOU ARE A FANTASTIC HUMAN BEING",
	"SIMPLY AMAZING",
	"YOUR PERFORMANCE WAS INCREDIBLE",
	"EXCEPTIONAL MASTERY COMES NATURALLY TO YOU",
	"STUNNING EFFORT",
	"THREE WORDS: W O W"
];
great_job_strings_count = array_length_1d(great_job_texts);
great_job_string = 0;
for (var i = 0; i < great_job_strings_count; i++) {
	great_job_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);	
	scr_Splitsfont_Set_Text(great_job_string, great_job_texts[i]);
	great_job_strings[i] = great_job_string;
	great_job_string_x_offsets[i] =
		sliding_ribbon_x_center -
		(scr_Splitsfont_Get_Width(great_job_string) / 2);
}
great_job_string_y = 0.5 * window_height;
great_job_string_x_offset=  0;
great_job_string_x = 0;

// for both great job and too bad strings
scr_Splitsfont_Reset_DefaultTweaks();

new_high_score_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(
	new_high_score_string,
	"NEW HIGH SCORE"
);
scr_Splitsfont_Set_Tweaks(new_high_score_string,  [0.06, 0.038, 0.06, 0, 0]);
new_high_score_string_y = 0.48 * window_height;
new_high_score_string_x_offset =
	(sliding_ribbon_width / 2) -
	(scr_Splitsfont_Get_Width(new_high_score_string) / 2);
new_high_score_string_x = x + new_high_score_string_x_offset;


check_steam_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(
	check_steam_string,
	"CHECK THE LEADERBOARDS IN THE STEAM CLIENT TO SEE HOW YOU STACK UP"
);
scr_Splitsfont_Set_Tweaks(check_steam_string, [0.015, 0.001, 0.008, 0, 0]);
check_steam_string_y = 0.97 * window_height;
check_steam_string_x_offset =
	(sliding_ribbon_width / 2) - 
	(scr_Splitsfont_Get_Width(check_steam_string) / 2);
check_steam_string_x = x + check_steam_string_x_offset;

var menu_y_pos = 
	y + sliding_ribbon_height -
	(2.5 * menu_vertical_spacing);
	
menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), menu_y_pos,
	["PLAY AGAIN", "MAIN MENU"],
	menu_is_not_tweened
);

event_inherited();

header_string_y = 0.32 * window_height;

ribbon_state = gors_too_bad;