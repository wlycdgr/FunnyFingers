global.input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);

switch (global.game_settings.difficulty) {
case game_difficulty_cool:
	global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard_Cool);
	break;
case game_difficulty_easy:
	global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard_Easy);
	break;
case game_difficulty_medium:
	global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard_Medium);
	break;
case game_difficulty_hard:
	global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard_Hard);
	break;
case game_difficulty_difficult:
	global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard_Difficult);
	break;
}

global.game = instance_create_layer(0, 0, "Controllers", obj_Game);

scr_Focus_Playfield(global.game.playfields[0]);