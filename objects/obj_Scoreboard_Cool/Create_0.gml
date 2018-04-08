/// @description Insert description here
// You can write your code in this editor
event_inherited();

for (var i = 0; i < 10; i++) {
	scr_Splitsfont_Set_Tweaks(number_strings[i], [0.025, 0.002, 0.05, 0, 0]);
}

already_unlocked_level_99 = ds_map_find_value(
	global.steam.unlocked,
	"ach_13_level_99"
);

level_99_unlocked_this_time = false;