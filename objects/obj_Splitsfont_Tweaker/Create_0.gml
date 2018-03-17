/// @description Init

scripts = [
	scr_Splitsfont_Set_Size,
	scr_Splitsfont_Set_Weight,
	scr_Splitsfont_Set_Kern,
	scr_Splitsfont_Set_RotationSpeed,
	scr_Splitsfont_Set_Angle
];

sf_strings_count = 0;
sf_strings = -1;
sf_string_x_positions = -1;
sf_string_y_positions = 1;

menu_index = 0;

increments = [0.01, 0.01, 0.01, 1.0, 1.0, 0.01];

defaults[0] = 0.07; // size
defaults[1] = 0.03; // weight
defaults[2] = 0.0 // kern
defaults[3] = 0.0 // rotation speed
defaults[4] = 0.0 // angle
defaults[5] = 0.15 // position

values = -1;

menu_labels = [
	"Size: ",
	"Weight: ",
	"Kern: ",
	"RotationSpeed: ",
	"Angle: ",
	"Y pos: "
]

draw_tweak_info = true;