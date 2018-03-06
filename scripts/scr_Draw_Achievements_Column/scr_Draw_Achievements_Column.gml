/// @function scr_Draw_Achievements_Column(col_x, start_index, end_index)
for (var i = argument1; i < argument2; i++) {	
	draw_sprite(
		ach_sprites[i], 0, 
		argument0, top_y + ((i - argument1) * y_spacing)
	);
	draw_text(
		argument0 + text_x_offset,
		top_y + ((i - argument1) * y_spacing),
		global.steam.ach_names[i]
	);
}