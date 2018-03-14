/// @description Insert description here
// You can write your code in this editor
is_debug = false;
is_ctrl_down = false;

splitsfont_test = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(splitsfont_test, "ABC DEF GHI JKL MNO PQR STU VWX YZ 012 345 678 9:?");
scr_Splitsfont_Set_Size(splitsfont_test, 0.075);
scr_Splitsfont_Set_RotationSpeed(splitsfont_test, 120.0);

string_pos_x = 1400;
string_pos_y = 300;