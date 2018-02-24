/// @description load FONT

//font_sprite = sprite_add("font_4736x96.png", 74, false, false, 0, 0);
//font_sprite = sprite_add("font_1184x24.png", 74, false, false, 0, 0);
font_sprite = sprite_add("font_4736x96.png", 74, false, false, 0, 0);
ff_font = font_add_sprite(font_sprite, ord("0"), false, 2);
draw_set_font(ff_font);

