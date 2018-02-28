/// @description Draw
scr_Draw_Header(id);
scr_Draw_Menu(menu_item_index, menu_item_count, menu_item_labels);

with (global.sprites_and_fonts) {
	var len = array_length_1d(ach_sprites);
	for (var i = 0; i < len; i++) {
		draw_sprite(ach_sprites[i], 0, 200, 200 + i * 100);
	}
}