/// @description Init header and menu
header_sprite = global.sprites_and_fonts.ribbon_menu_header_game_over_sprite;
menu = scr_Menu_NEW(
	x + (sliding_ribbon_width / 2), y + 150,
	["Try Again", "Main Menu"]
);
event_inherited();