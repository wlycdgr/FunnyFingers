/// @description Insert description here
// You can write your code in this editor
if (is_sliding){
	draw_set_color(c_white);
	draw_rectangle(
		x, y, 
		x + ribbon_menu_width, y + ribbon_menu_height,
		false
	);
	
	draw_set_color(c_black);
	var center_x = x + window_get_width() / 2;
	draw_text(center_x, y + 20, "GAME OVER MENU");
	
	if (0 == item_index){
		draw_set_color(c_red);
	}
	else {
		draw_set_color(c_black);
	}
	draw_text(center_x, y + 50, "Try Again");
	
	if (1 == item_index){
		draw_set_color(c_red);
	}
	else {
		draw_set_color(c_black);
	}
	draw_text(center_x, y + 65, "Exit To Title");
}