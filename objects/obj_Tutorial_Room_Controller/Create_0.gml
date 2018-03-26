/// @description Init
space_main_menu = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(space_main_menu, "SPACEBAR: MAIN MENU");
scr_Splitsfont_Set_Tweaks(space_main_menu, [0.015, 0.0015, 0.01, 0, 0]);

first_sequence_letters = ["Q", "W", "E", "I", "O", "P"];

var letter = 0;
for (var i = 0; i < 6; i++) {
	letter = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	
	scr_Splitsfont_Set_Text(letter, first_sequence_letters[i]);
	
	first_sequence[i] = letter;
}

first_sequence_x = window_width;

first_sequence_index = 0;

//var sf_q = 0;
//var sf_w = 0;
//var sf_e = 0;
//var sf_i = 0;
//var sf_o = 0;
//var sf_p = 0;

//for (var i = 0; i < 10; i++) {
//	sf_q = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//	sf_w = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//	sf_e = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//	sf_i = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//	sf_o = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
//	sf_p = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	
//	scr_Splitsfont_Set_Text(sf_q, "Q");
//	scr_Splitsfont_Set_Text(sf_w, "W");
//	scr_Splitsfont_Set_Text(sf_e, "E");
//	scr_Splitsfont_Set_Text(sf_i, "I");
//	scr_Splitsfont_Set_Text(sf_o, "O");
//	scr_Splitsfont_Set_Text(sf_p, "P");
	
//	q_bank[i] = sf_q;
//	w_bank[i] = sf_w;
//	e_bank[i] = sf_e;
//	i_bank[i] = sf_i;
//	o_bank[i] = sf_o;
//	p_bank[i] = sf_p;
//}

//banks[0] = q_bank;
//banks[1] = w_bank;
//banks[2] = e_bank;
//banks[3] = i_bank;
//banks[4] = o_bank;
//banks[5] = p_bank;

//indices = [
//	0,
//	0,
//	0,
//	0,
//	0,
//	0
//];
	
//q_index = 0;
//w_index = 0;
//e_index = 0;
//i_index = 0;
//o_index = 0;
//p_index = 0;

//sequence_length = 6;
//sequence = 0;
//for (var i = 0; i < sequence_length; i++) {
//	sequence[i] = irandom_range(0, 5);
//}

//string_x = window_width;