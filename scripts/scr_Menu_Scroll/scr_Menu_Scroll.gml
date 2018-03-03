/// param {integer} menu The id of the menu we are scrolling
if (keyboard_check_pressed(vk_down)) {
	argument0.index =
		(argument0.index + 1) %
		argument0.item_count;
}
else if (keyboard_check_pressed(vk_up)) {
	argument0.index =
		(argument0.index - 1 + argument0.item_count) %
		argument0.item_count;
}