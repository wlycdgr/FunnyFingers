/// @description Reset move multiplier
move_multiplier = mb_min_multiplier;
fully_drained = true;
fill_x = 0;
is_refilling = false;

global.scoreboard.combo_broken = true;

scr_Splitsfont_Set_Weight(multiplier_label, 0.001);	
var number_string = 0;
for (var i = 0; i < 10; i++) {
	number_string = number_strings[ord(string(i))];
	scr_Splitsfont_Set_Weight(number_string, 0.001);
}
	