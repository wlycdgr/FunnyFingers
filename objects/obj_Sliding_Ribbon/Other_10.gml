/// @description On begin sliding in

scr_SlideTween_Reset(slide_tween);
slide_tween.active = true;

menu.active = true;
with (menu) { 
	event_user(0);
	select = false;
}

state = srs_sliding_in;