/// @description Draw
draw_set_font(global.font_menu_item);
draw_set_color(the_color_of_information);
draw_set_halign(fa_left);

var big_half = ceil(steam_achievement_count / 2);

scr_Draw_Achievements_Column(col_1_x, 0, 3);
scr_Draw_Achievements_Column(col_2_x, 3, 6);
scr_Draw_Achievements_Column(col_3_x, 7, 9);
scr_Draw_Achievements_Column(col_4_x, 10, steam_achievement_count);

scr_Menu_Draw(menu);