/// @param {integer} playfield_id The id of the playfield that this multiplier bar belongs to

var new_mb = instance_create_layer(
	argument0.x, playfield_bottom_y + 8, 
	"MultiplierBar", 
	obj_Multiplier_Bar
);

with (new_mb) {
	playfield = argument0;
	width = argument0.width;

	fill_x = 0;
	current_time_in_seconds_to_drain = mb_seconds_to_drain;
	current_drain_per_frame = 
		(width / game_fps) /
		current_time_in_seconds_to_drain;
	current_fill_per_frame = current_drain_per_frame * 4;
		
	fully_drained = true;
	is_refilling = false;
	
	move_multiplier = mb_min_multiplier;
	move_multiplier_number_x_positions = [
		30,
		45
	];
	move_multiplier_y = 75;
	
	column_fill_multiplier = floor(1.0 * global.game_settings.column_count);
	column_fill_multiplier_X_x = 75;
	column_fill_multiplier_number_x = [
		90,
		105
	]
	
	multiplier_label = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(multiplier_label, "X");
	scr_Splitsfont_Set_Tweaks(multiplier_label, [0.02, 0.003, 0.05, 0, 0]);;
	
	scr_Splitsfont_Set_DefaultTweaks([0.02, 0.003, 0.05, 0, 0]);
	
	var number_string = -1;
	var numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];
	for (var i = 0; i < 10; i++) {
		number_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
		scr_Splitsfont_Set_Text(number_string, numbers[i]);
		number_strings[i] = number_string;
	}
	
	scr_Splitsfont_Reset_DefaultTweaks();
	
	perfect_combo = true;
	
	y_bottom = y + 8;
}

return new_mb;