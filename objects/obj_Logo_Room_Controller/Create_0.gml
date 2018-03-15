/// @description Init
a_game_by = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(a_game_by, "A GAME BY");
scr_Splitsfont_Set_RotationSpeed(a_game_by, 120);
a_game_by_x = window_x_center - (scr_Splitsfont_Get_Width(a_game_by) / 2);

/*
ilya_zarembsky = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(ilya_zarembsky, "ILYA ZAREMBSKY");
scr_Splitsfont_Set_RotationSpeed(ilya_zarembsky, 60);
ilya_zarembsky_x = window_x_center - (scr_Splitsfont_Get_Width(ilya_zarembsky) / 2);
*/

wly_cdgr = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(wly_cdgr, "WLY CDGR");
scr_Splitsfont_Set_RotationSpeed(wly_cdgr, 60);
wly_cdgr_x = window_x_center - (scr_Splitsfont_Get_Width(wly_cdgr) / 2);

sprites_and_sounds_by = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(sprites_and_sounds_by, "SPRITES AND SOUNDS BY");
scr_Splitsfont_Set_RotationSpeed(sprites_and_sounds_by, 45);
sprites_and_sounds_by_x = window_x_center - (scr_Splitsfont_Get_Width(sprites_and_sounds_by) / 2);

marley_hall = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(marley_hall, "MARLEY HALL");
scr_Splitsfont_Set_RotationSpeed(marley_hall, 90);
marley_hall_x = window_x_center - (scr_Splitsfont_Get_Width(marley_hall) / 2);

alarm_set(0, game_fps * 10);