/// @description Insert description here
// You can write your code in this editor
header = scr_String_NEW(
	"Instances",
	window_x_center, 50, fa_center,
	"Achievements",
	global.font_leaderboards_header,
	c_black
);

menu = scr_Menu_NEW(
	window_x_center, 550,
	["Play Game", "High Scores", "Title"]
);


for (var i = 0; i < global.steam.ach_count; i++) {
	if (global.steam.unlocked[i]) {
		ach_sprites[i] = global.sprites_and_fonts.ach_unlocked_sprites[i];
	}
	else {
		ach_sprites[i] = global.sprites_and_fonts.ach_locked_sprites[i];
	}
}

col_1_x = 100;
col_2_x = 400;
col_3_x = 700;
col_4_x = 1000;
text_x_offset = 75;
top_y = 200;
y_spacing = 100;