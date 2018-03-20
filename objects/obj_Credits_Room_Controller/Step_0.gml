/// @description Insert description here
// You can write your code in this editor
//for (var i = 0; i < backer_tween_strings_count; i++) {
//	if (-1 == backer_tweens[i]) { 
//		var backer_tween = instance_create_layer(0, 0, "Splitsfont", obj_SlideTween);
//		backer_tween.close_enough *= 0.05;
		
//		backer_tween_x_paths[i] = scr_SlideTween_Add_Default_Path(
//			backer_tween, 
//			backer_strings[backer_string_index], 
//			choose(slide_left, slide_right)
//		);
//		backer_tweens[i] = backer_tween;
//		backer_tween_strings[i] = backer_strings[backer_string_index];
//		backer_tween_pauses[i] = backer_bonuses[backer_string_index];
			
//		backer_string_index = (backer_string_index + 1) % backer_count;
		
//	}
	
//	else if (backer_tweens[i].paused) {
//		if (backer_tween_pauses[i] <= 0) {
//			backer_tweens[i].paused = false;
//		}
//		else {
//			backer_tween_pauses[i] -= 1;
//		}
//	}
	
//	else if (backer_tweens[i].complete) {
//		instance_destroy(backer_tween_x_paths[i]);
//		instance_destroy(backer_tweens[i]);
		
//		backer_tweens_x_paths[i] = -1;
//		backer_tweens[i] = -1;
//	}
//}


//// Only the title is animated on the first screen
//scr_Splitsfont_Rotate_String(first_screen_strings[0]);

// Nothing is animated on the second screen

var number_of_strings_on_this_screen = screen_strings_lengths[screen_index];
for (var i = 0; i < number_of_strings_on_this_screen; i++) {
	scr_Splitsfont_Rotate_String(screen_strings[screen_index, i]);
}

switch(screen_index) {
case 0:
	if (screen_string_tweens[0].paused) {
		screen_string_tweens[0].paused = false;
	}
	else if (screen_string_tweens[0].complete) {
		screen_index = 1;
		screen_string_tweens[0].active = false;
		screen_string_tweens[1].active = true;
	}
	break;
	
case 1:
	break;
}