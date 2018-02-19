/// @description Insert description here
// You can write your code in this editor
len = array_length_1d(items);
for (i = 0; i < len; i++){
	draw_text(x, y + 50 * i, items[i]);
}
