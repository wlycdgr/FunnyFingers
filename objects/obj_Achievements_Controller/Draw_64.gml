/// @description Draw

scr_String_Draw(header);

draw_set_font(global.font_menu_item);
draw_set_color(the_color_of_information);
for (var i = 0; i < steam_achievement_count; i++) {
	draw_sprite(ach_sprites[i], 0, 200, 200 + i * 100);
	draw_text(275, 200 + i * 100, ach_titles[i]);
	draw_text(275, 200 + 25 + i * 100, ach_descriptions[i]);
}

scr_Menu_Draw(menu);