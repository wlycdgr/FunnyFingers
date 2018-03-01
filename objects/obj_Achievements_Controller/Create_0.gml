/// @description Insert description here
// You can write your code in this editor
scr_Init_Header(id, "Achievements");
scr_Init_Menu(id, ["Play", "High Scores", "Title"]);

var ach_steam_api_names = [
	"ach_0_qweiop",
	"ach_1_qualifier"
];
var len = array_length_1d(ach_steam_api_names);

for (var i = 0; i < len; i++) {
	if (steam_get_achievement(ach_steam_api_names[i])) {
		ach_sprites[i] = global.sprites_and_fonts.ach_unlocked_sprites[i];
	}
	else {
		ach_sprites[i] = global.sprites_and_fonts.ach_locked_sprites[i];
	}
}


ach_labels = [
	"QWEIOP",
	"Qualifier"
];