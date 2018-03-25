/// @param {integer} playfield_id The id of the playfield that this multiplier bar belongs to

var new_mb = instance_create_layer(
	argument0.x, playfield_bottom_y, 
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
		
	fully_drained = true;
	is_refilling = false;
	
	multiplier = mb_min_multiplier;
	
	multiplier_label = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(multiplier_label, "X");
	scr_Splitsfont_Set_Tweaks(multiplier_label, [0.02, 0.002, 0.05, 0, 0]);;
	
	var number_string = -1;
	var number_as_string = -1;
	for (var i = 0; i < 10; i++) {
		number_as_string = string(i);
		number_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
		scr_Splitsfont_Set_Text(number_string, number_as_string);
		scr_Splitsfont_Set_Tweaks(number_string, [0.02, 0.002, 0.05, 0, 0]);
		number_strings[ord(number_as_string)] = number_string;
	}
}

return new_mb;