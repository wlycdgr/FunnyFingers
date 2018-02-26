/// @description Scroll & tweak (Alt+)

if (!keyboard_check(vk_alt)) exit;

if (keyboard_check_pressed(vk_down)) { 
	item_index = (item_index + 1) % item_count; 
}
else if (keyboard_check_pressed(vk_up)) { 
	item_index = (item_index - 1 + item_count) % item_count; 
}

else if (keyboard_check(vk_right)) {
	item_values[item_index] += item_increments[item_index];
	event_user(0);
}
else if (keyboard_check(vk_left)) {
	item_values[item_index] -= item_increments[item_index];
	if (item_values[item_index] <= 0) { item_values[item_index] = 0; }
	event_user(0);
}

else if (keyboard_check_pressed(ord("R"))) { // reset to default
	item_values[item_index] = item_defaults[item_index];
	event_user(0);
}