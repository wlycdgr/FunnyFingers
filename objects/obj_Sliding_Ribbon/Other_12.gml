/// @description On begin sliding out
scr_Play_SFX(snd_fx_SlideOut);

scr_SlideTween_Force_Slide_Out(slide_tween);
state = srs_sliding_out;
menu.active = false;