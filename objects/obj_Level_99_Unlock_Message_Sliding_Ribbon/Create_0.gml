/// @description Init
header_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
scr_Splitsfont_Set_Text(header_string, "LEVEL 99 UNLOCKED");
scr_Splitsfont_Set_Tweaks(header_string, [0.014, 0.003, 0.02, 0, 0]);

quote_texts = [
	"\"LIFE DOES NOT HAVE INHERENT MEANING; TO SAY THAT OUR LIVES ARE POINTLESS AND OUR ACHIEVEMENTS MEANINGLESS IS TO STATE THE OBVIOUS.",
	"NO MATTER HOW GRAND OUR ACHIEVEMENTS OR HOW BROAD THEIR SCOPE, TIME TURNS ALL TO DUST AND DEATH DESTROYS ALL MEMORY.",
	"BUT THAT DOES NOT MEAN WE CANNOT ASCRIBE OUR OWN MEANING TO WHAT WE DO. IT IS BECAUSE NOTHING HAS MEANING",
	"UNTO ITSELF THAT WE ARE FREE TO CREATE MEANING, TO MAKE METAPHOR, AND IN DOING SO REFLECT ON OURSELVES AND OUR WORLD.",

	"LEVELING TO 99 IN THE FIRST REACTOR IS POINTLESS AND MEANINGLESS. SO WHY DO I DO IT?",
	"I DO IT TO EXPRESS MY HATRED, AND MORE IMPORTANTLY MY DISDAIN, FOR DICK TREE.",
	"I DO IT TO EXPRESS THE CAMARADERIE I FEEL FOR THOSE OF US WHO HAVE FOLLOWED THIS TOPIC FOR YEARS ONLY TO BE DISAPPOINTED BY [DICK TREE].",
	"I DO IT TO PROVE TO MYSELF THAT I CAN PERSEVERE. THE ACT IS MEANINGLESS; I GIVE IT MEANING.\"",

	"- CIRCLMASTR, VIA JAMES VINCENT AT THE VERGE"
];

quote_y_positions = [
	0.325 * window_height,
	0.35 * window_height,
	0.375 * window_height,
	0.4 * window_height,
	
	0.45 * window_height,
	0.475 * window_height,
	0.5 * window_height,
	0.525 * window_height,
	
	0.575 * window_height
];

quote_lines_count = array_length_1d(quote_texts);

scr_Splitsfont_Set_DefaultTweaks([0.014, 0.0015, 0.004, 0, 0]);

var quote_string = 0;
var ribbon_x_center = sliding_ribbon_width / 2;
for (var i = 0; i < quote_lines_count; i++) {
	quote_string = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	
	scr_Splitsfont_Set_Text(quote_string, quote_texts[i]);

	quote_strings[i] = quote_string;
	
	quote_x_offsets[i] =
		ribbon_x_center -
		(scr_Splitsfont_Get_Width(quote_string) / 2);
		
	quote_x_positions[i] = x + quote_x_offsets[i];
}

scr_Splitsfont_Reset_DefaultTweaks();

var menu_y_pos = 
	y + sliding_ribbon_height -
	(2.5 * menu_vertical_spacing);

menu = scr_Menu_NEW(
	x + ribbon_x_center, menu_y_pos,
	["PRESS ESCAPE", "TO EXIT GAME"],
	menu_is_not_tweened
);

event_inherited();

header_string_y = 0.275 * window_height;