/// @function scr_Splitsfont_Set_Tweaks(string_id, tweak_values_array)

var scripts = [
	scr_Splitsfont_Set_Size,
	scr_Splitsfont_Set_Weight,
	scr_Splitsfont_Set_Kern,
	scr_Splitsfont_Set_RotationSpeed,
	scr_Splitsfont_Set_Angle
];

var scripts_len = array_length_1d(scripts);

for (var i = 0; i < scripts_len; i++) {
	script_execute(
		scripts[i],
		argument0,
		argument1[i]
	);
}