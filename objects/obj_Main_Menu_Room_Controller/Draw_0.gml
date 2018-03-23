/// @description Draw menu
var current_menu = main_menu;
if (difficulty_menu.active) current_menu = difficulty_menu;

scr_Menu_Draw(current_menu);

if (!title_tween.paused) {
	scr_Splitsfont_Draw_String(funny, title_x_paths[0].value, funny_y);
	scr_Splitsfont_Draw_String(fingers, title_x_paths[1].value, fingers_y);
}
else {
	scr_Splitsfont_Draw_String(funny, funny_x, funny_y);
	scr_Splitsfont_Draw_String(fingers, fingers_x, fingers_y);
}