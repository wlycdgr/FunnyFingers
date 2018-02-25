/// @description Scroll & tweak (Alt+)

if (!keyboard_check(vk_alt)) exit;

if (keyboard_check_pressed(vk_down)) { 
	item_index = (item_index + 1) % item_count; 
}
else if (keyboard_check_pressed(vk_up)) { 
	item_index = (item_index - 1 + item_count) % item_count; 
}

else if (keyboard_check_pressed(vk_right)) {
	item_values[item_index] += item_increments[item_index];
}
else if (keyboard_check_pressed(vk_left)) {
	item_values[item_index] -= item_increments[item_index];
	if (item_values[item_index] <= 0) { item_values[item_index] = 0; }
}
	