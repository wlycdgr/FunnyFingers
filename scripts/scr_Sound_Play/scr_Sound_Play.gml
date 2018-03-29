/// @function scr_Sound_Play(snd_name_macro)
if (global.sound.off) exit;

audio_play_sound(global.sound.sfx[argument0], 1, false);