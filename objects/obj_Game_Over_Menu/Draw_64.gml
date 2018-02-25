/// @description Insert description here
// You can write your code in this editor
event_inherited();

draw_set_font(global.font_menu_item);
draw_set_color(the_color_of_failure);
var womp = "Sadly, your score does not count :(";
var womp_womp = "Cash out manually in the pause menu (Space / Enter / Escape) to retain a score.";
draw_text(
	(x + ribbon_menu_width / 2) - (string_width(womp) / 2),
	y + 250,
	womp
);
draw_text(
	(x + ribbon_menu_width / 2) - (string_width(womp_womp) / 2),
	y + 285,
	womp_womp
);