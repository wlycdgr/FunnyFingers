/// @description Init
q_main_menu = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(q_main_menu, "Q: MAIN MENU");
scr_Splitsfont_Set_Tweaks(q_main_menu, [0.015, 0.0015, 0.01, 0, 0]);


pause_counter_value = 0;
pause_counter_limit = 60;

// FIRST SCREEN STUFF
screen_texts[0, 0] = "FUNNY FINGERS";
screen_texts[0, 1] = "A SIMPLE GAME";
screen_texts[0, 2] = "FOR 2 TO 10 FINGERS";
screen_texts[0, 3] = "DESIGN AND CODE BY";
screen_texts[0, 4] = "WLY_CDGR";
screen_texts[0, 5] = "SPRITES AND SOUNDS BY";
screen_texts[0, 6] = "MARLEY HALL";

screen_tweaks[0, 0] = [0.12, 0.021, 0.025, 90, 0]; // FUNNY FINGERS
screen_tweaks[0, 1] = [0.03, 0.003, 0.02, 0, 0]; // A SIMPLE GAME
screen_tweaks[0, 2] = [0.03, 0.003, 0.02, 0, 0]; // FOR 2 TO 10 FINGERS
screen_tweaks[0, 3] = [0.03, 0.001, 0.01, 0, 0]; // DESIGN AND CODE BY
screen_tweaks[0, 4] = [0.04, 0.007, 0.01, 0, 0]; // ILYA ZAREMBSKY
screen_tweaks[0, 5] = [0.03, 0.001, 0.01, 0, 0]; // SPRITES AND SOUNDS BY
screen_tweaks[0, 6] = [0.04, 0.007, 0.01, 0, 0]; // MARLEY HALL

screen_string_y_positions[0, 0] = 0.1 * window_height; // FUNNY FINGERS
screen_string_y_positions[0, 1] = 0.32 * window_height; // A SIMPLE GAME
screen_string_y_positions[0, 2] = 0.385 * window_height; // FOR 2 TO 10 FINGERS
screen_string_y_positions[0, 3] = 0.566 * window_height; // DESIGN AND CODE BY
screen_string_y_positions[0, 4] = 0.63 * window_height; // ILYA ZAREMBSKY
screen_string_y_positions[0, 5] = 0.775 * window_height; // SPRITES AND SOUNDS BY
screen_string_y_positions[0, 6] = 0.84 * window_height; // MARLEY HALL
	
screen_slide_directions[0, 0] = slide_right; // FUNNY FINGERS
screen_slide_directions[0, 1] = slide_left; // A SIMPLE GAME
screen_slide_directions[0, 2] = slide_left; // FOR 2 TO 10 FINGERS
screen_slide_directions[0, 3] = slide_right; // DESIGN AND CODE BY
screen_slide_directions[0, 4] = slide_left; // ILYA ZAREMBSKY
screen_slide_directions[0, 5] = slide_right; // SPRITES AND SOUNDS BY
screen_slide_directions[0, 6] = slide_left; // MARLEY HALL
// /FIRST SCREEN STUFF

// SECOND SCREEN STUFF
screen_texts[1, 0] = "SPECIAL THANKS:";
screen_texts[1, 1] = "SERGE ZAREMBSKY";
screen_texts[1, 2] = "NATALIE VAYKUS ZAREMBSKY";
screen_texts[1, 3] = "ERIC ZIMMERMAN";
screen_texts[1, 4] = "DAN TOROP";
screen_texts[1, 5] = "CHARLES PRATT";
screen_texts[1, 6] = "FRANK LANTZ";
screen_texts[1, 7] = "BENNETT FODDY";
screen_texts[1, 8] = "MARK ZUCKERBERG";
screen_texts[1, 9] = "RAY RAYLIB SAN";

