/// @description Draw high score and check steam strings along with the standard stuff
if (srs_inactive == state) exit;

event_inherited();

switch(ribbon_state) {
case gors_cool:
	scr_Splitsfont_Draw_String(
		great_job_string,
		great_job_string_x, great_job_string_y
	);
	break;
	
case gors_new_high_score:
	scr_Splitsfont_Draw_String(
		new_high_score_string,
		new_high_score_string_x,
		new_high_score_string_y
	);
	break;
	
case gors_too_bad:
	scr_Splitsfont_Draw_String(
		too_bad_string,
		too_bad_string_x, too_bad_string_y
	);
	break;

default:
	break;
}


scr_Splitsfont_Draw_String(
	check_steam_string,
	check_steam_string_x, check_steam_string_y
);