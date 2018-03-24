/// @description Init header and menu
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "GAME OVER");
scr_Splitsfont_Set_Tweaks(header_string, [0.06, 0.038, 0.06, 0, 0]);

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
	scr_Splitsfont_Set_Tweaks(too_bad_string, [0.025, 0.003, 0.004, 0, 30]);
	
	too_bad_strings[i] = too_bad_string;
	
	too_bad_string_x_offsets[i] =
		(sliding_ribbon_width / 2) -
		(scr_Splitsfont_Get_Width(too_bad_string) / 2);
}
too_bad_string_y = 0.5 * window_height;
too_bad_string_x_offset=  0;
too_bad_string_x = 0;

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

//sf_tweaker = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_Tweaker);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, header_string);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, new_high_score_string);
//scr_Splitsfont_Tweaker_Add_String(sf_tweaker, check_steam_string);

var menu_y_pos = 
	y + sliding_ribbon_height -
	(2.5 * menu_vertical_spacing);
	
menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), menu_y_pos,
	["TRY AGAIN", "MAIN MENU"],
	menu_is_not_tweened
);

event_inherited();

header_string_y = 0.32 * window_height;