screen_tweaks[1, 0] = [0.03, 0.001, 0.01, 0, 0]; // SPECIAL THANKS:
screen_tweaks[1, 1] = [0.04, 0.007, 0.01, 0, 30]; // SERGE ZAREMBSKY
screen_tweaks[1, 2] = [0.04, 0.007, 0.01, 0, -30]; // NATALIE VAYKUS ZAREMBSKY
screen_tweaks[1, 3] = [0.04, 0.007, 0.01, 0, 30]; // ERIC ZIMMERMAN
screen_tweaks[1, 4] = [0.04, 0.007, 0.01, 0, -30]; // DAN TOROP
screen_tweaks[1, 5] = [0.04, 0.007, 0.01, 0, 30]; // CHARLES PRATT
screen_tweaks[1, 6] = [0.04, 0.007, 0.01, 0, -30]; // FRANK LANTZ
screen_tweaks[1, 7] = [0.04, 0.007, 0.01, 0, 30]; // BENNETT FODDY
screen_tweaks[1, 8] = [0.04, 0.007, 0.01, 0, 0]; // MARK ZUCKERBERG
screen_tweaks[1, 9] = [0.04, 0.007, 0.01, 0, 30]; // RAY RAYLIB SAN	

screen_string_y_positions[1, 0] = 0.1 * window_height; // SPECIAL THANKS:
screen_string_y_positions[1, 1] = 0.2 * window_height; // SERGE ZAREMBSKY
screen_string_y_positions[1, 2] = 0.28 * window_height; // NATALIE VAYKUS ZAREMBSKY
screen_string_y_positions[1, 3] = 0.36 * window_height; // ERIC ZIMMERMAN
screen_string_y_positions[1, 4] = 0.44 * window_height; // DAN TOROP
screen_string_y_positions[1, 5] = 0.52 * window_height; // CHARLES PRATT
screen_string_y_positions[1, 6] = 0.60 * window_height; // FRANK LANTZ
screen_string_y_positions[1, 7] = 0.68 * window_height; // BENNETT FODDY
screen_string_y_positions[1, 8] = 0.76 * window_height; // MARK ZUCKERBERG
screen_string_y_positions[1, 9] = 0.84 * window_height; // RAY RAYLIB SAN

screen_slide_directions[1, 0] = slide_right; // SPECIAL THANKS
screen_slide_directions[1, 1] = slide_left; // SERGE ZAREMBSKY
screen_slide_directions[1, 2] = slide_left; // NATALIE VAYKUS ZAREMBSKY
screen_slide_directions[1, 3] = slide_right; // ERIC ZIMMERMAN
screen_slide_directions[1, 4] = slide_left; // DAN TOROP
screen_slide_directions[1, 5] = slide_right; // CHARLES PRATT
screen_slide_directions[1, 6] = slide_left; // FRANK LANTZ
screen_slide_directions[1, 7] = slide_right; // BENNETT FODDY
screen_slide_directions[1, 8] = slide_left; // MARK ZUCKERBERG
screen_slide_directions[1, 9] = slide_right; // RAY RAYLIB SAN
// /SECOND SCREEN STUFF

// THIRD SCREEN STUFF
screen_texts[2, 0] = "EXTRA SPECIAL THANKS";
screen_texts[2, 1] = "TO ALL THE GENEROUS AND PATIENT";
screen_texts[2, 2] = "KICKSTARTER BACKERS:";

screen_tweaks[2, 0] = [0.03, 0.001, 0.01, 0, 0]; // EXTRA SPECIAL THANKS
screen_tweaks[2, 1] = [0.03, 0.001, 0.01, 0, 0]; // TO ALL THE GENEROUS AND PATIENT
screen_tweaks[2, 2] = [0.03, 0.001, 0.01, 0, 0]; // KICKSTARTER BACKERS: 

screen_string_y_positions[2, 0] = 0.1 * window_height; // EXTRA SPECIAL THANKS
screen_string_y_positions[2, 1] = 0.18 * window_height; // TO ALL THE GENEROUS AND PATIENT
screen_string_y_positions[2, 2] = 0.26 * window_height; // KICKSTARTER BACKERS:

