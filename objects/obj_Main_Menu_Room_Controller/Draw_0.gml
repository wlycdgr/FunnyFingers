/// @description Draw menu
var current_menu = main_menu;
if (difficulty_menu.active) current_menu = difficulty_menu;

scr_Menu_Draw(current_menu);

scr_Splitsfont_Draw_String(funny, title_x_paths[0].value, funny_y);
scr_Splitsfont_Draw_String(fingers, title_x_paths[1].value, fingers_y);