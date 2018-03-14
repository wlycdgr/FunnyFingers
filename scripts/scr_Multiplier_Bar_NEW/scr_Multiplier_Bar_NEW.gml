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
	current_time_in_seconds_to_drain = mb_max_seconds_to_drain;
	current_drain_per_frame = 
		(width / game_fps) /
		current_time_in_seconds_to_drain;
		
	fully_drained = true;
	is_refilling = false;
	
	multiplier = mb_min_multiplier;
	
	multiplier_label = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(multiplier_label, "MULTIPLIER: X");
	scr_Splitsfont_Set_Size(multiplier_label, splitsfont_size_scoreboard);
	scr_Splitsfont_Set_Weight(multiplier_label, splitsfont_weight_scoreboard);
}

return new_mb;