screen_slide_directions[2, 0] = slide_left; // EXTRA SPECIAL THANKS
screen_slide_directions[2, 1] = slide_right; // TO ALL THE GENEROUS AND PATIENT
screen_slide_directions[2, 2] = slide_left; // KICKSTARTER BACKERS:
// /THIRD SCREEN STUFF

// FOURTH SCREEN STUFF
screen_texts[3, 0] = "A";
screen_texts[3, 1] = "THE SPLITS";
screen_texts[3, 2] = "GAME";

screen_tweaks[3, 0] = [0.025, 0.001, 0.02, 0, 0]; // A
screen_tweaks[3, 1] = [0.05, 0.003, 0.05, 0, 0]; // THE SPLITS
screen_tweaks[3, 2] = [0.025, 0.001, 0.02, 0, 0]; // GAME

screen_string_y_positions[3, 0] = 0.35 * window_height; // A
screen_string_y_positions[3, 1] = 0.437 * window_height; // THE SPLITS
screen_string_y_positions[3, 2] = 0.55 * window_height; // GAME

screen_slide_directions[3, 0] = slide_right; // A
screen_slide_directions[3, 1] = slide_left; // THE SPLITS
screen_slide_directions[3, 2] = slide_right; // GAME
// /FOURTH SCREEN STUFF

var screen_string = 0;

var screen_count = array_height_2d(screen_texts);

for (var i = 0; i < screen_count; i++) {
	screen_strings_lengths[i] = array_length_2d(screen_texts, i);
	
	screen_string_tweens[i] = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
	screen_string_tweens[i].active = false;

	for (var j = 0; j < screen_strings_lengths[i]; j++) {
		screen_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
		
		scr_Splitsfont_Set_Text(screen_string, screen_texts[i, j]);
		scr_Splitsfont_Set_Tweaks(screen_string, screen_tweaks[i, j]);
		
		screen_string_x_paths[i, j] = scr_SlideTween_Add_Default_Path(
			screen_string_tweens[i],
			screen_string,
			screen_slide_directions[i, j]
		);
		
		screen_strings[i, j] = screen_string;
	}
}

screen_string_tweens[0].active = true;

screen_index = 0;


// BACKER STUFF
backer_names_and_size_bonuses = scr_Credits_Backer_Names_And_Bonuses_List();
backer_list_length = array_length_1d(backer_names_and_size_bonuses);

var backer_infos = -1;
var backer_string = -1;

scr_Splitsfont_Set_DefaultTweaks([0.04, 0.007, 0.01, 0, 0]);

for (var i = 0; i < backer_list_length; i++) {
	backer_infos = backer_names_and_size_bonuses[i];
	
	backer_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	
	scr_Splitsfont_Set_Text(backer_string, backer_infos[0]);
	
	backer_strings[i] = backer_string;
	
	backer_bonuses[i] = backer_infos[1];
}
scr_Splitsfont_Reset_DefaultTweaks();

backer_tween_strings_count = 7;
backer_string_index = 7;

var backer_tween = 0;
var backer_tween_direction = slide_right;
for (var i = 0; i < backer_tween_strings_count; i++) {
	backer_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
	backer_tween.close_enough *= 0.05;
	backer_tween.active = false;
	
	backer_tween_strings[i] = backer_strings[i];
	
	backer_tween_directions[i] = backer_tween_direction;
	
	backer_string_x_paths[i] = scr_SlideTween_Add_Default_Path(
		backer_tween, backer_tween_strings[i], backer_tween_direction);
	
	backer_string_y_positions[i] = (0.36 + (0.08 * i)) * window_height;
	
	backer_tween_pauses[i] = backer_bonuses[i];
	
	backer_tweens[i] = backer_tween;
	
	if (slide_right == backer_tween_direction) { backer_tween_direction = slide_left; }
	else { backer_tween_direction = slide_right; }

}