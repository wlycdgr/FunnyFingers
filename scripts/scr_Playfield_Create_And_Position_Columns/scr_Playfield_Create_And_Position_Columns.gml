/// @function scr_Playfield_Create_Columns(playfield, column_count, column_width)
/// @description Creates the column objects that together make up the playfield
/// @param {real} playfield Id of playfield
/// @param {real} column_count Number of columns to create
/// @param {real} column_width The width of each column

argument0.column_width = argument2;

for (i = 0; i < argument1; i++) { // column_count
	argument0.columns[i] = scr_Column_NEW(
		argument0,
		argument0.x + i * argument0.column_width,
		argument0.y
	);
}