/// @description Draw the quote
if (srs_inactive == state) exit;

event_inherited();

for (var i = 0; i < quote_lines_count; i++) {
	scr_Splitsfont_Draw_String(
		quote_strings[i],
		quote_x_positions[i], quote_y_positions[i]
	);
}