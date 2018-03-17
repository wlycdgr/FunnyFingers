/// @description Draw menu
var current_menu = main_menu;
if (difficulty_menu.active) current_menu = difficulty_menu;

scr_Menu_Draw(current_menu);

scr_Splitsfont_Draw_String(funny, funny_x, funny_y);
scr_Splitsfont_Draw_String(fingers, fingers_x, fingers_y);
