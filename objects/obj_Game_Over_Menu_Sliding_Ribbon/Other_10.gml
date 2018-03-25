/// @description Insert description here
// You can write your code in this editor
if (game_difficulty_cool == global.game_settings.difficulty) {
	ribbon_state = gors_cool;
}
else if (global.scoreboard.points > global.scoreboard.current_high_score) {
	ribbon_state = gors_new_high_score;
}
else {
	ribbon_state = gors_too_bad;
}


switch(ribbon_state) {
case gors_cool:
	var random_string_index = irandom_range(0, great_job_strings_count - 1);
	great_job_string = great_job_strings[random_string_index];
	great_job_string_x_offset = great_job_string_x_offsets[random_string_index];
	
	break;
	
case gors_too_bad:
	var random_string_index = irandom_range(0, too_bad_strings_count - 1);
	too_bad_string = too_bad_strings[random_string_index];
	too_bad_string_x_offset = too_bad_string_x_offsets[random_string_index];
	
	break;

default:
	break;
}

event_inherited();