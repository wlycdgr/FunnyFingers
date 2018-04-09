/// @function scr_Splitsfont_Set_Tweaks(string_id, tweak_values_array)
with (global.splitsfont) {
	for (var i = 0; i < tweak_scripts_len; i++) {
		script_execute(
			tweak_scripts[i],
			argument0,
			argument1[i]
		);
	}
}