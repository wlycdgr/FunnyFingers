/// @description Draw the ribbon

// Draw the ribbon background
scr_Draw_Filled_Rectangle(x, y, sliding_ribbon_width, sliding_ribbon_height, c_white);

// Draw the ribbon borders
scr_Draw_Horizontal_Line(x, y, sliding_ribbon_width, 5);
scr_Draw_Horizontal_Line(x, y + sliding_ribbon_height, sliding_ribbon_width, 5);

// Draw the ribbon header
scr_String_Draw(header);

// Draw the ribbon menu
scr_Menu_Draw(menu);