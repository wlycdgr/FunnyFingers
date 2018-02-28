/// @description Insert description here
// You can write your code in this editor
scr_Init_Header(id, "High Scores");
scr_Init_Menu(id, ["Play", "Achievements", "Title"]);

tabs_item_index = 0;
tabs_item_labels = ["Overall", "Around you", "Friends"];
tabs_item_count = array_length_1d(tabs_item_labels);

event_user(0); // load scores for selected tab