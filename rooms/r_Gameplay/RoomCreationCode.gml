global.input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);
global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard);
global.game = instance_create_layer(0, 0, "Controllers", obj_Game);

scr_Focus_Playfield(global.game.playfields[0]);