/// @description Test font
draw_sprite(font_sprite, 15, 500, 600);

draw_set_font(-1);
draw_text(500, 625, string(sprite_get_width(font_sprite)));
draw_text(535, 625, string(sprite_get_height(font_sprite)));
draw_set_font(ff_font);