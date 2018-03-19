/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < backer_tween_strings_count; i++) {
	if (-1 == backer_tweens[i]) { 
		var backer_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
		backer_tween.close_enough *= 0.05;
		
		backer_tween_x_paths[i] = scr_SlideTween_Add_Default_Path(
			backer_tween, 
			backer_strings[backer_string_index], 
			choose(slide_left, slide_right)
		);
		backer_tweens[i] = backer_tween;
		backer_tween_strings[i] = backer_strings[backer_string_index];
		backer_tween_pauses[i] = backer_bonuses[backer_string_index];
			
		backer_string_index = (backer_string_index + 1) % backer_count;
		
	}
	
	else if (backer_tweens[i].paused) {
		if (backer_tween_pauses[i] <= 0) {
			backer_tweens[i].paused = false;
		}
		else {
			backer_tween_pauses[i] -= 1;
		}
	}
	
	else if (backer_tweens[i].complete) {
		instance_destroy(backer_tween_x_paths[i]);
		instance_destroy(backer_tweens[i]);
		
		backer_tweens_x_paths[i] = -1;
		backer_tweens[i] = -1;
	}
}
		