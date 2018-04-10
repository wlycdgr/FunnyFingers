/// @description Reset move multiplier
scr_Play_SFX(snd_fx_LoseMultiplier);

move_multiplier = mb_min_multiplier;
fully_drained = true;
fill_x = 0;
is_refilling = false;

global.scoreboard.combo_broken = true;

scr_Splitsfont_Set_Weight(multiplier_label, 0.001);	
var number_string = 0;
for (var i = 0; i < 10; i++) {
	scr_Splitsfont_Set_Weight(number_strings[i], 0.001);
}
	