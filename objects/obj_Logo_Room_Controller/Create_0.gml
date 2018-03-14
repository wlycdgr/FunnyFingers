/// @description Init
trollcore = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(trollcore, "TROLLCORE");
scr_Splitsfont_Set_RotationSpeed(trollcore, 3600);

enterprises = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(enterprises, "ENTERPRISES");
scr_Splitsfont_Set_RotationSpeed(enterprises, 7200);

tm = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(tm, "TM");
scr_Splitsfont_Set_RotationSpeed(tm, 14400);

alarm_set(0, game_fps * 3);