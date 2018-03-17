/// @description Animate logo
for (var i = 0; i < 4; i++) {
	scr_Splitsfont_Rotate_String(slides[slide_index, i]);
}

if (slide_tween.paused) {
	slide_tween.paused = false;
}

else if (slide_tween.complete) {
	if (0 == slide_index) {
		scr_SlideTween_Reset(slide_tween);
		slide_index = 1;
	}
	else {
		room_goto(r_MainMenu);
	}
}